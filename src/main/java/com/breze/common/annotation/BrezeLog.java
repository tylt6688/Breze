package com.breze.common.annotation;

import java.lang.annotation.*;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:04
 * @Description 用于AOP记录日志的自定义注解
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface BrezeLog {

    /**
     * 日志标题
     */
    String value() default "";

    /**
     * 是否保存（默认保存）
     */
    boolean saveFlag() default true;
}
