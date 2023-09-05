package com.breze.converter.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-05-04 14:18
 */
@Mapper
public interface ContentConvert {

    ContentConvert INSTANCE = Mappers.getMapper(ContentConvert.class);
    /**
     *  Page => PageVO
     *
     * @Params [contentIntroducePage]
     * @Return ContentIntroduceVo
     */
    Page<ContentIntroduceVO> contentPageToContentPageVo(Page<ContentIntroduce> contentIntroducePage);
    /**
     *  content => contentVO
     *
     * @Params [contentIntroduce]
     * @Return ContentIntroduceVo
     */
    ContentIntroduceVO contentToContentVO(ContentIntroduce contentIntroduce);
    /**
     *  contentDOT =>Content 
     *
     * @Params [contentDTO] 
     * @Return ContentIntroduce
     */
    ContentIntroduce contentDTOToContent(ContentDTO contentDTO);

    /**
     *  contentList =>ContentVOList
     *
     * @Params [contentDTO]
     * @Return ContentIntroduce
     */
    List<ContentIntroduceVO> contentListToContentVOList(List<ContentIntroduce> contentIntroduce);
}
