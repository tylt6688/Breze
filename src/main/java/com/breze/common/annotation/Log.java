package com.breze.common.annotation;

import java.lang.annotation.*;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 9:04
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description 用于AOP记录日志的注解
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {
    String value() default "";
}
