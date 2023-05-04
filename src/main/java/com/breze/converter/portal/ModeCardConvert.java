package com.breze.converter.portal;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.portal.ModeCardDTO;
import com.breze.entity.pojo.portal.ModeCard;
import com.breze.entity.vo.portal.ModeCardVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @author chenweixi
 * @create 2023-05-04 13:53
 */
@Mapper
public interface ModeCardConvert {

    ModeCardConvert INSTANCE = Mappers.getMapper(ModeCardConvert.class);

    Page<ModeCardVO> modeCardPageToModeCardVOPage(Page<ModeCard> modeCardPage);

    ModeCard modeCardDTOToModeCard(ModeCardDTO modeCardDTO);


}
