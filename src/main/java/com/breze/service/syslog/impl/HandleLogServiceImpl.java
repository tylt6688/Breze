package com.breze.service.syslog.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.syslog.HandleLog;
import com.breze.mapper.syslog.HandleLogMapper;
import com.breze.service.syslog.HandleLogService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Service
public class HandleLogServiceImpl extends ServiceImpl<HandleLogMapper, HandleLog> implements HandleLogService {

}
