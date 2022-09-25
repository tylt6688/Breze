package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:24
 * @Description 部门岗位服务接口
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface GroupJobService extends IService<GroupJob> {
    List<Job> findJobsByGroupId(Long id);

    int insert(GroupJob groupJob);

    int update(GroupJob groupJob);

    int deleteById(Long id);

}
