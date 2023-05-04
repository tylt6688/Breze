package com.breze.converter.portal;

import com.breze.entity.dto.portal.BannerDTO;
import com.breze.entity.pojo.portal.Banner;
import com.breze.entity.vo.portal.BannerVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-05-04 15:09
 */
@Mapper
public interface BannerConvert {

    BannerConvert INSTANCE = Mappers.getMapper(BannerConvert.class);
    /**
     *  banner => bannerVo
     *
     * @Params [banner]
     * @Return BannerVO
     */
    BannerVO bannerToBannerVO(Banner banner);
    /**
     *  List<Banner> => List<BannerVO>
     *
     * @Params [banners]
     * @Return java.util.List<com.breze.entity.vo.portal.BannerVO>
     */
    List<BannerVO> bannerListTOBannerListVO(List<Banner> banners);
    /**
     *  bannerDTO => banner 
     *
     * @Params [bannerDTO] 
     * @Return com.breze.entity.pojo.portal.Banner
     */
    Banner bannerDTOTOBanner(BannerDTO bannerDTO);
}
