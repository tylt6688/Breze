package com.breze.common.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 错误码枚举类，注意业务错误码不要与HTTP状态码相同
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Getter
@ToString
@AllArgsConstructor
public enum ErrorEnum {

    /**
     * 密码错误错误码
     */
    ErrorUsernamePassword("用户名或密码错误", 1001),
    /**
     * 验证码错误错误码
     */
    VerifyCodeError("验证码错误", 1002),

    /**
     * 无权限错误码
     */
    NoPermission("无权限操作", 1003),
    /**
     * JWT凭证异常用户错误码
     */
    IncorrectCredentials("登录凭证失效", 1004),
    /**
     * 未认证用户错误码
     */
    NoAuthentication("未认证用户", 1005),

    /**
     * 账户已被锁定错误码
     */
    LockUser("账户已被锁定，请联系管理员", 1006),

    /**
     * 账户无效错误码
     */
    UnknownAccount("无效账户", 1007),

    UnknownError("未知错误", 600),
    /**
     * 出现异常错误码
     */
    FindException("出现异常", 700),
    /**
     * 出现异常错误码
     */
    ErrorOperation("错误操作", 800),
    /**
     * 非法操作错误码
     */
    IllegalOperation("非法操作", 900);


    @EnumValue
    private final String errorName;


    @EnumValue
    private final Integer errorCode;

    /**
     * 根据错误码获取错误信息
     *
     * @return ErrorName
     */
    public static String getErrorName(int code) {
        for (ErrorEnum errorEnum : ErrorEnum.values()) {
            if (errorEnum.getErrorCode() == code) {
                return errorEnum.getErrorName();
            }
        }
        return null;
    }


}
