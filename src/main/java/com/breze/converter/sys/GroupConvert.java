package com.breze.converter.sys;

import com.breze.entity.dto.sys.GroupDTO;
import com.breze.entity.pojo.rbac.Group;
import org.mapstruct.Mapper;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * @Author LGX
 * @Date 2023/3/26 16:36
 * @Description:
 * @Copyright(c) 2023, 清枫网络工作室
 */
@Mapper
public interface GroupConvert {

    GroupConvert INSTANCE = Mappers.getMapper(GroupConvert.class);

    @Mappings({})
    Group groupDTOToGroup(GroupDTO groupDTO);

}
