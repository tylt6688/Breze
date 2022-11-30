package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Group;

import java.util.List;

/**
 * <p>
 *  部门服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
public interface GroupService extends IService<Group> {

    /**
     * 根据用户id查询用户所属的组和职位
     * @param userId
     * @return List<Group>
     */
    List<Group> findGroupAndJobByUserId(Long userId);

    /**
     * 根据id查询树形结构
     * @return List<Group>
     */
    List<Group> findAll();

    /**
     * 根据id查询单个部门
     * @param id
     * @return Group
     */
    Group findById(Long id);

    /**
     * 根据id查询树形结构
     * @param id
     * @return Group
     */
    Group findTreeById(Long id);

    /**
     * 插入部门
     * @param group
     * @return true/false
     */
    Boolean insert(Group group);

    /**
     * 更新部门
     * @param group
     * @return true/false
     */
    Boolean update(Group group);

    /**
     * 删除部门
     * @param id
     * @return true/false
     */
    Boolean delete(Long id);
}
