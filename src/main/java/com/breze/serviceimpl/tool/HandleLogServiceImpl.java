package com.breze.serviceimpl.tool;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.logdo.HandleLog;
import org.springframework.stereotype.Service;
import com.breze.mapper.rbac.LogMapper;
import com.breze.service.logservice.HandleLogService;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:57
 * @Description 操作日志服务类
 * @Copyright(c) 2022 , 青枫网络工作室

 */
@Service
public class HandleLogServiceImpl extends ServiceImpl<LogMapper, HandleLog> implements HandleLogService {

}
