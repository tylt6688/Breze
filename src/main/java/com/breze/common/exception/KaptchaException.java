package com.breze.common.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 验证码异常处理机制
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class KaptchaException extends AuthenticationException {

    private static final long serialVersionUID = 6287359047312917618L;

    public KaptchaException(String msg) {
        super(msg);
    }
}
