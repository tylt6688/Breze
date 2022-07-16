package com.breze.service.rbac;

import com.breze.entity.pojo.rbac.Menu;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.MenuDto;

import java.util.List;

/**
 * <p>
 * 菜单服务类接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface MenuService extends IService<Menu> {

    List<MenuDto> getCurrentNav();

    //仅返回树状结构用于菜单管理的展示
    List<Menu> tree();
}
