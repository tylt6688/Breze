package com.breze.mapper.rbac;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.pojo.rbac.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Mapper
public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 根据用户id查询角色集合
     * @param userId
     * @return List<Role>
     */
    List<Role> listByUserId(Long userId);

}
