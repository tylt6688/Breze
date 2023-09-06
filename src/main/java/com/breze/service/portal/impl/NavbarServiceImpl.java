package com.breze.service.portal.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.converter.portal.NavbarConvert;
import com.breze.entity.dto.portal.NavbarDTO;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.portal.NavbarTitleVO;
import com.breze.entity.vo.portal.NavbarVO;
import com.breze.mapper.portal.NavbarMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.portal.NavbarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * <p>
 * 导航连接表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Transactional
@Service
public class NavbarServiceImpl extends ServiceImpl<NavbarMapper, Navbar> implements NavbarService {

    @Autowired
    private NavbarMapper navbarMapper;


    @Override
    public Page<Navbar> findNavbarPage(Page<Navbar> page, String titleName,Long parentId) {
        Page<Navbar> navbarPage = navbarMapper.selectPage(page, new QueryWrapper<Navbar>().like("title_name", titleName).eq("parent_id",parentId).orderByAsc("order_num"));
        Page<NavbarVO> navbarVOPage = NavbarConvert.INSTANCE.navbarPageToNavbarPageVo(navbarPage);
        navbarVOPage.getRecords().forEach(navbar -> {
            navbar.setHasChildren(this.isChildren(navbar.getId()));
        });
        return navbarPage;
    }

    @Override
    public List<NavbarVO> finAllData(Long flag) {
        List<Navbar> navbarList = navbarMapper.selectList(new QueryWrapper<Navbar>().eq("flag",flag).eq("parent_id",0).orderByAsc("order_num"));
        List<NavbarVO> navbarVOS = NavbarConvert.INSTANCE.navbarListToNavbarVoList(navbarList);
        navbarVOS.forEach(navbar -> navbar.setNavbarChildren(this.selectChildren(navbar.getId())));
        return navbarVOS;
    }

    @Override
    public Navbar selectById(Long id) {
        Navbar navbar = navbarMapper.selectById(id);
        return navbar;
    }

    @Override
    public List<NavbarTitleVO> selectByFlag(Long flag) {
        List<NavbarTitleVO> navbarTitleVos = NavbarConvert.INSTANCE.navbarListToTitleVoList(navbarMapper.selectList(new QueryWrapper<Navbar>().eq("flag", flag)));
        return navbarTitleVos;
    }

    @Override
    public Long getNavbarCount() {
        Long count = navbarMapper.selectCount(null);
        return count;
    }

    @Override
    @Transactional
    public Boolean insertNabar(NavbarDTO navbarDTO) {
        Navbar navbar = NavbarConvert.INSTANCE.navbarDTOToNavbar(navbarDTO);
        return navbarMapper.insert(navbar)>0;
    }

    @Override
    @Transactional
    public Boolean updateNavbar(NavbarDTO navbarDTO) {
        Navbar navbar = NavbarConvert.INSTANCE.navbarDTOToNavbar(navbarDTO);
        return navbarMapper.updateById(navbar)>0;
    }

    @Override
    @Transactional
    public Boolean deleteById(Long id) {
        return navbarMapper.deleteById(id)>0;
    }

    //判断id下面是否有子节点
    private boolean isChildren(Long parntId) {
        Long count = navbarMapper.selectCount(new QueryWrapper<Navbar>().eq("parent_id", parntId));
        // 0>0    1>0
        return count>0;
    }
    private List<NavbarVO> selectChildren(Long parntId){
        List<Navbar> navbarList = navbarMapper.selectList(new QueryWrapper<Navbar>().eq("parent_id", parntId));
        List<NavbarVO> navbarVOS = NavbarConvert.INSTANCE.navbarListToNavbarVoList(navbarList);
        return navbarVOS;
    }
}
