package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.portal.NavbarDTO;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.portal.NavbarTitleVo;

import java.util.List;

/**
 * <p>
 * 导航连接表 服务类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
public interface NavbarService extends IService<Navbar> {
    /**
     *  分页获取导航标题
     *
     * @Params [page, titleName, parentId]
     * @Return Page<Navbar>
     */
    Page<Navbar> findNavbarPage(Page<Navbar> page, String titleName,Long parentId);
    /**
     *  获取导航标题
     *
     * @Params [flag]
     * @Return List<Navbar>
     */
    List<Navbar> finAllData(Long flag);
    /**
     *  通过id获取导航菜单
     *
     * @Params [id] 
     * @Return com.breze.entity.pojo.portal.Navbar
     */
    Navbar selectById(Long id);
    /**
     *  通过导航类型获取数据 
     *
     * @Params [flag] 
     * @Return java.util.List<com.breze.entity.vo.portal.NavbarTitleVo>
     */
    List<NavbarTitleVo> selectByFlag(Long flag);
    /**
     *  获取导航菜单数量 
     *
     * @Params [] 
     * @Return java.lang.Long
     */
    Long getNavbarCount();
    /**
     *  新增导航菜单
     *
     * @Params [navbarDTO]
     * @Return java.lang.Boolean
     */
    Boolean insertNabar(NavbarDTO navbarDTO);
    /**
     *  修改导航菜单 
     *
     * @Params [navbarDTO] 
     * @Return java.lang.Boolean
     */
    Boolean updateNavbar(NavbarDTO navbarDTO);
    /**
     *  删除导航菜单 
     *
     * @Params [id] 
     * @Return java.lang.Boolean
     */
    Boolean deleteById(Long id);


}
