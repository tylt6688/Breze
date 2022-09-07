package com.breze.common.aspect;

import com.breze.common.event.LogEvent;
import com.breze.entity.pojo.logdo.HandleLog;
import com.breze.serviceimpl.SpringContextHolder;
import com.breze.utils.LogUtil;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:11
 * @Description 用于AOP记录日志的注解
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Aspect
@Component
public class LogAspect {

    @Around("@annotation(logs)")
    @SneakyThrows
    public Object around(ProceedingJoinPoint point, com.breze.common.annotation.Log logs) {

        String strClassName = point.getTarget().getClass().getName();

        String strMethodName = point.getSignature().getName();

        log.debug("[类名]:{},[方法]:{}", strClassName, strMethodName);

        HandleLog handleLogVo = LogUtil.getLog();

        handleLogVo.setTitle(logs.value());

        // 发送异步日志事件
        Long startTime = System.currentTimeMillis();

        Object obj;

        try {
            obj = point.proceed();
        } catch (Exception e) {
            handleLogVo.setType("-1");
            handleLogVo.setException(e.getMessage());
            throw e;
        } finally {
            Long endTime = System.currentTimeMillis();
            handleLogVo.setTime(String.valueOf(endTime - startTime));
            SpringContextHolder.publishEvent(new LogEvent(handleLogVo));
        }

        return obj;
    }
}