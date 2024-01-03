package com.breze.service.portal.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.config.OssConfig;
import com.breze.converter.portal.BannerConvert;
import com.breze.entity.dto.portal.BannerDTO;
import com.breze.entity.pojo.portal.Banner;
import com.breze.entity.vo.portal.BannerVO;
import com.breze.mapper.portal.BannerMapper;
import com.breze.service.portal.BannerService;
import com.breze.service.core.QiNiuService;
import com.qiniu.common.QiniuException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Objects;

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

    @Autowired
    private QiNiuService qiNiuService;

    @Autowired
    private OssConfig ossConfig;

    @Override
    public BannerVO getBannerById(Long id) {
        BannerVO bannerVO = BannerConvert.INSTANCE.bannerToBannerVO(bannerMapper.selectById(id));
        return bannerVO;
    }

    @Override
    public List<BannerVO> listOrderByDesc() {
        List<Banner> bannerList = bannerMapper.selectList(new QueryWrapper<Banner>().orderByAsc("order_num"));
        List<BannerVO> bannerVOS = BannerConvert.INSTANCE.bannerListTOBannerListVO(bannerList);
        return bannerVOS;
    }

    @Override
    @Transactional
    public Boolean updateBanner(BannerDTO bannerDTO) {
        Banner banner = BannerConvert.INSTANCE.bannerDTOTOBanner(bannerDTO);
        return bannerMapper.updateById(banner)>0;
    }

    @Override
    @Transactional
    public Boolean insertBanner(String alt, Integer orderNum, MultipartFile file) {
        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(".png") && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(".jpg")) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "文件必须为PNG或JPG格式");
        }
        try {
            String path = qiNiuService.uploadFile(file);
            Banner banner = new Banner();
            banner.setUrl(path).setAlt(alt).setOrderNum(orderNum);
            return bannerMapper.insert(banner)>0;
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    @Transactional
    public Boolean deleteBanner(String url) {
        if (!url.isEmpty() && url.substring(0, 24).equals(ossConfig.getUrl())) {
            try {
                Boolean qiniu = qiNiuService.deleteFile(url);
                int banner = bannerMapper.delete(new QueryWrapper<Banner>().eq("url", url));
                return qiniu && banner>0;
            } catch (Exception e) {
                return bannerMapper.delete(new QueryWrapper<Banner>().eq("url", url))>0;
            }
        } else {
            return bannerMapper.delete(new QueryWrapper<Banner>().eq("url", url))>0;
        }
    }
}
