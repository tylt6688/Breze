package com.breze.common.enums;

/*
 * @Author tylt
 * @Description 日志枚举类
 * @Date 2022/2/5 11:57
 **/

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

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
    private final String category;


}

