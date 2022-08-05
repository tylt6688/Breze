package com.breze.common.event;

import com.breze.entity.pojo.logdo.HandleLog;
import org.springframework.context.ApplicationEvent;

/**
 * @Name: LogEvent.java
 * @Package: xyz.tylt.common.event
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:05
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
public class LogEvent extends ApplicationEvent {

    public LogEvent(HandleLog source) {
        super(source);
    }
}
