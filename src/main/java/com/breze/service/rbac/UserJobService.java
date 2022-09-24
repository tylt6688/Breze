package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserJob;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/11 9:42
 * @Description:
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface UserJobService extends IService<UserJob> {

    public List<Job> findJobsByUserId(Long id);

    public Long findUserCountByJobId(Long id);

    public int insert(UserJob userJob);

    public int update(UserJob userJob);

    public int deleteById(Long id);
}
