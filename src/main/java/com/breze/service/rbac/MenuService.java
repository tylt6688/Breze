package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.vo.sys.MenuVO;
import com.breze.entity.vo.sys.TabVO;

import java.security.Principal;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 菜单服务类接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface MenuService extends IService<Menu> {

    /**
     * 获取当前用户权限下可操作的导航菜单
     *
     * @return List<MenuVO>
     */
    List<MenuVO> getCurrentNav();

    /**
     * 仅返回树状结构用于菜单管理的展示
     *
     * @return List<Menu>
     */
    List<MenuVO> tree();

    /**
     * 通过名称来进行模糊搜索功能
     *
     * @param menuTitle 二级菜单名
     * @return List<Menu>
     */
    List<MenuVO> listMenuByTitle(String menuTitle);

    /**
     * 获取当前用户侧边栏权限菜单
     *
     * @param principal 当前用户信息
     * @return List<Menu>
     */
    Map<Object, Object> getSideNav(Principal principal);

    /**
     * 通过 id 获取当前菜单信息
     *
     * @param id 菜单id
     * @return MenuVO
     */
    MenuVO getMenuInfoById(Long id);

    /**
     * 通过菜单中文名称获取 Tab 信息
     *
     * @param menuTitle 菜单名称
     * @return List<TabVO>
     */
    List<TabVO> listTabByTitle(String menuTitle);

    /**
     * 插入菜单信息
     *
     * @param menuDTO 菜单传输实体
     * @return Boolean
     */
    Boolean insert(MenuDTO menuDTO);

    /**
     * 更新菜单信息
     *
     * @param menuDTO 菜单传输实体
     * @return Boolean
     */
    Boolean update(MenuDTO menuDTO);

    /**
     * 通过 id 删除菜单信息
     *
     * @param id 菜单id
     * @return Boolean
     */
    Boolean delete(Long id);
}
