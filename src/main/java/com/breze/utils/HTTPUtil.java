package com.breze.utils;

import cn.hutool.http.HttpUtil;
import lombok.experimental.UtilityClass;

import java.util.Map;
/**
 * @Author tylt6688
 * @Date 2023/9/26 10:05
 * @Description HTTP请求工具类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@UtilityClass
public class HTTPUtil {

    /**
     * 向指定 URL 发送GET请求
     *
     * @param url 发送请求的 URL
     * @return 响应结果
     */
    public static String sendGet(String url) {
        return HttpUtil.get(url);
    }

    /**
     * 向指定 URL 发送GET请求
     *
     * @param url     发送请求的 URL
     * @param timeout 超时时间
     * @return 响应结果
     */
    public static String sendGet(String url, Integer timeout) {
        return HttpUtil.get(url, timeout);
    }

    /**
     * 向指定 URL 发送GET请求
     *
     * @param url     请求地址
     * @param param   请求参数 Map
     * @param timeout 超时时间
     */
    public static String sendGet(String url, Map<String, Object> param, Integer timeout) {
        return HttpUtil.get(url, param, timeout);
    }

    /**
     * 向指定 URL 发送POST请求
     *
     * @param url   发送请求的 URL
     * @param param 请求参数
     * @return 响应结果
     */
    public static String sendPost(String url, Map<String, Object> param, Integer timeout) {
        return HttpUtil.post(url, param, timeout);
    }


}
