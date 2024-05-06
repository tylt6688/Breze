package com.breze.common.consts;

/**
 * @Author tylt6688
 * @Date 2022/8/10 11:57
 * @Description Spring Security 安全常量类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

public class SecurityConstant {

    public static final String ALL = "*";
    public static final String ALL_PATH = "/**";
    public static final String LOGIN_PATH = "/breze/login";

    /**
     * Authorization 常量，方便请求头中获取
     */
    public static final String AUTHORIZATION = "Authorization";
    /**
     * Bearer Token 常量，此处字符串结尾空格必须携带
     */
    public static final String BREZE_TOKEN_PREFIX = "Bearer ";

    public static final String BREZE_APP_TOKEN_PREFIX = "BrezeApp";
    /**
     * Breze [系统白名单接口常量数组]
     */
    public static final String[] URL_WHITELIST = {
            LOGIN_PATH,
            "/login",
            "/logout",
            "/captcha",
            "/favicon.ico",
            "/swagger-ui/**",
            "/webjars/**",
            "/*/api-docs",
            "/swagger-resources/**",
            "/druid/**",
            "/core/config/**",
            "/breze/test/**",
            "/webSocket/**",
    };


    /**
     * Breze-Portal [Get类型API接口白名单数组]
     */
    public static final String[] PORTAL_WHITELIST = {
            // TODO 暂时放行全部，等待后期按 Get 接口白名单进行控制 [抄送人：tylt6688 待办人：ChenWX 2022-08-29]
            "/breze/portal/**",
    };
}
