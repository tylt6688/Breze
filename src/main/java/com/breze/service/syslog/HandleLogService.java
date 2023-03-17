package com.breze.service.syslog;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.syslog.HandleLog;

import java.time.LocalDateTime;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:57
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public interface HandleLogService extends IService<HandleLog> {
    Boolean clearByDate(LocalDateTime localDateTime);

}
