package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.portal.BannerDTO;
import com.breze.entity.pojo.portal.Banner;
import com.breze.entity.vo.portal.BannerVO;
import org.springframework.web.multipart.MultipartFile;

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
     *  通过id获取轮播图
     *
     * @Params [id]
     * @Return com.breze.entity.vo.portal.BannerVO
     */
    BannerVO getBannerById(Long id);
    /**
     *  逆序输出轮播图 
     *
     * @Params [] 
     * @Return java.util.List<com.breze.entity.pojo.portal.Banner>
     */
    List<BannerVO> listOrderByDesc();
    /**
     *  修改轮播图 
     *
     * @Params [bannerDTO] 
     * @Return java.lang.Boolean
     */
    Boolean updateBanner(BannerDTO bannerDTO);
    
    /**
     *   新增轮播图
     *
     * @Params [alt, orderNum, file] 
     * @Return java.lang.Boolean
     */
    Boolean insertBanner(String alt, Integer orderNum, MultipartFile file);
    /**
     *  删除轮播图
     *
     * @Params [url] 
     * @Return java.lang.Boolean
     */
    Boolean deleteBanner(String url);



}
