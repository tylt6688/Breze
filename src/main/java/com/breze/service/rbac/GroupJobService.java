package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:24
 * @Description:
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface GroupJobService extends IService<GroupJob> {
    public List<Job> findJobsByGroupId(Long id);

    public int insert(GroupJob groupJob);

    public int update(GroupJob groupJob);

    public int deleteById(Long id);

}
