package com.breze.service.syslog.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.syslog.HandleLog;
import com.breze.mapper.syslog.HandleLogMapper;
import com.breze.service.syslog.HandleLogService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

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

    @Override
    public Boolean clearByDate(LocalDateTime localDateTime) {
        LambdaQueryWrapper<HandleLog> wrapper = new LambdaQueryWrapper<HandleLog>().le(HandleLog::getCreateTime, localDateTime);
        return this.removeBatchByIds(this.list(wrapper));
    }
}
