package com.breze.converter.sys;

import com.breze.entity.dto.sys.RoleDTO;
import com.breze.entity.pojo.rbac.Role;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author tylt6688
 * @Date 2023/1/12 17:02
 * @Description RoleConvert实体转化
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface RoleConvert {

    RoleConvert INSTANCE = Mappers.getMapper(RoleConvert.class);

    /**
     * RoleDTO 转为 Role
     *
     * @param roleDTO RoleDTO实体
     * @return Role Role实体
     */
    Role roleDTOTORole(RoleDTO roleDTO);
}
