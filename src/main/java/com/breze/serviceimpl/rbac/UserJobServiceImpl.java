package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserJob;
import com.breze.mapper.rbac.JobMapper;
import com.breze.mapper.rbac.UserJobMapper;
import com.breze.service.rbac.UserJobService;
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
public class UserJobServiceImpl extends ServiceImpl<UserJobMapper, UserJob> implements UserJobService {

    @Autowired
    private JobMapper jobMapper;

    @Autowired
    private UserJobMapper userJobMapper;

    @Override
    public List<Job> findJobsByUserId(Long id) {
        QueryWrapper<UserJob> qw = new QueryWrapper<UserJob>();
        qw.eq("user_id", id);
        List<UserJob> ujs = userJobMapper.selectList(qw);
        List<Job> jobs = new ArrayList<>();
        for (UserJob uj : ujs) {
            Job j = jobMapper.selectById(uj.getJobId());
            jobs.add(j);
        }
        return jobs;
    }

    @Override
    public Long findUserCountByJobId(Long id) {
        QueryWrapper<UserJob> qw = new QueryWrapper<UserJob>();
        qw.eq("job_id", id);
        return userJobMapper.selectCount(qw);
    }

    @Override
    public int insert(UserJob userJob) {
        return userJobMapper.insert(userJob);
    }

    @Override
    public int update(UserJob userJob) {
        return userJobMapper.updateById(userJob);
    }

    @Override
    public int deleteById(Long id) {
        return userJobMapper.deleteById(id);
    }
}
