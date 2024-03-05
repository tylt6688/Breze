package com.breze.common.aspect;

import cn.hutool.core.util.URLUtil;
import cn.hutool.http.HttpUtil;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.event.BrezeLogEvent;
import com.breze.entity.pojo.syslog.HandleLog;
import com.breze.utils.*;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:11
 * @Description 用于AOP记录日志的切片
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Aspect
@Component
public class BrezeLogAspect {

    @Around("@annotation(brezeLog)")
    @SneakyThrows
    public Object around(ProceedingJoinPoint point, BrezeLog brezeLog) {

        String strClassName = point.getTarget().getClass().getName();

        String strMethodName = point.getSignature().getName();

        log.debug("[类名]:---{},[方法]:---{}", strClassName, strMethodName);

        // 获取请求 url,ip,httpMethod
        HttpServletRequest request = BrezeUtil.getHttpServletRequest();
        HandleLog handleLog = new HandleLog();
        handleLog.setTitle(brezeLog.value())
                .setRequestIp(IPUtil.getIpAddress(request))
                .setRequestPath(URLUtil.getPath(request.getRequestURI()))
                .setMethod(request.getMethod())
                .setClientType(ClientUtil.getPlatformName(request))
                .setParams(HttpUtil.toParams(request.getParameterMap()))
                .setCreateTime(LocalDateTime.now())
                .setOperator(SecurityUtil.getUsername());

        // 发送异步日志事件
        Long startTime = System.currentTimeMillis();
        Object obj;
        try {
            obj = point.proceed();
        } catch (Exception e) {
            handleLog.setException(e.getMessage());
            throw e;
        } finally {
            Long endTime = System.currentTimeMillis();
            handleLog.setTime(String.valueOf(endTime - startTime));
            if (brezeLog.saveFlag()) {
                SpringContextHolder.publishEvent(new BrezeLogEvent(handleLog));
            }
        }

        return obj;
    }
}