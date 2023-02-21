package com.breze.service.portal.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.mapper.portal.NavbarMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.portal.NavbarService;
import org.apache.poi.ss.formula.functions.Na;
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
        navbarPage.getRecords().forEach(navbar -> {
            navbar.setHasChildren(this.isChildren(navbar.getId()));
        });
        return navbarPage;
    }

    @Override
    public List<Navbar> finAllData(Long flag) {
        List<Navbar> navbarList = navbarMapper.selectList(new QueryWrapper<Navbar>().eq("flag",flag).eq("parent_id",0).orderByAsc("order_num"));
       navbarList.forEach(navbar -> navbar.setNavbarChildren(this.selectChildren(navbar.getId())));
        return navbarList;
    }

    //判断id下面是否有子节点
    private boolean isChildren(Long parntId) {
        Long count = navbarMapper.selectCount(new QueryWrapper<Navbar>().eq("parent_id", parntId));
        // 0>0    1>0
        return count>0;
    }
    private List<Navbar> selectChildren(Long parntId){
        List<Navbar> navbarList = navbarMapper.selectList(new QueryWrapper<Navbar>().eq("parent_id", parntId));
        return navbarList;
    }
}
