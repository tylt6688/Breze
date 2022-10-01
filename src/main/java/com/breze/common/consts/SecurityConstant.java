package com.breze.common.consts;

/**
 * @Author tylt6688
 * @Date 2022/8/10 11:57
 * @Description Spring Security 常量类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class SecurityConstant {

    // 白名单数组
    public static final String[] URL_WHITELIST = {
            "/wxlogin",
            "/login",
            "/logout",
            "/kaptcha",
            "/favicon.ico",
            "/swagger-ui/**",
            "/webjars/**",
            "/*/api-docs",
            "/swagger-resources/**",
            "/druid/**"
    };
    //  Breze-Portal-Get类型Api接口白名单数组
    public static final String[] PORTAL_WHITELIST = {
            // TODO 暂时放行全部，等待后期按 Get 接口白名单进行控制 [抄送人：tylt6688 待办人：ChenWX 2022-08-29]
            "/breze/portal/**",
            // 以下为放行举例，此行注释与上述 TODO 待阅读后下次提交删除
            "/breze/portal/banner/info/**",
            "/breze/portal/banner/select",
    };
}
