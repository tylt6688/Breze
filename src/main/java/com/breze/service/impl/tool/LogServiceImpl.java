package com.breze.service.impl.tool;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.logpage.Log;
import org.springframework.stereotype.Service;
import com.breze.mapper.rbac.LogMapper;
import com.breze.service.tool.LogService;

/**
 * @Name: LogServiceImpl.java
 * @Package: xyz.tylt.service.impl.rbac
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:57
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Service
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements LogService {

}
