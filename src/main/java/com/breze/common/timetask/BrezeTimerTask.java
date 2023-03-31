package com.breze.common.timetask;

import com.breze.service.syslog.HandleLogService;
import com.breze.service.syslog.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 定时任务
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Component
public class BrezeTimerTask {

    @Autowired
    LoginLogService loginLogService;

    @Autowired
    HandleLogService handleLogService;

//    @Scheduled(cron = "0/15 * * * * ?") // 每隔15s触发
//    public void test(){
//        System.out.println("定时任务执行");
//    }

    /**
     * 每天凌晨触发清理30天之前的日志记录数据
     */
    @Scheduled(cron = "0 0 0 * * ?") // 每天凌晨触发
    public void cleanLogData() {
        LocalDate threshold = LocalDate.now().minusDays(30);
        LocalDateTime thresholdDateTime = threshold.atStartOfDay();
        loginLogService.clearByDate(thresholdDateTime);
        handleLogService.clearByDate(thresholdDateTime);
    }
}
