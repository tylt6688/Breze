package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.portal.Banner;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
public interface BannerService extends IService<Banner> {

    /**
     * 逆序输出轮播图
     */
    List<Banner> listOrderByDesc();

}
