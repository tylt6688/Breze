package com.breze.common.constant;

/*
 * @Author tylt
 * @Description //TODO 日志枚举类
 * @Date 2022/2/5 11:57
 **/

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@ToString
@AllArgsConstructor
public enum LogEnum {

    /**
     * 本地日志枚举
     */
    BUSSINESS("bussiness"),

    PLATFORM("platform"),

    DB("db"),

    EXCEPTION("exception");

    @Getter
    private String category;


}

