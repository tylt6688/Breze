package com.breze.utils;

import cn.hutool.core.util.URLUtil;
import cn.hutool.extra.servlet.ServletUtil;
import cn.hutool.http.HttpUtil;
import com.breze.common.enums.LogEnum;
import com.breze.entity.pojo.logdo.HandleLog;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.Objects;

/*
 * @Author tylt
 * @Description 日志工具类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 **/
@Log4j2
@UtilityClass
public class LogUtil {

    /**
     * 获取业务日志logger
     */
    public static Logger getBussinessLogger() {
        return LoggerFactory.getLogger(LogEnum.BUSSINESS.getCategory());
    }

    /**
     * 获取平台日志logger
     */
    public static Logger getPlatformLogger() {
        return LoggerFactory.getLogger(LogEnum.PLATFORM.getCategory());
    }

    /**
     * 获取数据库日志logger
     */
    public static Logger getDBLogger() {
        return LoggerFactory.getLogger(LogEnum.DB.getCategory());
    }


    /**
     * 获取异常日志logger
     */
    public static Logger getExceptionLogger() {
        return LoggerFactory.getLogger(LogEnum.EXCEPTION.getCategory());
    }


    public HandleLog getLog() {
        //获取请求url,ip,httpMethod
        HttpServletRequest request = ((ServletRequestAttributes) Objects
                .requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
        HandleLog handleLog = new HandleLog();
        //log.setType(LogTypeEnum.NORMAL.getType());
        handleLog.setType("PC");
        handleLog.setRequestIp(ServletUtil.getClientIP(request));
        handleLog.setRequestPath(URLUtil.getPath(request.getRequestURI()));
        handleLog.setMethod(request.getMethod());
        handleLog.setBrowser(request.getHeader(HttpHeaders.USER_AGENT));
        handleLog.setParams(HttpUtil.toParams(request.getParameterMap()));
        handleLog.setCreateTime(LocalDateTime.now());
        return handleLog;
    }
}
