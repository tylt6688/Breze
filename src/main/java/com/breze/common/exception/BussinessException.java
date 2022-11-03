package com.breze.common.exception;

import com.breze.common.enums.ErrorEnum;
import lombok.Data;

/**
 * @Author tylt6688
 * @Date 2022/11/2 16:40
 * @Description 业务异常处理机制
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class BussinessException extends RuntimeException{

    private ErrorEnum errorEnum;

    private String message;

    public BussinessException(ErrorEnum errorEnum) {
        this.errorEnum = errorEnum;
        this.message = errorEnum.getErrorName();
    }


    public BussinessException(ErrorEnum errorEnum, String message) {
        this.errorEnum = errorEnum;
        this.message = message;
    }






}
