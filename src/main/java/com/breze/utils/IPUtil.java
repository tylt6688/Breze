package com.breze.utils;

import cn.hutool.core.util.StrUtil;
import com.maxmind.geoip2.DatabaseReader;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;

/**
 * @Author tylt6688
 * @Date 2022/3/11 9:11
 * @Description IP地址工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@UtilityClass
public class IPUtil {

    /**
     * 获取IP地址
     *
     * @param request 网络请求
     * @return IP
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
            if (StrUtil.isEmpty(ip) || "0:0:0:0:0:0:0:1".equalsIgnoreCase(ip)) {
                ip = "127.0.0.1";
            }
        } catch (Exception e) {
            log.error("IPUtils ERROR ", e);
        }
        return ip;
    }

    /**
     * 判断是否为内网IP
     *
     * @param ip IP地址
     * @return boolean
     */
    public static boolean isInternalIP(String ip) {
        // 匹配10.x.x.x、172.16.x.x~172.31.x.x、192.168.x.x
        String pattern = "^10\\..*|^172\\.(1[6-9]|2[0-9]|3[0-1])\\..*|^192\\.168\\..*";
        return ip.matches(pattern);
    }


    /**
     * @param reader
     * @param ip
     * @return
     * @throws Exception
     * @description 获得国家
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
     * 获得城市
     *
     * @param reader
     * @param ip
     * @return String
     */
    public static String getCity(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getCity().getNames().get("zh-CN");
    }

    /**
     * 获得详细地址
     *
     * @param reader
     * @param ip
     * @return String
     */
    public static String getAddress(DatabaseReader reader, String ip) {
        try {
            String country = reader.city(InetAddress.getByName(ip)).getCountry().getNames().get("zh-CN");
            String province = reader.city(InetAddress.getByName(ip)).getMostSpecificSubdivision().getNames().get("zh-CN");
            String city = reader.city(InetAddress.getByName(ip)).getCity().getNames().get("zh-CN");
            String f = "-";
            return country + f + province + f + city;
        } catch (Exception e) {
            e.printStackTrace();
            return "未知地址";
        }


    }

    /**
     * 获得经度
     * @param reader
     * @param ip
     * @return Double
     */
    public static Double getLongitude(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getLocation().getLongitude();
    }

    /**
     * 获得纬度
     * @param reader
     * @param ip
     * @return Double

     */
    public static Double getLatitude(DatabaseReader reader, String ip) throws Exception {
        return reader.city(InetAddress.getByName(ip)).getLocation().getLatitude();
    }
}