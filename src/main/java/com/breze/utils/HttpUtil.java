package com.breze.utils;

import lombok.experimental.UtilityClass;
import org.springframework.http.*;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 服务器端 Http请求工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */


@UtilityClass
public class HttpUtil {

    /**
     * 向目的URL发送post请求
     *
     * @param url    目的url
     * @param params 发送的参数
     * @return AdToutiaoJsonTokenData
     */
    public static String sendRequest(HttpMethod httpMethod, String url, MultiValueMap<String, String> params) {
        RestTemplate client = new RestTemplate();
        // 新建Http头，add方法可以添加参数
        HttpHeaders headers = new HttpHeaders();
        // 以表单的方式提交
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        // 将请求头部和参数合成一个请求
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, headers);
        // 执行HTTP请求，将返回的结构使用String类格式化（可设置为对应返回值格式的类）
        ResponseEntity<String> response = client.exchange(url, httpMethod, requestEntity, String.class);
        return response.getBody();
    }

}
