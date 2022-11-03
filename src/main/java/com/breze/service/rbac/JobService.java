package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Job;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:23
 * @Description 岗位服务接口
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface JobService extends IService<Job> {

    List<Job> findAll();

    Job findByJobId(Long id);

    List<Job> findByJobName(String name);

    Boolean insert(Job job);

    Boolean update(Job job);

    Boolean deleteById(Long id);

}
