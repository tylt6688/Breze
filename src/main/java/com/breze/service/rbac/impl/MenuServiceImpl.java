package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.GlobalConstant;
import com.breze.converter.sys.MenuConvert;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.MenuVO;
import com.breze.mapper.rbac.MenuMapper;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.rbac.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

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
    UserMapper userMapper;

    @Autowired
    MenuMapper menuMapper;

    @Override
    public List<MenuVO> getCurrentNav() {
        // 当前用户的信息是注册在Security里面的
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userMapper.getByUserName(username);
        List<Long> navMenuIds = userMapper.getNavMenuIds(user.getId());
        List<Menu> menus = this.listByIds(navMenuIds);
        // 此处先按照排序号进行升序排序后再转成父子树
        menus.sort(Comparator.comparing(Menu::getOrderNum));
        // 转成树状结构
        List<Menu> menuTree = buildTreeMenu(menus);
        // List<Menu> 实体转 List<MenuVO>
        return MenuConvert.INSTANCE.menusToMenuVOList(menuTree);
    }

    private List<Menu> buildTreeMenu(List<Menu> menus) {
        List<Menu> finalMenus = new ArrayList<>();
        // 先各自寻找到各自的孩子
        for (Menu menu : menus) {
            // 提取出父节点
            if (menu.getParentId() == 0L) {
                finalMenus.add(menu);
            }
            for (Menu e : menus) {
                if (menu.getId().equals(e.getParentId())) {
                    menu.getChildren().add(e);
                }
            }
        }
        return finalMenus;
    }

    @Override
    public List<Menu> tree() {
        // 获取所有菜单信息,按序号进行升序排序
        List<Menu> menus = this.list(new LambdaQueryWrapper<Menu>().orderByAsc(Menu::getOrderNum));
        // 转成树状结构
        return buildTreeMenu(menus);
    }

    @Override
    public List<Menu> listByMenuTitle(String menuTitle) {
        LambdaQueryWrapper<Menu> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Menu::getType, GlobalConstant.TYPE_ONE)
                .like(Menu::getTitle, menuTitle);
        List<Menu> menus = menuMapper.selectList(wrapper);
        menus.forEach(menu -> menu.setParentTitle(menuMapper.selectTitleById(menu.getParentId())));
        return menus;
    }


}
