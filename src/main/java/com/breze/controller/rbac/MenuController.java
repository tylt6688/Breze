package com.breze.controller.rbac;


import cn.hutool.core.map.MapUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.converter.sys.MenuConvert;
import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.MenuVO;
import com.breze.entity.vo.sys.TabVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
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

    @ApiOperation(value = "获取侧边菜单导航")
    @BrezeLog("获取侧边菜单导航")
    @GetMapping("/nav")
    public Result<Map<Object, Object>> getNav(Principal principal) {
        User user = userService.getUserByUserName(principal.getName());
        // 获取权限信息
        String authorityInfo = userService.getUserAuthorityInfo(user.getId());
        String[] authorityInfoArray = StringUtils.tokenizeToStringArray(authorityInfo, ",");
        // 获取当前用户授权的菜单导航栏信息
        List<MenuVO> navs = menuService.getCurrentNav();

        Map<Object, Object> map = MapUtil.builder()
                .put("authority", authorityInfoArray)
                .put("nav", navs).map();

        return Result.createSuccessMessage("获取菜单导航成功", map);
    }

    @ApiOperation(value = "按ID查询菜单信息")
    @ApiImplicitParam(name = "ID", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("按ID查询菜单信息")
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result<Menu> info(@PathVariable Long id) {
        Menu menu = menuService.getById(id);
        return Result.createSuccessMessage("查询单个菜单成功", menu);
    }

    @ApiOperation(value = "查询菜单管理中的所有菜单信息")
    @BrezeLog("查询菜单管理中的所有菜单信息")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:menu:select')")
    public Result<List<Menu>> select() {
        List<Menu> menus = menuService.tree();
        return Result.createSuccessMessage("查询菜单成功", menus);
    }

    @ApiOperation("根据菜单名称查询二级菜单")
    @ApiImplicitParam(name = "menuName", value = "菜单名称", required = false, dataType = "String", dataTypeClass = String.class)
    @BrezeLog("根据名称查询二级菜单")
    @GetMapping("/select_menu_title/{menuTitle}")
    public Result<List<TabVO>> selectByMenuName(@PathVariable String menuTitle) {
        List<Menu> menus = menuService.listByMenuTitle(menuTitle);
        List<TabVO> tabs = MenuConvert.INSTANCE.menusToTabVOList(menus);
        return Result.createSuccessMessage("搜索系统功能成功", tabs);
    }


    @ApiOperation("新增菜单")
    @BrezeLog("新增菜单")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:menu:insert')")
    public Result<String> insert(@Validated @RequestBody MenuDTO menuDTO) {
        try {
            Menu menu = MenuConvert.INSTANCE.menuDTOToMenu(menuDTO);
            menuService.save(menu);
            return Result.createSuccessMessage("新增菜单成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "新增菜单失败");
        }
    }

    @ApiOperation(value = "更新菜单")
    @BrezeLog("更新菜单")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:menu:update')")
    public Result<String> update(@Validated @RequestBody MenuDTO menuDTO) {
        try {
            Menu menu = MenuConvert.INSTANCE.menuDTOToMenu(menuDTO);
            menuService.updateById(menu);
            // 菜单发生变化时清除Redis中的缓存
            userService.clearUserAuthorityInfoByMenuId(menu.getId());
            return Result.createSuccessMessage("更新菜单成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "更新菜单失败");
        }

    }

    @ApiOperation(value = "删除菜单")
    @ApiImplicitParam(name = "id", value = "菜单ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("删除菜单")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:menu:delete')")
    public Result<String> delete(@RequestParam Long id) {
        // 判断是否存在子目录
        long count = menuService.count(new LambdaQueryWrapper<Menu>().eq(Menu::getParentId, id));
        if (count > 0) {
            throw new BusinessException(ErrorEnum.FindException, "子菜单不为空，请先删除子菜单");
        }
        try {
            menuService.removeById(id);
            userService.clearUserAuthorityInfoByMenuId(id);
            // 同步删除中间表关联
            roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getMenuId, id));
            return Result.createSuccessMessage("删除菜单成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "删除菜单失败");
        }

    }

}
