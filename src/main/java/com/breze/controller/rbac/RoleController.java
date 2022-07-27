package com.breze.controller.rbac;


import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.constant.Const;
import com.breze.common.constant.ErrorEnum;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.breze.common.annotation.Log;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.UserRole;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Api(tags = "权限-角色管理")
@RestController
@RequestMapping("/sys/role")
public class RoleController extends BaseController {

    @Log("根据ID获取角色信息")
    @ApiOperation(value = "根据ID获取角色信息")
    @ApiImplicitParam(name = "ID", value = "角色ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result info(@PathVariable Long id) {
        Role role = roleService.getById(id);
        //获取角色相关联的菜单id
        List<RoleMenu> menus = roleMenuService.list(new QueryWrapper<RoleMenu>().eq("role_id", id));
        List<Long> menuIds = menus.stream().map(RoleMenu::getMenuId).collect(Collectors.toList());
        role.setMenuIds(menuIds);
        return Result.createSuccessMessage(role);
    }

    @Log("获取角色列表")
    @ApiOperation(value = "获取角色列表")
    @ApiImplicitParam(name = "name", value = "角色名称", dataType = "String", dataTypeClass = String.class)
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:role:select')")
    //非前端传参
    public Result select(String name) {
        Page<Role> pageData = roleService.page(getPage(), new QueryWrapper<Role>().eq(StrUtil.isNotBlank(name), "name", name));
        return Result.createSuccessMessage(pageData);
    }

    @Log("根据角色ID获取菜单列表")
    @ApiOperation(value = "根据角色ID获取菜单列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "roleId", value = "角色ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "menuIds", value = "菜单ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    })
    @Transactional
    @PostMapping("/perm/{roleId}")
    @PreAuthorize("hasAuthority('sys:role:perm')")
    public Result rolePerm(@PathVariable Long roleId, @RequestBody Long[] menuIds) {
        List<RoleMenu> roleMenus = new ArrayList<>();
        Arrays.stream(menuIds).forEach(menuId -> {
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setMenuId(menuId);
            roleMenu.setRoleId(roleId);
            roleMenus.add(roleMenu);
        });
        // 先删除原来的记录，再保存新的
        roleMenuService.remove(new QueryWrapper<RoleMenu>().eq("role_id", roleId));
        roleMenuService.saveBatch(roleMenus);
        // 删除缓存
        userService.clearUserAuthorityInfoByRoleId(roleId);
        return Result.createSuccessMessage(roleMenus);
    }

    @Log("新增角色")
    @ApiOperation(value = "新增角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "角色ID", required = false, dataType = "Long", dataTypeClass = Long.class)
    })
    @Transactional
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:role:insert')")
    public Result insert(@Validated @RequestBody Role role) {
        role.setCreated(LocalDateTime.now());
        role.setStatu(Const.STATUS_ON);
        boolean flag = roleService.save(role);
        return flag ? Result.createSuccessMessage(role) : Result.createFailureMessage(ErrorEnum.FindException);
    }

    @Log("更新角色")
    @ApiOperation(value = "修改角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "角色ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    })
    @Transactional
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:role:update')")
    public Result update(@Validated @RequestBody Role role) {
        role.setUpdated(LocalDateTime.now());
        boolean flag = roleService.updateById(role);
        //更新缓存
        userService.clearUserAuthorityInfoByRoleId(role.getId());
        return flag ? Result.createSuccessMessage(role) : Result.createFailureMessage(ErrorEnum.FindException);
    }

    // 添加事务注解保证执行完毕或者回退
    @Log("删除角色")
    @ApiOperation(value = "删除角色")
    @ApiImplicitParam(name = "roleIds", value = "角色ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    @Transactional
    @PostMapping("/delete")
    @PreAuthorize("hasAuthority('sys:role:delete')")
    // 方便批量删除与单个删除
    public Result delete(@RequestBody Long[] roleIds) {
        for (Long roleId : roleIds) {
            long count = userRoleService.count(new QueryWrapper<UserRole>().eq("role_id", roleId));
            if (count > 0) {
                return Result.createFailureMessage(ErrorEnum.IllegalOperation,"角色已被使用，不能删除");
            }
        }
        List<Long> ids = Arrays.asList(roleIds);
        // 批量删除需要传入一个集合
        roleService.removeByIds(ids);
        // 删除中间表信息
        userRoleService.remove(new QueryWrapper<UserRole>().in("role_id", roleIds));
        roleMenuService.remove(new QueryWrapper<RoleMenu>().in("role_id", roleIds));
        // 批量同步删除缓存
        for (Long id : roleIds) {
            userService.clearUserAuthorityInfoByRoleId(id);
        }
        return Result.createSuccessMessage("删除成功");
    }



}
