package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.UserGroupJob;
import com.breze.mapper.rbac.UserGroupJobMapper;
import com.breze.service.rbac.UserGroupJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/11 9:46
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Service
public class UserGroupJobServiceImpl extends ServiceImpl<UserGroupJobMapper, UserGroupJob> implements UserGroupJobService {


    @Autowired
    private UserGroupJobMapper userGroupJobMapper;



    @Override
    public Long findUserNumberByJobId(Long jobId) {
        return userGroupJobMapper.selectCount(new LambdaQueryWrapper<UserGroupJob>().eq(UserGroupJob::getJobId, jobId));
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
