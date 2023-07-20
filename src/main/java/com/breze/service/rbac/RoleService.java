package com.breze.service.rbac;

import com.breze.entity.dto.sys.RoleDTO;
import com.breze.entity.pojo.rbac.Role;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.vo.sys.RoleVO;

import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface RoleService extends IService<Role> {

    /**
     * 根据用户id查询当前用户拥有的角色集合
     *
     * @param userId 用户 id
     * @return List<Role>
     */
    List<RoleVO> listByUserId(Long userId);
    /**
     * 根据角色id查询角色信息
     *
     * @param id 角色 id
     * @return Role
     */
    RoleVO getRoleInfoById(Long id);
    /**
     * 根据用户id查询当前用户拥有的角色集合
     *
     * @param roleId 角色 id
     * @param menuIds 菜单 id 组
     * @return Boolean
     */
    Boolean permRole(Long roleId, Long[] menuIds);
    /**
     * 插入角色
     *
     * @param roleDTO 角色传输实体
     * @return Boolean
     */
    Boolean insert(RoleDTO roleDTO);
    /**
     * 更新角色
     *
     * @param roleDTO 角色传输实体
     * @return Boolean
     */
    Boolean update(RoleDTO roleDTO);
    /**
     * 删除角色
     *
     * @param roleIds 角色 id 数组
     * @return Boolean
     */
    Boolean delete(Long[] roleIds);
}
