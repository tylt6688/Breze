package com.breze.service.portal.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.portal.ContentConvert;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.tool.ObjectStorageService;
import com.breze.entity.vo.portal.ContentIntroduceVo;
import com.breze.mapper.portal.MainContentMapper;
import com.breze.mapper.tool.OssFileMapper;
import com.breze.service.portal.MainContentService;
import com.breze.service.tool.QiNiuService;
import com.qiniu.common.QiniuException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

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
public class MainContentServiceImpl extends ServiceImpl<MainContentMapper, ContentIntroduce> implements MainContentService {
    @Autowired
    private MainContentMapper mainContentMapper;

    @Autowired
    private OssFileMapper ossFileMapper;

    @Autowired
    private QiNiuService qiNiuService;

    @Override
    public Page<ContentIntroduceVo> getContentPage(Page<ContentIntroduce> getPage, String titleName, Long parentId) {
        Page<ContentIntroduce> contentIntroducePage = mainContentMapper.selectPage(getPage, new QueryWrapper<ContentIntroduce>().like(StrUtil.isNotBlank(titleName),"main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        Page<ContentIntroduceVo> contentIntroduceVoPage = ContentConvert.INSTANCE.contentPageToContentPageVo(contentIntroducePage);
        contentIntroduceVoPage.getRecords().forEach(contentIntroduce -> {
            contentIntroduce.setChildren(mainContentMapper.selectList(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId()).orderByAsc("order_num")));
            contentIntroduce.getChildren().forEach(content -> content.setImgUrl(ossFileMapper.selectById(content.getOssId()).getFileUrl()));
        });
        return contentIntroduceVoPage;
    }

    @Override
    public ContentIntroduceVo getContentById(Long id) {
        ContentIntroduceVo contentIntroduceVo = ContentConvert.INSTANCE.contentToContentVO(mainContentMapper.selectById(id));
        contentIntroduceVo.setImgUrl(ossFileMapper.selectById(contentIntroduceVo.getOssId()).getFileUrl());
        return contentIntroduceVo;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertContent(ContentDTO contentDT, MultipartFile file) {
        ContentIntroduce contentIntroduce = ContentConvert.INSTANCE.contentDTOToContent(contentDT);
        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            throw new BusinessException(ErrorEnum.FindException, "文件必须为PNG或JPG格式");
        }
        try {
            String path = qiNiuService.uploadFile(file);
            String fileName = path.substring(25, path.lastIndexOf("."));

            ObjectStorageService objectStorageService = new ObjectStorageService();
            objectStorageService.setFileName(fileName);
            objectStorageService.setFileUrl(path);

            if ((contentIntroduce.getId() != null)) {
                // 删除原来的图片
                qiNiuService.deleteFile(contentIntroduce.getImgUrl());
                // 修改oss表图片存储链接
                objectStorageService.setId(Long.valueOf(contentIntroduce.getOssId()));
                ossFileMapper.updateById(objectStorageService);
                // 修改内容
                mainContentMapper.updateById(contentIntroduce);
                return ossFileMapper.updateById(objectStorageService)>0 && mainContentMapper.updateById(contentIntroduce)>0;
            } else {
                String ossId = IdUtil.simpleUUID();
                objectStorageService.setId(Long.valueOf(ossId));
                contentIntroduce.setOssId(ossId);
                ossFileMapper.insert(objectStorageService);
                mainContentMapper.insert(contentIntroduce);
                return ossFileMapper.insert(objectStorageService)>0 && mainContentMapper.insert(contentIntroduce)>0;
            }
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    @Transactional
    public Boolean updateContent(ContentDTO contentDTO) {
        ContentIntroduce contentIntroduce = ContentConvert.INSTANCE.contentDTOToContent(contentDTO);
        return mainContentMapper.updateById(contentIntroduce)>0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean deleteContent(ContentDTO contentDTO) {
        ContentIntroduce contentIntroduce = ContentConvert.INSTANCE.contentDTOToContent(contentDTO);
        Boolean qiqiu = null;
        int oss = 0;
        int content = 0;
        try {
            qiqiu = qiNiuService.deleteFile(contentIntroduce.getImgUrl());
            oss = ossFileMapper.deleteById(contentIntroduce.getOssId());
            content = mainContentMapper.deleteById(contentIntroduce);
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
        return qiqiu && oss>0 && content>0;
    }
}
