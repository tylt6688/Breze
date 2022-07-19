package com.breze.common.aspect;

import com.breze.common.event.LogEvent;
import com.breze.entity.pojo.logpojo.Log;
import com.breze.utils.LogUtil;
import com.breze.serviceimpl.SpringContextHolder;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.aspectj.lang.ProceedingJoinPoint;

/**
 * @Name: LogAspect.java
 * @Package: xyz.tylt.common.aspect
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:11
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Aspect
@Slf4j
@Component
public class LogAspect {

    @Around("@annotation(logs)")
    @SneakyThrows
    public Object around(ProceedingJoinPoint point, com.breze.common.annotation.Log logs) {
        String strClassName = point.getTarget().getClass().getName();
        String strMethodName = point.getSignature().getName();
        log.debug("[类名]:{},[方法]:{}", strClassName, strMethodName);

        Log logVo = LogUtil.getLog();

        logVo.setTitle(logs.value());

        // 发送异步日志事件
        Long startTime = System.currentTimeMillis();
        Object obj;

        try {
            obj = point.proceed();
        }
        catch (Exception e) {
            logVo.setType("-1");
            logVo.setException(e.getMessage());
            throw e;
        }
        finally {
            Long endTime = System.currentTimeMillis();
            logVo.setTime(String.valueOf(endTime - startTime));
            SpringContextHolder.publishEvent(new LogEvent(logVo));
        }

        return obj;
    }
}