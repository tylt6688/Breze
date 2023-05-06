package com.breze.utils;

import cn.hutool.http.useragent.UserAgent;
import cn.hutool.http.useragent.UserAgentUtil;
import lombok.experimental.UtilityClass;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 服务器端 Http请求工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */


@UtilityClass
public class ClientUtil {
    /**
     * 获取操作平台
     *
     * @param request 请求
     * @return String
     */
    public static String getPlatformName(HttpServletRequest request) {
        String uaStr = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getPlatform().toString();
    }


    /**
     * 获取浏览器名字
     *
     * @param request 请求
     * @return String
     */
    public static String getBrowserName(HttpServletRequest request) {
        String uaStr = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getBrowser().toString();
    }

    /**
     * 获取浏览器版本
     *
     * @param request 请求
     * @return String
     */
    public static String getBrowserVersion(HttpServletRequest request) {
        String uaStr = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getVersion();
    }

    /**
     * 获取操作系统名称
     *
     * @param request 请求
     * @return String
     */
    public static String getOperaSystemName(HttpServletRequest request) {
        String uaStr = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getOs().toString();
    }


}
