package com.breze.common.enums;


import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum NormalEnum {
    LOGIN_SUCCESS("登录成功", 601),
    LOGOUT_SUCCESS("退出成功", 602)
    ;

    @EnumValue
    private final String normalMsg;
    @EnumValue
    private final Integer normalCode;
}
