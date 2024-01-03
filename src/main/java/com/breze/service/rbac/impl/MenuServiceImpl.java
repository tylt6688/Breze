package com.breze.service.rbac.impl;

import cn.hutool.core.map.MapUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.sys.MenuConvert;
import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.MenuVO;
import com.breze.entity.vo.sys.TabVO;
import com.breze.mapper.rbac.MenuMapper;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.rbac.MenuService;
import com.breze.service.rbac.RoleMenuService;
import com.breze.service.rbac.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

    @Autowired
    UserService userService;

    @Autowired
    RoleMenuService roleMenuService;

    @Autowired
    UserMapper userMapper;

    @Autowired
    MenuMapper menuMapper;

    @Override
    public List<MenuVO> getCurrentNav() {
        // 当前用户的信息是注册在 Security 里面的
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userMapper.getUserByUserName(username);
        List<Long> navMenuIds = userMapper.getNavMenuIds(user.getId());
        List<Menu> menus = this.listByIds(navMenuIds);
        // 此处先按照排序号进行升序排序后再转成父子树
        menus.sort(Comparator.comparing(Menu::getSort));
        // 转成树状结构
        return buildTreeMenu(menus);
    }

    private List<MenuVO> buildTreeMenu(List<Menu> menus) {
        List<MenuVO> menuVOList = MenuConvert.INSTANCE.menuToMenuVO(menus);
        List<MenuVO> finalMenuVOList = new ArrayList<>();

        menuVOList.forEach(menuVO -> {
            menuVOList.forEach(menuChild -> {
                // 各自寻找到各自的孩子
                if (menuVO.getId().equals(menuChild.getParentId())) {
                    menuVO.getChildren().add(menuChild);
                }
            });
            // 提取出父节点
            if (menuVO.getParentId() == 0L) {
                finalMenuVOList.add(menuVO);
            }
        });

        return finalMenuVOList;
    }

    @Override
    public List<MenuVO> tree() {
        // 获取所有菜单信息,按序号进行升序排序
        List<Menu> menus = this.list(new LambdaQueryWrapper<Menu>().orderByAsc(Menu::getSort));
        // 转成树状结构
        return buildTreeMenu(menus);
    }

    @Override
    public List<MenuVO> listMenuByTitle(String menuTitle) {
        LambdaQueryWrapper<Menu> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Menu::getType, GlobalConstant.TYPE_ONE)
                .like(Menu::getTitle, menuTitle);
        List<Menu> menus = menuMapper.selectList(wrapper);
        List<MenuVO> menuVOList = MenuConvert.INSTANCE.menuToMenuVO(menus);
        menuVOList.forEach(menuVO -> menuVO.setParentTitle(menuMapper.selectTitleById(menuVO.getParentId())));
        return menuVOList;
    }

    @Override
    public Map<Object, Object> getSideNav(Principal principal) {
        User user = userService.getUserByUserName(principal.getName());
        // 获取权限信息
        String authorityInfo = userService.getUserAuthorityInfo(user);
        String[] authorityInfoArray = StringUtils.tokenizeToStringArray(authorityInfo, ",");
        // 获取当前用户授权的菜单导航栏信息
        List<MenuVO> navs = this.getCurrentNav();

        return MapUtil.builder()
                .put("authority", authorityInfoArray)
                .put("nav", navs).map();
    }

    @Override
    public MenuVO getMenuInfoById(Long id) {
        return MenuConvert.INSTANCE.menuToMenuVO(this.getById(id));
    }

    @Override
    public List<TabVO> listTabByTitle(String menuTitle) {
        List<MenuVO> menus = this.listMenuByTitle(menuTitle);
        return MenuConvert.INSTANCE.menuVOToTabVO(menus);
    }

    @Override
    public Boolean insert(MenuDTO menuDTO) {
        try {
            Menu menu = MenuConvert.INSTANCE.menuDTOToMenu(menuDTO);
            return this.save(menu);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "新增菜单失败");
        }
    }

    @Override
    public Boolean update(MenuDTO menuDTO) {
        try {
            Menu menu = MenuConvert.INSTANCE.menuDTOToMenu(menuDTO);
            // 菜单发生变化时清除 Redis 中的缓存
            userService.clearUserAuthorityInfoByMenuId(menu.getId());
            return this.updateById(menu);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "更新菜单失败");
        }
    }

    @Override
    public Boolean delete(Long id) {
        // 判断是否存在子目录
        long count = this.count(new LambdaQueryWrapper<Menu>().eq(Menu::getParentId, id));
        if (count > 0) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "子菜单不为空，请先删除子菜单");
        }
        try {
            this.removeById(id);
            userService.clearUserAuthorityInfoByMenuId(id);
            // 同步删除中间表关联
            return roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getMenuId, id));
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "删除菜单失败");
        }
    }


}
