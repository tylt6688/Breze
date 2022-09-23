package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.Job;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:23
 * @Description:
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface JobService extends IService<Job> {

    public List<Job> findAll();

    public Job findByJobId(Long id);

    public List<Job> findByJobName(String name);

    public int insert(Job job);

    public int update(Job job);

    public int deleteById(Long id);

}
