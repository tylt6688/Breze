package com.breze.service.rbac;

import cn.hutool.core.lang.tree.Tree;
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

    List<Group> tree();
    List<Tree<String>> findAll();
    Group findById(Long id);
    int insert(Group group);
    int update(Group group);
    int delete(Long id);
}
