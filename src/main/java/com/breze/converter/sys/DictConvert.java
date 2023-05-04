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

    Dict dictDTOToDict(DictDTO dictDTO);

    Page<DictVO> dictPageToDictVOPage(Page<Dict> dictPage);

    List<DictExcelBO> dictListTODictBoList(List<Dict> dicts);
}
