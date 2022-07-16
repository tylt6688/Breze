package com.breze.common.exception;

import org.springframework.security.core.AuthenticationException;

/*
 * @Author tylt
 * @Description //TODO 验证码异常处理机制
 * @Date 2022/2/5 11:57
 **/
public class KaptchaException extends AuthenticationException {

    public KaptchaException(String msg) {
        super(msg);
    }
}
