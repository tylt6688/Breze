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
    public List<Tree<String>> findAll();

    public Group findById(Long id);
    public int insert(Group group);
    public int update(Group group);
    public int delete(Long id);
}
