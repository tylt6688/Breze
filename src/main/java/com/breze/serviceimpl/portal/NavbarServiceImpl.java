package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.mapper.portal.NavbarMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.portal.NavbarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * <p>
 * 导航连接表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Service
public class NavbarServiceImpl extends ServiceImpl<NavbarMapper, Navbar> implements NavbarService {

    @Autowired
    private NavbarMapper navbarMapper;


    @Override
    public Page<Navbar> findNavbarPage(Page<Navbar> page, String titleName,Long parentId) {
        Page<Navbar> navbarPage = navbarMapper.selectPage(page, new QueryWrapper<Navbar>().like("title_name", titleName).eq("parent_id",parentId).orderByAsc("order_num"));
        navbarPage.getRecords().forEach(navbar -> navbar.setHasChildren(this.isChildren(navbar.getId())));
        return navbarPage;
    }
    //判断id下面是否有子节点
    private boolean isChildren(Long parntId) {
        QueryWrapper<Navbar> wrapper = new QueryWrapper<>();
        Long count = navbarMapper.selectCount(new QueryWrapper<Navbar>().eq("parent_id", parntId));
        // 0>0    1>0
        return count>0;
    }
}
