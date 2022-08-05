package com.breze.common.listener;

import com.breze.common.event.LogEvent;
import com.breze.entity.pojo.logdo.HandleLog;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import com.breze.service.logservice.HandleLogService;

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

    private final HandleLogService handleLogService;

    @Async
    @Order
    @EventListener(LogEvent.class)
    public void saveSysLog(LogEvent event) {
        HandleLog handleLog = (HandleLog) event.getSource();
        handleLogService.save(handleLog);
    }
}
