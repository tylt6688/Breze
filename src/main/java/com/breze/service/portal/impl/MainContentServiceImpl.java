package com.breze.service.portal.impl;

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
import com.breze.entity.pojo.core.OSS;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import com.breze.entity.vo.portal.ContentSelectVO;
import com.breze.mapper.portal.MainContentMapper;
import com.breze.mapper.core.OssFileMapper;
import com.breze.service.portal.MainContentService;
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
public class MainContentServiceImpl extends ServiceImpl<MainContentMapper, ContentIntroduce> implements MainContentService {
    @Autowired
    private MainContentMapper mainContentMapper;

    @Autowired
    private OssFileMapper ossFileMapper;

    @Autowired
    private QiNiuService qiNiuService;

    @Override
    public Page<ContentIntroduceVO> getContentPage(Page<ContentIntroduce> getPage, String titleName, Long parentId) {
        Page<ContentIntroduce> contentIntroducePage = mainContentMapper.selectPage(getPage, new QueryWrapper<ContentIntroduce>().like(StrUtil.isNotBlank(titleName), "main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        Page<ContentIntroduceVO> contentIntroduceVoPage = ContentConvert.INSTANCE.contentPageToContentPageVo(contentIntroducePage);
        contentIntroduceVoPage.getRecords().forEach(contentIntroduce -> {
            contentIntroduce.setChildren(mainContentMapper.selectList(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId()).orderByAsc("order_num")));
            for (ContentIntroduce child : contentIntroduce.getChildren()) {
                if (child.getOssId() != null) {
                    child.setImgUrl(ossFileMapper.selectById(child.getOssId()).getFileUrl());
                }
            }
        });
        return contentIntroduceVoPage;
    }

    @Override
    public ContentIntroduceVO getContentById(Long id) {
        ContentIntroduceVO contentIntroduceVo = ContentConvert.INSTANCE.contentToContentVO(mainContentMapper.selectById(id));
        if (contentIntroduceVo.getOssId() != null) {
            contentIntroduceVo.setImgUrl(ossFileMapper.selectById(contentIntroduceVo.getOssId()).getFileUrl());
        }
        return contentIntroduceVo;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertContent(ContentDTO contentDT, MultipartFile file) {
        ContentIntroduce contentIntroduce = ContentConvert.INSTANCE.contentDTOToContent(contentDT);
        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "文件必须为PNG或JPG格式");
        }
        try {
            String path = qiNiuService.uploadFile(file);
            String fileName = path.substring(25, path.lastIndexOf("."));

            OSS oss = new OSS();
            oss.setFileName(fileName);
            oss.setFileUrl(path);

            if ((contentIntroduce.getId() != null)) {
                if (contentIntroduce.getOssId() != null) {
                    // 删除原来的图片
                    qiNiuService.deleteFile(contentIntroduce.getImgUrl());
                    // 修改oss表图片存储链接
                    oss.setId(contentIntroduce.getOssId());
                    ossFileMapper.updateById(oss);
                } else {
                    ossFileMapper.insert(oss);
                    contentIntroduce.setOssId(ossFileMapper.selectOne(new QueryWrapper<OSS>().eq("file_name", fileName)).getId());
                }
                // 修改内容
                mainContentMapper.updateById(contentIntroduce);
                return ossFileMapper.updateById(oss) > 0 && mainContentMapper.updateById(contentIntroduce) > 0;
            } else {
                ossFileMapper.insert(oss);
                contentIntroduce.setOssId(ossFileMapper.selectOne(new QueryWrapper<OSS>().eq("file_name", fileName)).getId());
                mainContentMapper.insert(contentIntroduce);
                return ossFileMapper.insert(oss) > 0 && mainContentMapper.insert(contentIntroduce) > 0;
            }
        } catch (QiniuException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    @Transactional
    public Boolean updateContent(ContentDTO contentDTO) {
        ContentIntroduce contentIntroduce = ContentConvert.INSTANCE.contentDTOToContent(contentDTO);
        if (contentIntroduce.getId() != null) {
            return mainContentMapper.updateById(contentIntroduce) > 0;
        } else {
            return mainContentMapper.insert(contentIntroduce) > 0;
        }
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
        return qiqiu && oss > 0 && content > 0;
    }

    @Override
    public List<ContentIntroduceVO> selectAllDataList(String titleName, Long parentId) {
        List<ContentIntroduce> contentIntroduceList = mainContentMapper.selectList(new QueryWrapper<ContentIntroduce>().like(StrUtil.isNotBlank(titleName), "main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        List<ContentIntroduceVO> contentIntroduceVOList = ContentConvert.INSTANCE.contentListToContentVOList(contentIntroduceList);
        contentIntroduceVOList.forEach(contentIntroduce -> {
            contentIntroduce.setChildren(mainContentMapper.selectList(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId()).orderByAsc("order_num")));
            for (ContentIntroduce child : contentIntroduce.getChildren()) {
                if (child.getOssId() != null) {
                    child.setImgUrl(ossFileMapper.selectById(child.getOssId()).getFileUrl());
                }
                child.setTitleInfoList(Arrays.asList(child.getTitleInfo().split("<->")));
            }
        });
        return contentIntroduceVOList;
    }

    @Override
    public List<ContentSelectVO> getSelectOption() {
        List<ContentIntroduce> contentIntroduceList = mainContentMapper.selectList(new QueryWrapper<ContentIntroduce>().ne("parent_id", 0));
        List<ContentSelectVO> contentSelectVOS = ContentConvert.INSTANCE.contentListToContentSelectVOList(contentIntroduceList);
        return contentSelectVOS;
    }
}
