package com.breze.controller.rbac;


import cn.hutool.core.map.MapUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.dto.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.User;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Api(tags = "菜单管理")
@RestController
@RequestMapping("/sys/menu")
public class MenuController extends BaseController {

    @BrezeLog("获取侧边菜单导航")
    @ApiOperation(value = "获取侧边菜单导航")
    @ApiImplicitParam(name = "principal", value = "用户信息", required = true, dataType = "Principal", dataTypeClass = Principal.class)
    @GetMapping("/nav")
    public Result getNav(Principal principal) {
        User user = userService.getByUserName(principal.getName());
        // 获取权限信息
        String authorityInfo = userService.getUserAuthorityInfo(user.getId());
        String[] authorityInfoArray = StringUtils.tokenizeToStringArray(authorityInfo, ",");
        // 获取当前用户授权的菜单导航栏信息
        List<MenuDTO> navs = menuService.getCurrentNav();
        Map<Object, Object> map = MapUtil.builder()
                .put("authority", authorityInfoArray)
                .put("nav", navs).map();
        return Result.createSuccessMessage(map);
    }

    @BrezeLog("按ID查询菜单信息")
    @ApiOperation(value = "按ID查询菜单信息")
    @ApiImplicitParam(name = "ID", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result info(@PathVariable(name = "id") Long id) {
        Menu menu = menuService.getById(id);
        return Result.createSuccessMessage(menu);
    }

    @BrezeLog("查询菜单管理中的所有菜单信息")
    @ApiOperation(value = "查询菜单管理中的所有菜单信息")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result select() {
        List<Menu> menus = menuService.tree();
        return Result.createSuccessMessage(menus);
    }


    @BrezeLog("新增菜单")
    @ApiOperation(value = "新增菜单")
    @Transactional
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:menu:insert')")
    public Result insert(@Validated @RequestBody Menu menu) {
        boolean flag = menuService.save(menu);
        return flag ? Result.createSuccessMessage(menu) : Result.createFailMessage(ErrorEnum.FindException);
    }

    @BrezeLog("更新菜单")
    @ApiOperation(value = "更新菜单")
    @Transactional
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:menu:update')")
    public Result update(@Validated @RequestBody Menu menu) {

        boolean flag = menuService.updateById(menu);
        // 菜单发生变化时清除Redis中的缓存
        userService.clearUserAuthorityInfoByMenuId(menu.getId());
        return flag ? Result.createSuccessMessage(menu) : Result.createFailMessage(ErrorEnum.FindException);
    }

    @BrezeLog("删除菜单")
    @ApiOperation(value = "删除菜单")
    @ApiImplicitParam(name = "id", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @Transactional
    @PostMapping("/delete")
    @PreAuthorize("hasAuthority('sys:menu:delete')")
    public Result delete(@RequestParam Long id) {
        // 判断是否存在子目录
        long count = menuService.count(new QueryWrapper<Menu>().eq("parent_id", id));
        if (count > 0) {
            return Result.createFailMessage(ErrorEnum.FindException, "子菜单不为空，请先删除子菜单");
        }
        menuService.removeById(id);
        userService.clearUserAuthorityInfoByMenuId(id);
        // 同步删除中间表关联
        roleMenuService.remove(new QueryWrapper<RoleMenu>().eq("menu_id", id));
        return Result.createSuccessMessage("删除菜单成功");
    }

}
