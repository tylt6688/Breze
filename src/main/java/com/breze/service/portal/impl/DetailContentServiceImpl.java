package com.breze.service.portal.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.portal.DetailContentConvert;
import com.breze.entity.dto.portal.DetailContentDTO;
import com.breze.entity.pojo.portal.DetailContent;
import com.breze.entity.pojo.core.OSS;
import com.breze.entity.vo.portal.DetailContentVO;
import com.breze.mapper.portal.DetailContentMapper;
import com.breze.mapper.core.OssFileMapper;
import com.breze.service.portal.DetailContentService;
import com.breze.service.core.QiNiuService;
import com.qiniu.common.QiniuException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 主体内容表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Transactional
@Service
public class DetailContentServiceImpl extends ServiceImpl<DetailContentMapper, DetailContent> implements DetailContentService {

    @Autowired
    private DetailContentMapper detailContentMapper;

    @Autowired
    private OssFileMapper ossFileMapper;

    @Autowired
    private QiNiuService qiNiuService;

    @Override
    public Page<DetailContentVO> getDetailContentPage(Page<DetailContent> page, Long contentId, Long parentId) {
        Page<DetailContent> detailContentPage = detailContentMapper.selectPage(page, new QueryWrapper<DetailContent>().eq(contentId != null, "content_id", contentId).eq("parent_id", parentId).orderByAsc("order_num"));
        Page<DetailContentVO> detailContentVOPage = DetailContentConvert.INSTANCE.detailContentPageToDetailContentVO(detailContentPage);
        detailContentVOPage.getRecords().forEach(detailContent -> {
            detailContent.setChildren(detailContentMapper.selectList(new QueryWrapper<DetailContent>().eq("parent_id", detailContent.getId())));
            for (DetailContent child : detailContent.getChildren()) {
                if (child.getOssId() != null) {
                    child.setImgUrl(ossFileMapper.selectById(child.getOssId()).getFileUrl());
                }
                child.setInfoList(Arrays.asList(child.getInfo().split("<->")));
            }
        });
        return detailContentVOPage;
    }

    @Override
    public DetailContentVO getContentById(Long id) {
        DetailContentVO detailContentVO = DetailContentConvert.INSTANCE.detailContentToDetailContentVO(detailContentMapper.selectById(id));
        if (detailContentVO.getOssId() != null) {
            detailContentVO.setImgUrl(ossFileMapper.selectById(detailContentVO.getOssId()).getFileUrl());
        }
        return detailContentVO;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertContent(DetailContentDTO detailContentDTO, MultipartFile file) {
        DetailContent detailContent = DetailContentConvert.INSTANCE.detailContentDTOToDetailContent(detailContentDTO);
        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "文件必须为PNG或JPG格式");
        }
        try {
            String path = qiNiuService.uploadFile(file);
            String fileName = path.substring(25, path.lastIndexOf("."));

            OSS oss = new OSS();
            oss.setFileName(fileName);
            oss.setFileUrl(path);

            if ((detailContent.getId() != null)) {
                if (detailContent.getOssId() != null) {
                    // 删除原来的图片
                    qiNiuService.deleteFile(detailContent.getImgUrl());
                    // 修改oss表图片存储链接
                    oss.setId(Long.valueOf(detailContent.getOssId()));
                    ossFileMapper.updateById(oss);
                } else {
                    ossFileMapper.insert(oss);
                    detailContent.setOssId(ossFileMapper.selectOne(new QueryWrapper<OSS>().eq("file_name", fileName)).getId());
                }
                // 修改内容
                detailContentMapper.updateById(detailContent);
                return ossFileMapper.updateById(oss) > 0 && detailContentMapper.updateById(detailContent) > 0;
            } else {
                ossFileMapper.insert(oss);
                detailContent.setOssId(ossFileMapper.selectOne(new QueryWrapper<OSS>().eq("file_name", fileName)).getId());
                detailContentMapper.insert(detailContent);
                return ossFileMapper.insert(oss) > 0 && detailContentMapper.insert(detailContent) > 0;
            }
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    @Transactional
    public Boolean updateContent(DetailContentDTO detailContentDTO) {
        DetailContent detailContent = DetailContentConvert.INSTANCE.detailContentDTOToDetailContent(detailContentDTO);
        if (detailContent.getId() != null) {
            return detailContentMapper.updateById(detailContent) > 0;
        } else {
            return detailContentMapper.insert(detailContent) > 0;
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean deleteContent(DetailContentDTO detailContentDTO) {
        DetailContent detailContent = DetailContentConvert.INSTANCE.detailContentDTOToDetailContent(detailContentDTO);
        Boolean qiqiu = true;
        int oss = 1;
        int content = 0;
        try {
            if (detailContent.getOssId() != null) {
                qiqiu = qiNiuService.deleteFile(detailContent.getImgUrl());
                oss = ossFileMapper.deleteById(detailContent.getOssId());
            }
            content = detailContentMapper.deleteById(detailContent);
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
        return qiqiu && oss > 0 && content > 0;
    }

    @Override
    public List<DetailContentVO> getInfoByContentId(Long contentId) {
        List<DetailContent> detailContents = detailContentMapper.selectList(new QueryWrapper<DetailContent>().eq("content_id", contentId).eq("parent_id", 0).orderByAsc("order_num"));
        List<DetailContentVO> detailContentVOS = DetailContentConvert.INSTANCE.detailContentListToDetailContentVOList(detailContents);
        for (DetailContentVO detailContentVO : detailContentVOS) {
            List<DetailContent> detailContentList = detailContentMapper.selectList(new QueryWrapper<DetailContent>().eq("parent_id", detailContentVO.getId()));
            if (!detailContentList.isEmpty()) {
                for (DetailContent detailContent : detailContentList) {
                    detailContent.setInfoList(Arrays.asList(detailContent.getInfo().split("<->")));
                }
                detailContentVO.setChildren(detailContentList);
            }
        }
        return detailContentVOS;
    }
}
