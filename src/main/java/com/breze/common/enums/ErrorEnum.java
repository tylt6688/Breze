package com.breze.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/*
 * @Author tylt
 * @Description TODO 错误码枚举类，注意业务错误码不要与HTTP状态码相同
 * @Date 2022/2/5 11:57
 **/
@ToString
@AllArgsConstructor
public enum ErrorEnum {
    // 全局未知错误码
    UnknowError("未知错误", 600),
    // 违章操作错误码
    IllegalOperation("违章操作", 700),
    // 无权限错误码
    NoPermission("没有权限", 101),
    // 未登录用户错误码
    Unlogin("用户未登陆", 102),
    // 账户无效错误码
    UnknownAccount("账户无效", 103),
    // 密码错误错误码
    IncorrectCredentials("密码错误", 104),
    // 出现异常错误码
    FindException("出现异常", 800);

    @Getter
    private final String errorName;

    @Getter
    private final Integer errorCode;

    // 普通方法
    public static String getErrorName(int code) {
        for (ErrorEnum errorEnum : ErrorEnum.values()) {
            if (errorEnum.getErrorCode() == code) {
                return errorEnum.getErrorName();
            }
        }
        return null;
    }


}
