package com.breze.serviceimpl.rbac;

import cn.hutool.core.lang.tree.Tree;
import cn.hutool.core.lang.tree.TreeNodeConfig;
import cn.hutool.core.lang.tree.TreeUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;
import com.breze.mapper.rbac.GroupJobMapper;
import com.breze.mapper.rbac.GroupMapper;
import com.breze.mapper.rbac.JobMapper;
import com.breze.service.rbac.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
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
public class GroupServiceImpl extends ServiceImpl<GroupMapper, Group> implements GroupService {

    @Autowired
    private GroupMapper groupMapper;

    @Autowired
    private JobMapper jobMapper;

    @Autowired
    private GroupJobMapper groupJobMapper;

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

    @Override
    public List<Tree<String>> findAll() {
        List<Group> groups = groupMapper.selectList(null);
        TreeNodeConfig treeNodeConfig = new TreeNodeConfig();
        treeNodeConfig.setIdKey("id");
        List<Tree<String>> treeNodes = TreeUtil.build(groups, "0", treeNodeConfig,
                (treeNode, tree) -> {
                    tree.setId(treeNode.getId().toString());
                    tree.setParentId(treeNode.getParentId().toString());
                    tree.setName(treeNode.getName());
                    tree.putExtra("state", treeNode.getState());
                    tree.putExtra("remark", treeNode.getRemark());
                    tree.putExtra("createTime", treeNode.getCreateTime());
                    tree.putExtra("updateTime", treeNode.getUpdateTime());
                    tree.putExtra("children", treeNode.getChildren());
                    if (treeNode.getChildren().isEmpty()) {
                        tree.putExtra("jobs", findJobsByGroupId(treeNode.getId()));
                    }

                });
        return treeNodes;
    }
    private List<Job> findJobsByGroupId(Long id) {
        List<GroupJob> gjs = groupJobMapper.selectList(new QueryWrapper<GroupJob>().eq("group_id", id));
        List<Job> jobs = new ArrayList<>();
        for (GroupJob gj : gjs) {
            Job job = jobMapper.selectById(gj.getJobId());
            jobs.add(job);
        }
        return jobs;
    }

    @Override
    public Group findById(Long id) {
        Group group = groupMapper.selectById(id);
        QueryWrapper<Group> qw = new QueryWrapper<Group>();
        qw.eq("parent_id", id);
        List<Group> cgs = groupMapper.selectList(qw);
        group.setChildren(cgs);
        return group;
    }

    @Override
    public int insert(Group group) {
        return groupMapper.insert(group);
    }

    @Override
    public int update(Group group) {
        return groupMapper.updateById(group);
    }

    @Override
    public int delete(Long id) {
        return groupMapper.deleteById(id);
    }
}
