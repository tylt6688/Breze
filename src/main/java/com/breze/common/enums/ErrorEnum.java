package com.breze.common.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 错误码枚举类，注意业务错误码不要与HTTP状态码相同
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Getter
@AllArgsConstructor
public enum ErrorEnum {

    /**
     * 密码错误错误码
     */
    ERROR_USERNAME_PASSWORD("用户名或密码错误", 1001),
    /**
     * 验证码错误错误码
     */
    VERIFY_CODE_ERROR("验证码错误", 1002),
    /**
     * 无权限错误码
     */
    NO_PERMISSION("无权限操作", 1003),
    /**
     * 凭证异常错误码
     */
    INCORRECT_CREDENTIALS("登录凭证失效", 1004),
    /**
     * 未认证用户错误码
     */
    NO_AUTHENTICATION("未认证用户", 1005),
    /**
     * 账户已被锁定错误码
     */
    LOCK_USER("账户已被锁定，请联系管理员", 1006),
    /**
     * 账户无效错误码
     */
    UNKNOWN_ACCOUNT("无效账户", 1007),
    /**
     * 未知错误错误码
     */
    UNKNOWN_ERROR("未知错误", 600),
    /**
     * 出现异常错误码
     */
    FIND_EXCEPTION("出现异常", 700),
    /**
     * 出现异常错误码
     */
    ERROR_OPERATION("错误操作", 800),
    /**
     * 非法操作错误码
     */
    ILLEGAL_OPERATION("非法操作", 900);


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
