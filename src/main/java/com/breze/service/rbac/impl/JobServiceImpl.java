package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Job;
import com.breze.mapper.rbac.JobMapper;
import com.breze.service.rbac.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.util.StringUtils;

import java.beans.Transient;
import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:24
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Service
public class JobServiceImpl extends ServiceImpl<JobMapper, Job> implements JobService {

    @Autowired
    public JobMapper jobMapper;

    @Override
    public List<Job> findAll() {
        return jobMapper.selectList(null);
    }

    @Override
    public Job findByJobId(Long id) {
        return jobMapper.selectById(id);
    }

//    @Override
//    public List<Job> findByJobName(String name) {
//        QueryWrapper<Job> qw = new QueryWrapper<>();
//        qw.like("name", name);
//        return jobMapper.selectList(qw);
//    }

    @Override
    public List<Job> searchOr(Job job) {
        QueryWrapper<Job> qw = new QueryWrapper<>();
        qw.like("id", job.getId()).or()
            .like("name", job.getName()).or()
            .like("state", job.getState()).or()
            .like("remark", job.getRemark());
        return jobMapper.selectList(qw);
    }

    @Override
    public List<Job> searchAnd(Job job) {
        QueryWrapper<Job> qw = new QueryWrapper<>();
        qw.like("id", job.getId())
                .like("name", job.getName())
                .like("state", job.getState())
                .like("remark", job.getRemark());
        return jobMapper.selectList(qw);
    }

    @Override
    public Boolean insert(Job job) {
        if (jobMapper.exists(new QueryWrapper<Job>().eq("name", job.getName()))) {
            return false;
        }
        return jobMapper.insert(job) > 0;
    }

    @Override
    public Boolean update(Job job) {
        Job j = jobMapper.selectOne(new QueryWrapper<Job>().eq("name", job.getName()));
        if (j.getName().equals(job.getName()) ) {
            if (j.getId() == job.getId()) {
                return jobMapper.updateById(job) > 0;
            }
            return false;
        }
        return jobMapper.updateById(job) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delete(Long id) {
        return jobMapper.deleteById(id) > 0;
    }
}
