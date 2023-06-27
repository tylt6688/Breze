package com.breze.controller.rbac;


import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.vo.sys.MenuVO;
import com.breze.entity.vo.sys.TabVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;
import java.util.Map;


/**
 * @Author tylt6688
 * @Date 2022-03-01
 * @Discription 菜单前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(tags = "菜单管理")
@RestController
@RequestMapping("/sys/menu")
public class MenuController extends BaseController {

    @ApiOperation(value = "查询菜单管理中的所有菜单信息")
    @BrezeLog("查询菜单管理中的所有菜单信息")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result<List<MenuVO>> select() {
        return Result.createSuccessMessage("查询菜单成功", menuService.tree());
    }

    @ApiOperation(value = "获取侧边菜单导航")
    @BrezeLog("获取侧边菜单导航")
    @GetMapping("/nav")
    public Result<Map<Object, Object>> getNav(Principal principal) {
        return Result.createSuccessMessage("获取菜单导航成功", menuService.getSideNav(principal));
    }

    @ApiOperation(value = "按ID查询菜单信息")
    @ApiImplicitParam(name = "ID", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("按ID查询菜单信息")
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result<MenuVO> info(@PathVariable Long id) {
        return Result.createSuccessMessage("查询菜单信息成功", menuService.getMenuInfoById(id));
    }


    @ApiOperation("根据菜单名称查询二级菜单")
    @ApiImplicitParam(name = "menuName", value = "菜单名称", required = true, dataType = "String", dataTypeClass = String.class)
    @BrezeLog("根据名称查询二级菜单")
    @GetMapping("/select_menu_title/{menuTitle}")
    public Result<List<TabVO>> selectTabByTitle(@PathVariable String menuTitle) {
        List<TabVO> tabs = menuService.listTabByTitle(menuTitle);
        return Result.createSuccessMessage("搜索系统功能成功", tabs);
    }


    @ApiOperation("新增菜单")
    @BrezeLog("新增菜单")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:menu:insert')")
    public Result<String> insert(@Validated @RequestBody MenuDTO menuDTO) {
        return brezeJudgeResult(menuService.insert(menuDTO));
    }

    @ApiOperation(value = "更新菜单")
    @BrezeLog("更新菜单")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:menu:update')")
    public Result<String> update(@Validated @RequestBody MenuDTO menuDTO) {
        return brezeJudgeResult(menuService.update(menuDTO));
    }

    @ApiOperation(value = "删除菜单")
    @ApiImplicitParam(name = "id", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("删除菜单")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:menu:delete')")
    public Result<String> delete(@RequestParam Long id) {
        return brezeJudgeResult(menuService.delete(id));

    }

}
