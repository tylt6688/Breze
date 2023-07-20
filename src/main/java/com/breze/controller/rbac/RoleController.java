package com.breze.controller.rbac;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.converter.sys.RoleConvert;
import com.breze.entity.dto.sys.RoleDTO;
import com.breze.entity.vo.sys.RoleVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022-03-01
 * @Discription 角色前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(tags = "角色管理")
@RestController
@RequestMapping("/sys/role")
public class RoleController extends BaseController {

    @ApiOperation(value = "获取全部角色列表")
    @BrezeLog("获取全部角色列表")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result<List<RoleVO>> selectAll() {
        List<RoleVO> roleVOList = RoleConvert.INSTANCE.roleTORoleVO(roleService.list());
        return Result.createSuccessMessage("获取全部角色列表成功", roleVOList);
    }

    @ApiOperation(value = "分页获取角色列表")
    @BrezeLog("分页获取角色列表")
    @GetMapping("/select_page")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result<Page<RoleVO>> selectByPage() {
        Page<RoleVO> pageData = RoleConvert.INSTANCE.roleTORoleVO(roleService.page(getPage()));
        return Result.createSuccessMessage("分页获取角色列表成功", pageData);
    }


    @ApiOperation(value = "根据角色ID获取菜单权限信息")
    @ApiImplicitParam(name = "id", value = "角色ID", required = true, paramType = "path", dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("根据角色ID获取菜单权限信息")
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:role:select')")
    public Result<RoleVO> getRoleInfo(@PathVariable Long id) {
        return Result.createSuccessMessage("获取角色信息成功", roleService.getRoleInfoById(id));
    }

    @ApiOperation(value = "根据角色ID分配角色相应的菜单权限")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "roleId", value = "角色ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "menuIds", value = "菜单ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    })
    @BrezeLog("根据角色ID分配角色相应的菜单权限")
    @PostMapping("/perm/{roleId}")
    @PreAuthorize("hasAuthority('sys:role:perm')")
    public Result<String> permRole(@PathVariable Long roleId, @RequestBody Long[] menuIds) {
        return brezeJudgeResult(roleService.permRole(roleId, menuIds));
    }

    @ApiOperation(value = "新增角色")
    @BrezeLog("新增角色")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:role:insert')")
    public Result<String> insert(@Validated @RequestBody RoleDTO roleDTO) {
        return brezeJudgeResult(roleService.insert(roleDTO));
    }

    @ApiOperation(value = "更新角色")
    @BrezeLog("更新角色")
    @PutMapping("/update")
    @PreAuthorize("hasAuthority('sys:role:update')")
    public Result<String> update(@Validated @RequestBody RoleDTO roleDTO) {
        return brezeJudgeResult(roleService.update(roleDTO));
    }

    @ApiOperation(value = "删除角色")
    @ApiImplicitParam(name = "roleIds", value = "角色ID集合", required = true, dataType = "List", dataTypeClass = List.class)
    @BrezeLog("删除角色")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:role:delete')")
    public Result<String> delete(@RequestBody Long[] roleIds) {
        return brezeJudgeResult(roleService.delete(roleIds));
    }


}
