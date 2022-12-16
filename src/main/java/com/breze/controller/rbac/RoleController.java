package com.breze.controller.rbac;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.UserRole;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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
@Api(tags = "角色管理")
@RestController
@RequestMapping("/sys/role")
public class RoleController extends BaseController {

    @ApiOperation(value = "获取全部角色列表")
    @BrezeLog("获取全部角色列表")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:role:perm')")
    public Result<List<Role>> selectAll() {
        return Result.createSuccessMessage("获取全部角色列表成功", roleService.list());
    }

    @ApiOperation(value = "分页获取角色列表")
    @BrezeLog("分页获取角色列表")
    @GetMapping("/select_page")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result<Page<Role>> select() {
        Page<Role> pageData = roleService.page(getPage());
        return Result.createSuccessMessage("分页获取角色列表成功", pageData);
    }


    @ApiOperation(value = "根据角色ID获取菜单权限信息")
    @ApiImplicitParam(name = "id", value = "角色ID", required = true, paramType = "path", dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("根据角色ID获取菜单权限信息")
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result<Role> info(@PathVariable Long id) {
        Role role = roleService.getById(id);
        //获取角色相关联的菜单id
        List<RoleMenu> menus = roleMenuService.list(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getRoleId, id));
        List<Long> menuIds = menus.stream().map(RoleMenu::getMenuId).collect(Collectors.toList());
        role.setMenuIds(menuIds);
        return Result.createSuccessMessage("获取角色信息成功", role);
    }

    @ApiOperation(value = "根据角色ID分配角色相应的菜单权限")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "roleId", value = "角色ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "menuIds", value = "菜单ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    })
    @BrezeLog("根据角色ID分配角色相应的菜单权限")
    @PostMapping("/perm/{roleId}")
    @PreAuthorize("hasAuthority('sys:role:perm')")
    public Result<String> rolePerm(@PathVariable Long roleId, @RequestBody Long[] menuIds) {
        try {
            List<RoleMenu> roleMenus = new ArrayList<>();
            Arrays.stream(menuIds).forEach(menuId -> {
                RoleMenu roleMenu = new RoleMenu();
                roleMenu.setMenuId(menuId)
                        .setRoleId(roleId);
                roleMenus.add(roleMenu);
            });
            // 先删除原来的记录，再保存新的
            roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getRoleId, roleId));
            roleMenuService.saveBatch(roleMenus);
            // 删除缓存
            userService.clearUserAuthorityInfoByRoleId(roleId);
            return Result.createSuccessMessage("分配菜单权限成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }

    }

    @ApiOperation(value = "新增角色")
    @BrezeLog("新增角色")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:role:insert')")
    public Result<String> insert(@Validated @RequestBody Role role) {
        try {
            roleService.save(role);
            return Result.createSuccessMessage("新增角色成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }
    }

    @ApiOperation(value = "更新角色")
    @BrezeLog("更新角色")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:role:update')")
    public Result<String> update(@Validated @RequestBody Role role) {
        try {
            roleService.updateById(role);
            // 更新缓存
            userService.clearUserAuthorityInfoByRoleId(role.getId());
            return Result.createSuccessMessage("更新角色成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "更新角色失败");
        }

    }

    @ApiOperation(value = "删除角色")
    @ApiImplicitParam(name = "roleIds", value = "角色ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    @BrezeLog("删除角色")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:role:delete')")
    public Result<String> delete(@RequestBody Long[] roleIds) {
        for (Long roleId : roleIds) {
            long count = userRoleService.count(new LambdaQueryWrapper<UserRole>().eq(UserRole::getRoleId, roleId));
            if (count > 0) {
                throw new BusinessException(ErrorEnum.IllegalOperation, "角色已被使用，请先解除占用后删除");
            }
        }
        try {
            List<Long> ids = Arrays.asList(roleIds);
            // 批量删除需要传入一个集合
            roleService.removeByIds(ids);
            // 删除中间表信息
            userRoleService.remove(new LambdaQueryWrapper<UserRole>().in(UserRole::getRoleId, ids));
            roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().in(RoleMenu::getRoleId, ids));
            // 批量同步删除缓存
            for (Long id : roleIds) {
                userService.clearUserAuthorityInfoByRoleId(id);
            }
            return Result.createSuccessMessage("删除成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }

    }


}
