package com.breze.serviceimpl.homeimpl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.service.homeservice.BannerService;
import com.breze.entity.pojo.homedo.Banner;
import com.breze.mapper.homemapper.BannerMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
@Service
public class BannerServiceImp extends ServiceImpl<BannerMapper, Banner> implements BannerService {

    @Autowired
    private BannerMapper bannerMapper;

    @Override
    public List<Banner> listOrderByDesc() {
        return bannerMapper.selectList(new QueryWrapper<Banner>().orderByAsc("order_num"));
    }
}
