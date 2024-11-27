package com.breze.common.enums;


import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum NormalEnum {

    LOGIN_SUCCESS(601, "登录成功"),
    LOGOUT_SUCCESS(602, "退出成功");

    @EnumValue
    private final Integer normalCode;

    @EnumValue
    private final String normalMsg;


}
