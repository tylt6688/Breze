package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * <p>
 * 主体内容表 服务类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
public interface MainContentService extends IService<ContentIntroduce> {
    /**
     *   分页获取内容信息
     *
     * @Params [getPage, titleName, parentId]
     * @Return Page<ContentIntroduce>
     */
    Page<ContentIntroduceVO> getContentPage(Page<ContentIntroduce> getPage, String titleName, Long parentId);
    /**
     *  通过Id查询指定内容
     *
     * @Params [id]
     * @Return com.breze.entity.vo.portal.ContentIntroduceVo
     */
    ContentIntroduceVO getContentById(Long id);
    /**
     *  新增内容和修改内容(含图片)
     *
     * @Params [contentIntroduce, file]
     * @Return java.lang.Boolean
     */
    Boolean insertContent(ContentDTO contentDTO, MultipartFile file);
    /**
     *  新增内容和修改内容(不修改图片)
     *
     * @Params [contentDTO] 
     * @Return java.lang.Boolean
     */
    Boolean updateContent(ContentDTO contentDTO);
    /**
     *  删除内容
     *
     * @Params [contentIntroduce]
     * @Return java.lang.Boolean
     */
    Boolean deleteContent(ContentDTO contentDT);


    List<ContentIntroduceVO> selectAllDataList(String titleName, Long parentId);
}
