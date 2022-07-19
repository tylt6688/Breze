package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.User;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.rbac.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import com.breze.entity.dto.MenuDto;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.mapper.rbac.MenuMapper;

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

    @Override
    public List<MenuDto> getCurrentNav() {
        //因为当前用户的信息是注册在Security里面的
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userMapper.getByUserName(username);
        List<Long> navMenuIds = userMapper.getNavMenuIds(user.getId());
        List<Menu> menus = this.listByIds(navMenuIds);
        //此处先进行排序再转父子树
        List<Menu> menusList = search(menus);
        //转成树状结构
        List<Menu> menuTree = buildTreeMenu(menusList);
        //需要实体转DTO
        return convert(menuTree);
    }

    //TODO 按照排序号进行升序排序后再转成父子树
    public List<Menu> search(List<Menu> menusList) {
        menusList.sort(Comparator.comparing(Menu::getOrderNum));
        return menusList;
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

    private List<MenuDto> convert(List<Menu> menuTree) {
        List<MenuDto> menuDtos = new ArrayList<>();
        menuTree.forEach(m -> {
            MenuDto dto = new MenuDto();
            dto.setId(m.getId());
            dto.setName(m.getPerms());
            dto.setTitle(m.getName());
            dto.setIcon(m.getIcon());
            dto.setComponent(m.getComponent());
            dto.setPath(m.getPath());
            if (m.getChildren().size() > 0) {
                // 子节点调用当前方法进行再次转换
                dto.setChildren(convert(m.getChildren()));
            }
            menuDtos.add(dto);
        });
        return menuDtos;
    }

    @Override
    public List<Menu> tree() {
        // 获取所有菜单信息,按序号进行升序排序
        List<Menu> menus = this.list(new QueryWrapper<Menu>().orderByAsc("order_num"));
        // 转成树状结构
        return buildTreeMenu(menus);
    }


}
