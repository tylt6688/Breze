package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Group;
import com.breze.mapper.rbac.DepartmentMapper;
import com.breze.service.rbac.GroupService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@Service
public class GroupServiceImpl extends ServiceImpl<DepartmentMapper, Group> implements GroupService {

    private List<Group> buildTreeDepartment(List<Group> groups) {
        List<Group> finalMenus = new ArrayList<>();
        // 先各自寻找到各自的孩子
        for (Group group : groups) {
            // 提取出父节点
            if (group.getParentId() == 0L) {
                finalMenus.add(group);
            }
            for (Group e : groups) {
                if (group.getId().equals(e.getParentId())) {
                    group.getChildren().add(e);
                }
            }
        }
        return finalMenus;
    }

    @Override
    public List<Group> tree() {
        List<Group> groups = this.list();
        return buildTreeDepartment(groups);
    }
}
