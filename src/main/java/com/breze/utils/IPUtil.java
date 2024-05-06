package com.breze.utils;

import com.breze.common.consts.SystemConstant;
import com.breze.entity.bo.sys.IPBO;
import com.maxmind.geoip2.DatabaseReader;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
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

    public static final String UNKNOWN = "unknown";

    private final DatabaseReader reader;

    static {
        try {
            File file = new File(new File("geolite2city.mmdb").getAbsolutePath());
            reader = new DatabaseReader.Builder(file).build();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static IPBO getIpAddressInfo(HttpServletRequest request) {
        IPBO ipBO = new IPBO();
        String ip = IPUtil.getIpAddress(request);
        ipBO.setIp(ip);
        if (IPUtil.isInternalIP(ip)) {
            ipBO.setAddress("内网地址");
        } else if (ip.equals(SystemConstant.SERVER_IP)) {
            ipBO.setAddress("服务器地址");
        } else {
            ipBO.setAddress(IPUtil.getAddress(IPUtil.getIpAddress(request)));
        }

        log.info("当前用户IP地址:---{}", ip);
        return ipBO;

    }


    /**
     * 获取IP地址
     *
     * @param request 网络请求
     * @return IP 地址
     */
    public static String getIpAddress(HttpServletRequest request) {

        String ipAddress = request.getHeader("X-Forwarded-For");
        if (ipAddress == null || ipAddress.isEmpty() || UNKNOWN.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.isEmpty() || UNKNOWN.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.isEmpty() || UNKNOWN.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ipAddress == null || ipAddress.isEmpty() || UNKNOWN.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ipAddress == null || ipAddress.isEmpty() || UNKNOWN.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();
        }
        if (ipAddress.equals("0:0:0:0:0:0:0:1")) {
            ipAddress = "127.0.0.1";
        }

        return ipAddress;
    }

    /**
     * 判断是否为内网IP
     *
     * @param ip IP地址
     * @return boolean true/false
     */
    public static boolean isInternalIP(String ip) {
        // 匹配网段 10.x.x.x、172.16.x.x~172.31.x.x、192.168.x.x
        String pattern = "^10\\..*|^172\\.(1[6-9]|2[0-9]|3[0-1])\\..*|^192\\.168\\..*";
        return ip.matches(pattern);
    }


    /**
     * @param ip IP地址
     * @return String 国家
     */
    public static String getCountry(String ip) {
        try {
            return reader.city(InetAddress.getByName(ip)).getCountry().getNames().get("zh-CN");
        } catch (Exception e) {
            return "未知国家";
        }
    }

    /**
     * @param ip IP地址
     * @return String 省份
     */
    public static String getProvince(String ip) {

        try {
            return reader.city(InetAddress.getByName(ip)).getMostSpecificSubdivision().getNames().get("zh-CN");
        } catch (Exception e) {

            return "未知省份";
        }

    }

    /**
     * 获得城市
     *
     * @param ip IP地址
     * @return String 城市
     */
    public static String getCity(String ip) {
        try {
            return reader.city(InetAddress.getByName(ip)).getCity().getNames().get("zh-CN");
        } catch (Exception e) {

            return "未知城市";
        }
    }

    /**
     * 获得IP详细地址
     *
     * @param ip IP地址
     * @return String 详细地址
     */
    public static String getAddress(String ip) {
        String country = IPUtil.getCountry(ip);
        String province = IPUtil.getProvince(ip);
        String city = IPUtil.getCity(ip);
        return country + "-" + province + "-" + city;
    }

    /**
     * 获得经度
     *
     * @param ip IP地址
     * @return Double 经度
     */
    public static Double getLongitude(String ip) {
        try {
            return reader.city(InetAddress.getByName(ip)).getLocation().getLongitude();
        } catch (Exception e) {

            return 0.0;
        }
    }

    /**
     * 获得纬度
     *
     * @param ip IP地址
     * @return Double 纬度
     */
    public static Double getLatitude(String ip) {
        try {
            return reader.city(InetAddress.getByName(ip)).getLocation().getLatitude();
        } catch (Exception e) {

            return 0.0;
        }
    }
}