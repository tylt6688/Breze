package com.breze.converter.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.dto.portal.DetailContentDTO;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.portal.DetailContent;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import com.breze.entity.vo.portal.DetailContentVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-05-04 14:18
 */
@Mapper
public interface DetailContentConvert {

    DetailContentConvert INSTANCE = Mappers.getMapper(DetailContentConvert.class);
    /**
     *  Page => PageVO
     *
     * @Params [DetailContentPage]
     * @Return DetailContentVO
     */
    Page<DetailContentVO> detailContentPageToDetailContentVO(Page<DetailContent> detailContentPage);

    DetailContentVO detailContentToDetailContentVO(DetailContent detailContent);

    DetailContent detailContentDTOToDetailContent(DetailContentDTO detailContentDTO);

    List<DetailContentVO> detailContentListToDetailContentVOList(List<DetailContent> detailContents);
}
