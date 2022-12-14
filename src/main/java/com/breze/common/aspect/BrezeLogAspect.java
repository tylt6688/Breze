package com.breze.common.aspect;

import cn.hutool.core.util.URLUtil;
import cn.hutool.extra.servlet.ServletUtil;
import cn.hutool.http.HttpUtil;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.event.BrezeLogEvent;
import com.breze.entity.pojo.brezelog.HandleLog;
import com.breze.utils.SpringContextHolder;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.Objects;

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

        //获取请求url,ip,httpMethod
        HttpServletRequest request = ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
        HandleLog handleLog = new HandleLog();
        handleLog.setTitle(brezeLog.value())
                .setRequestIp(ServletUtil.getClientIP(request))
                .setRequestPath(URLUtil.getPath(request.getRequestURI()))
                .setMethod(request.getMethod())
                .setClientType(request.getHeader(HttpHeaders.USER_AGENT))
                .setParams(HttpUtil.toParams(request.getParameterMap()))
                .setCreateTime(LocalDateTime.now());

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