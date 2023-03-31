package com.breze.common.exception;

import org.springframework.security.access.AccessDeniedException;

/**
 * @Author tylt6688
 * @Date 2022/11/29 15:28
 * @Description 权限拒绝异常处理机制
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class BrezeDeniedException extends AccessDeniedException {
    private static final long serialVersionUID = 4010485580843212041L;

    public BrezeDeniedException(String msg) {
        super(msg);
    }
}
