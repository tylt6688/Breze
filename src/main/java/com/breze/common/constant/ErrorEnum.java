package com.breze.common.constant;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/*
 * @Author tylt
 * @Description //TODO 错误码枚举类，这里注意业务错误码不要与HTTP状态码相同
 * @Date 2022/2/5 11:57
 **/
@ToString
@AllArgsConstructor
public enum ErrorEnum {
    /**
     * 错误枚举
     */

    UnknowError("未知错误", 600),

    IllegalOperation("违章操作", 700),

    NoPermission("没有权限", 101),

    Unlogin("用户未登陆", 102),

    UnknownAccount("账户无效", 103),

    IncorrectCredentials("密码错误", 104),

    FindException("出现异常", 800);

    @Getter
    private final String errorName;
    @Getter
    private final int errorCode;


    // 普通方法
    public static String getErrorName(int code) {
        for (ErrorEnum c : ErrorEnum.values()) {
            if (c.getErrorCode() == code) {
                return c.getErrorName();
            }
        }
        return null;
    }


}
