package com.breze.converter.sys;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.bo.sys.DictDataExcelBO;
import com.breze.entity.dto.sys.DictDataDTO;
import com.breze.entity.pojo.core.DictData;
import com.breze.entity.vo.sys.DictDataVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-04-20 17:20
 */
@Mapper
public interface DictDataConvert {
    DictDataConvert INSTANCE = Mappers.getMapper(DictDataConvert.class);
    
    /**
     *  dictDataPage =>> dictDataVOPage 
     *
     * @Params [dictDataPage] 
     * @Return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.breze.entity.vo.sys.DictDataVO>
     */
    Page<DictDataVO> dictDataPageToDictDataVoPage(Page<DictData> dictDataPage);
    /**
     *  dictDataDTO =>> DictData 
     *
     * @Params [dictDataDTO] 
     * @Return com.breze.entity.pojo.core.DictData
     */
    DictData dictDataDTOToDictData(DictDataDTO dictDataDTO);
    /**
     *  dictData =>> DictDataVo 
     *
     * @Params [dictData] 
     * @Return com.breze.entity.vo.sys.DictDataVO
     */
    DictDataVO dictDataToDictDataVo(DictData dictData);
    /**
     *  dictDataList =>> DictDataBoList 
     *
     * @Params [dicts] 
     * @Return java.util.List<com.breze.entity.bo.sys.DictDataExcelBO>
     */
    List<DictDataExcelBO> dictDataListTODictDataBoList(List<DictData> dicts);
}
