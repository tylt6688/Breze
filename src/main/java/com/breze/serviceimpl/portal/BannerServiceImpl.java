package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.portal.Banner;
import com.breze.mapper.portal.BannerMapper;
import com.breze.service.portal.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
@DS("portal")
@Service
public class BannerServiceImpl extends ServiceImpl<BannerMapper, Banner> implements BannerService {

    @Autowired
    private BannerMapper bannerMapper;

    @Override
    public List<Banner> listOrderByDesc() {
        return bannerMapper.selectList(new QueryWrapper<Banner>().orderByAsc("order_num"));
    }
}
