package com.breze.converter.sys;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.bo.sys.DictExcelBO;
import com.breze.entity.dto.sys.DictDTO;
import com.breze.entity.pojo.rbac.Dict;
import com.breze.entity.vo.sys.DictVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-04-20 17:20
 */
@Mapper
public interface DictConvert {
    DictConvert INSTANCE = Mappers.getMapper(DictConvert.class);
    
    /**
     *  dictDTO =>> dict 
     *
     * @Params [dictDTO] 
     * @Return com.breze.entity.pojo.rbac.Dict
     */
    Dict dictDTOToDict(DictDTO dictDTO);
    /**
     *  dictPage =>> dictVOPage 
     *
     * @Params [dictPage] 
     * @Return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.breze.entity.vo.sys.DictVO>
     */
    Page<DictVO> dictPageToDictVOPage(Page<Dict> dictPage);
    /**
     *  dictList =>> dictVOLIst 
     *
     * @Params [dicts] 
     * @Return java.util.List<com.breze.entity.vo.sys.DictVO>
     */
    List<DictVO> dictListTODictVOList(List<Dict> dicts);
    /**
     *  dict =>> dictVO 
     *
     * @Params [dict] 
     * @Return com.breze.entity.vo.sys.DictVO
     */
    DictVO dictToDictVO(Dict dict);
    /**
     *  dictList =>> dictBOLIst 
     *
     * @Params [dicts] 
     * @Return java.util.List<com.breze.entity.bo.sys.DictExcelBO>
     */
    List<DictExcelBO> dictListTODictBoList(List<Dict> dicts);
}
