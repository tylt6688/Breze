package com.breze.common.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @Author tylt6688
 * @Date 2022/11/15 11:10
 * @Description JWT异常处理机制
 * @Copyright(c) 2022 , 青枫网络工作室
 */

public class BrezeJwtException extends AuthenticationException {

    private static final long serialVersionUID = 3568160350285437518L;

    public BrezeJwtException(String msg) {
        super(msg);
    }
}
