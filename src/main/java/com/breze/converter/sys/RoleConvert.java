package com.breze.converter.sys;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.sys.RoleDTO;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.vo.sys.RoleVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

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
     * @return Role
     */
    Role roleDTOTORole(RoleDTO roleDTO);


    /**
     * Role 转为 RoleVO
     *
     * @param role Role实体
     * @return RoleVO
     */

    RoleVO roleTORoleVO(Role role);

    /**
     * List<Role> 转为 List<RoleVO>
     *
     * @param roleList Role实体集合
     * @return List<RoleVO>
     */
    List<RoleVO> roleTORoleVO(List<Role> roleList);

    /**
     * Page<Role> 转为 Page<RoleVO>
     *
     * @param rolePage Role实体集合
     * @return Page<RoleVO>
     */
    Page<RoleVO> roleTORoleVO(Page<Role> rolePage);

}
