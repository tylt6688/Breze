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
     * 无权限错误码
     */
    NoPermission("无权限操作", 101),
    /**
     * 未认证用户错误码
     */
    NoAuthentication("未认证用户", 102),
    /**
     * 账户无效错误码
     */
    UnknownAccount("账户无效", 103),
    /**
     * JWT凭证异常用户错误码
     */
    IncorrectCredentials("用户凭证错误", 104),
    /**
     * 密码错误错误码
     */
    ErrorUsernamePassword("用户名或密码错误", 105),
    /**
     * 账户已被锁定错误码
     */
    LockUser("账户已被锁定，请联系管理员", 106),

    VerifyCodeError("验证码错误", 107),

    UnknownError("未知错误", 600),
    /**
     * 违章操作错误码
     */
    IllegalOperation("违章操作", 700),
    /**
     * 出现异常错误码
     */
    FindException("出现异常", 800);


    @EnumValue
    private final String errorName;


    @EnumValue
    private final Integer errorCode;

    /**
     * 根据错误码获取错误信息
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
