package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserGroupJob;
import com.breze.mapper.rbac.JobMapper;
import com.breze.mapper.rbac.UserGroupJobMapper;
import com.breze.service.rbac.UserGroupJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/11 9:46
 * @Description:
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Service
public class UserGroupJobServiceImpl extends ServiceImpl<UserGroupJobMapper, UserGroupJob> implements UserGroupJobService {

    @Autowired
    private JobMapper jobMapper;

    @Autowired
    private UserGroupJobMapper userGroupJobMapper;

    @Override
    public List<Job> findJobsByUserId(Long id) {
        QueryWrapper<UserGroupJob> qw = new QueryWrapper<>();
        qw.eq("user_id", id);
        List<UserGroupJob> ujs = userGroupJobMapper.selectList(qw);
        List<Job> jobs = new ArrayList<>();
        for (UserGroupJob uj : ujs) {
            Job j = jobMapper.selectById(uj.getJobId());
            jobs.add(j);
        }
        return jobs;
    }

    @Override
    public Long findUserCountByJobId(Long id) {
        QueryWrapper<UserGroupJob> qw = new QueryWrapper<>();
        qw.eq("job_id", id);
        return userGroupJobMapper.selectCount(qw);
    }

    @Override
    public Boolean insert(UserGroupJob userGroupJob) {
        return userGroupJobMapper.insert(userGroupJob) > 0;
    }

    @Override
    public Boolean update(UserGroupJob userGroupJob) {
        return userGroupJobMapper.updateById(userGroupJob) > 0;
    }

    @Override
    public Boolean deleteById(Long id) {
        return userGroupJobMapper.deleteById(id) > 0;
    }
}
