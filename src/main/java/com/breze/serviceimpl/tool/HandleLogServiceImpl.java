package com.breze.serviceimpl.tool;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.logdo.HandleLog;
import org.springframework.stereotype.Service;
import com.breze.mapper.rbac.LogMapper;
import com.breze.service.logservice.HandleLogService;

/**
 * @Name: LogServiceImpl.java
 * @Package: xyz.tylt.service.impl.rbac
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:57
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Service
public class HandleLogServiceImpl extends ServiceImpl<LogMapper, HandleLog> implements HandleLogService {

}
