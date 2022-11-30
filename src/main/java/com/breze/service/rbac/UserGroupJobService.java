package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.UserGroupJob;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/11 9:42
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface UserGroupJobService extends IService<UserGroupJob> {




    /**
     * 根据岗位id查询用户数量
     * @param jobId
     * @return Long
     */
    Long findUserNumberByJobId(Long jobId);

    Boolean insert(UserGroupJob userGroupJob);

    Boolean update(UserGroupJob userGroupJob);

    Boolean deleteById(Long id);
}
