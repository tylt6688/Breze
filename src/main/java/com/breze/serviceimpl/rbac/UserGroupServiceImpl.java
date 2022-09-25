package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.pojo.rbac.UserGroup;
import com.breze.entity.pojo.rbac.UserJob;
import com.breze.mapper.rbac.JobMapper;
import com.breze.mapper.rbac.UserGroupMapper;
import com.breze.mapper.rbac.UserJobMapper;
import com.breze.service.rbac.UserGroupService;
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
public class UserGroupServiceImpl extends ServiceImpl<UserGroupMapper, UserGroup> implements UserGroupService {


}
