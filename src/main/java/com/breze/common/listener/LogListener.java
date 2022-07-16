package com.breze.common.listener;

import com.breze.common.event.LogEvent;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import com.breze.entity.pojo.logpage.Log;
import com.breze.service.tool.LogService;

/**
 * @Name: LogListener.java
 * @Package: xyz.tylt.common.listener
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:06
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Slf4j
@RequiredArgsConstructor
@Component
public class LogListener {

    private final LogService logService;

    @Async
    @Order
    @EventListener(LogEvent.class)
    public void saveSysLog(LogEvent event) {
        Log log = (Log) event.getSource();
        logService.save(log);
    }
}
