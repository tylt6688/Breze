package com.breze.utils;

import cn.hutool.core.util.StrUtil;
import com.maxmind.geoip2.DatabaseReader;
import lombok.extern.log4j.Log4j2;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;

/**
 * @Author tylt
 * @Description IP地址工具类
 * @Date 2022/3/11 9:11
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
public class IPUtil {

    /**
     * 获取IP地址
     *
     * @param request
     * @return
     */
    public static String getIpAddress(HttpServletRequest request) {
        String ip = null;
        try {
            ip = request.getHeader("x-forwarded-for");
            if (StrUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("Proxy-Client-IP");
            }
            if (StrUtil.isEmpty(ip) || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("WL-Proxy-Client-IP");
            }
            if (StrUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_CLIENT_IP");
            }
            if (StrUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            }
            if (StrUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getRemoteAddr();
            }
        } catch (Exception e) {
            log.error("IPUtils ERROR ", e);
        }
        return ip;
    }

    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description: 获得国家
     */
    public static String getCountry(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getCountry().getNames().get("zh-CN");
    }

    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description: 获得省份
     */
    public static String getProvince(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getMostSpecificSubdivision().getNames().get("zh-CN");
    }

    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description: 获得城市
     */
    public static String getCity(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getCity().getNames().get("zh-CN");
    }

    /**
     * 获得详细地址
     *
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     */
    public static String getAddress(DatabaseReader reader, String ip) throws Exception {
        String country = reader.city(InetAddress.getByName(ip)).getCountry().getNames().get("zh-CN");
        String province = reader.city(InetAddress.getByName(ip)).getMostSpecificSubdivision().getNames().get("zh-CN");
        String city = reader.city(InetAddress.getByName(ip)).getCity().getNames().get("zh-CN");
        String f = "-";
        return country + f + province + f + city;
    }

    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description: 获得经度
     */
    public static Double getLongitude(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getLocation().getLongitude();
    }

    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description: 获得纬度
     */
    public static Double getLatitude(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getLocation().getLatitude();
    }
}