package com.breze.common.listener;

import com.breze.common.event.BrezeLogEvent;
import com.breze.entity.pojo.syslog.HandleLog;
import com.breze.service.syslog.HandleLogService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:06
 * @Description 日志监听器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Slf4j
@RequiredArgsConstructor
@Component
public class BrezeLogListener {

    private final HandleLogService handleLogService;

    @Async
    @Order
    @EventListener(BrezeLogEvent.class)
    public void saveSysLog(BrezeLogEvent event) {
        HandleLog handleLog = (HandleLog) event.getSource();
        handleLogService.save(handleLog);
    }
}
