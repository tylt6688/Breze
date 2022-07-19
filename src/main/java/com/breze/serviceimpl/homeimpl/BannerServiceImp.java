package com.breze.serviceimpl.homeimpl;

import com.breze.service.homeservice.BannerService;
import com.breze.entity.pojo.homepojo.Banner;
import com.breze.mapper.homemapper.BannerMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
