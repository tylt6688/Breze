package com.breze.utils;

import cn.hutool.http.useragent.UserAgent;
import cn.hutool.http.useragent.UserAgentUtil;
import com.breze.common.consts.CharsetConstant;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 获取客户端系统信息工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */


@Log4j2
@UtilityClass
public class ClientUtil {

    private static final String UNKNOWN = "Unknown";


    /**
     * 获取操作系统平台
     *
     * @param request 请求
     * @return String 操作系统平台
     */
    public static String getPlatformName(HttpServletRequest request) {
        String uaStr = request.getHeader(CharsetConstant.USER_AGENT);
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getPlatform().toString();
    }


    /**
     * 获取浏览器名称
     *
     * @param request 请求
     * @return String 浏览器名称
     */
    public static String getBrowserName(HttpServletRequest request) {
        String uaStr = request.getHeader(CharsetConstant.USER_AGENT);
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getBrowser().toString();
    }

    /**
     * 获取浏览器版本
     *
     * @param request 请求
     * @return String 浏览器版本
     */
    public static String getBrowserVersion(HttpServletRequest request) {
        String uaStr = request.getHeader(CharsetConstant.USER_AGENT);
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        return userAgent.getVersion();
    }

    /**
     * 获取操作系统名称
     *
     * @param request 请求
     * @return String 操作系统名称
     */
    public static String getOperaSystemName(HttpServletRequest request) {
        String uaStr = request.getHeader(CharsetConstant.USER_AGENT);
        UserAgent userAgent = UserAgentUtil.parse(uaStr);
        String operaSystemName = userAgent.getOs().toString();
        if (operaSystemName.equals(UNKNOWN)) {
            return uaStr;
        }
        return operaSystemName;
    }


}
