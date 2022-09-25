package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;
import com.breze.mapper.rbac.GroupJobMapper;
import com.breze.mapper.rbac.JobMapper;
import com.breze.service.rbac.GroupJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:25
 * @Description 岗位组服务实现类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Service
public class GroupJobServiceImpl extends ServiceImpl<GroupJobMapper, GroupJob> implements GroupJobService {

    @Autowired
    private JobMapper jobMapper;
    @Autowired
    private GroupJobMapper groupJobMapper;

    @Override
    public List<Job> findJobsByGroupId(Long id) {
        List<GroupJob> gjs = groupJobMapper.selectList(new QueryWrapper<GroupJob>().eq("group_id", id));
        List<Job> jobs = new ArrayList<>();
        for (GroupJob gj : gjs) {
            Job j = jobMapper.selectById(gj.getJobId());
            jobs.add(j);
        }
        return jobs;
    }

    @Override
    public int insert(GroupJob groupJob) {
        return groupJobMapper.insert(groupJob);
    }

    @Override
    public int update(GroupJob groupJob) {
        return groupJobMapper.updateById(groupJob);
    }

    @Override
    public int deleteById(Long id) {
        return groupJobMapper.deleteById(id);
    }
}
