package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserGroupJob;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/11 9:42
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface UserGroupJobService extends IService<UserGroupJob> {

    List<Job> findJobsByUserId(Long id);

    Long findUserCountByJobId(Long id);

    int insert(UserGroupJob userGroupJob);

    int update(UserGroupJob userGroupJob);

    int deleteById(Long id);
}
