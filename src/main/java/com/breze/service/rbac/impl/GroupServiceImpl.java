package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserGroupJob;
import com.breze.mapper.rbac.GroupJobMapper;
import com.breze.mapper.rbac.GroupMapper;
import com.breze.mapper.rbac.JobMapper;
import com.breze.mapper.rbac.UserGroupJobMapper;
import com.breze.service.rbac.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 服务实现类
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

    @Autowired
    private UserGroupJobMapper userGroupJobMapper;


    @Override
    public List<Group> findGroupAndJobByUserId(Long userId) {
        List<UserGroupJob> userGroupJobs = userGroupJobMapper.selectList(new LambdaQueryWrapper<UserGroupJob>().eq(UserGroupJob::getUserId, userId));
        List<Group> list = new ArrayList<>();
        userGroupJobs.forEach(userGroupJob -> {
            Group groupJob = this.findTreeById(userGroupJob.getGroupId());
            Job job = jobMapper.selectById(userGroupJob.getJobId());
            groupJob.setJob(job.getName());
            list.add(groupJob);
        });
        return list;
    }

    private List<Group> buildTreeGroup(List<Group> groups) {
        List<Group> finalGroups = new ArrayList<>();
        // 先各自寻找到各自的孩子
        for (Group group : groups) {
            // 提取出父节点
            if (group.getParentId() == 0L) {
                finalGroups.add(group);
            }
            for (Group g : groups) {
                if (group.getId().equals(g.getParentId())) {
                    group.getChildren().add(g);
                }
            }
        }
        return finalGroups;
    }

    @Override
    public List<Group> findAll() {
        return buildTreeGroup(groupMapper.selectList(null));
    }



    private List<Job> findJobsByGroupId(Long id) {
        List<GroupJob> groupJobs = groupJobMapper.selectList(new QueryWrapper<GroupJob>().eq("group_id", id));
        List<Job> jobs = new ArrayList<>();
        for (GroupJob groupJob : groupJobs) {
            Job job = jobMapper.selectById(groupJob.getJobId());
            jobs.add(job);
        }
        return jobs;
    }

    @Override
    public Group findById(Long id) {
        Group group = groupMapper.selectById(id);
        QueryWrapper<Group> qw = new QueryWrapper<>();
        qw.eq("parent_id", id);
        List<Group> cgs = groupMapper.selectList(qw);
        group.setChildren(cgs);
        return group;
    }

    // 2022/10/7 21:04 FIXME: 部门递归 获取部门信息 UP BY LUCIFER-LGX
    @Override
    public Group findTreeById(Long id) {
        Group group = groupMapper.selectById(id);
        return findGroup(group);
    }

    private Group findGroup(Group group) {
        List<Group> list = new ArrayList<>();
        if (group.getParentId() == 0L) {
            return group;
        } else {
            Group g = groupMapper.selectById(group.getParentId());
            list.add(group);
            g.setChildren(list);
            return findGroup(g);
        }
    }

    @Override
    public Boolean insert(Group group) {
        return groupMapper.insert(group) > 0;
    }

    @Override
    public Boolean update(Group group) {
        return groupMapper.updateById(group) > 0;
    }

    @Override
    public Boolean delete(Long id) {
        return groupMapper.deleteById(id) > 0;
    }
}
