package com.breze.common.enums;


import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 日志枚举类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ToString
@AllArgsConstructor
public enum LogEnum {

    // 业务日志枚举
    BUSSINESS("bussiness"),
    // 系统日志枚举
    PLATFORM("platform"),
    // 数据库日志枚举
    DB("db"),
    // 系统异常日志枚举
    EXCEPTION("exception");

    @Getter
    @EnumValue
    private final String category;


}

