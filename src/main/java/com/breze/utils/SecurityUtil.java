package com.breze.utils;

import com.breze.entity.bo.sys.LoginUserBO;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @Author tylt6688
 * @Date 2023/10/8 14:53
 * @Description Security 工具类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Log4j2
@UtilityClass
public class SecurityUtil {

    /**
     * 获取当前登录用户的用户名
     * @return String 用户名
     */
    public static String getUsername() {
        log.info("当前登录用户名{}", getAuthentication().getPrincipal());
        return (String) getAuthentication().getPrincipal();
    }

    /**
     * 获取当前登录用户对象
     * @return LoginUserBO 登录用户业务对象
     */
    public static LoginUserBO getLoginUserBO() {
        return (LoginUserBO) getAuthentication().getPrincipal();
    }

    /**
     * 获取当前登录用户的信息
     * @return Authentication 用户信息
     */
    public static Authentication getAuthentication() {
        log.info("当前登录用户信息{}", SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        return SecurityContextHolder.getContext().getAuthentication();
    }

    /**
     * 加密密码
     *
     * @param password 密码
     * @return String 加密后的密码
     */
    public static String encodePassword(String password) {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder.encode(password);
    }

    /**
     * 判断密码是否匹配
     *
     * @param oldPassword     原密码
     * @param encodedPassword 数据库中加密后的密码
     * @return Boolean 是否匹配
     */
    public static Boolean matchesPassword(String oldPassword, String encodedPassword) {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder.matches(oldPassword, encodedPassword);
    }
}
