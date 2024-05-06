package com.breze.common.result;

import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.stand.FailedResult;
import com.breze.common.result.stand.SuccessResult;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.extern.log4j.Log4j2;

import java.util.HashMap;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 全局返回结果封装，为了前后端数据交互有一个统一约定的标准，一般有三个要素 1.是否成功 2.结果消息 3.具体数据
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "统一数据响应模板")
@Log4j2
@Data
public class Result<T> {

    @ApiModelProperty(value = "是否成功")
    private boolean success;

    @ApiModelProperty(value = "消息提示")
    private String message;

    @ApiModelProperty(value = "响应数据Map集合")
    private HashMap<String, T> result;

    private static final String DEFAULT_SUCCESS_MESSAGE = "操作成功";

    private static final String DEFAULT_FAILED_MESSAGE = "操作失败";




    /**
     * 请求成功消息模板
     *
     * @return SuccessResult<T> 请求成功范型模板对象
     */
    public static <T> Result<T> createSuccessMessage() {
        return createSuccessMessage(DEFAULT_SUCCESS_MESSAGE);
    }

    /**
     * 请求成功消息模板
     *
     * @param message 自定义提示消息
     * @return SuccessResult<T> 请求成功范型模板对象
     */
    public static <T> Result<T> createSuccessMessage(String message) {
        return createSuccessMessage(message, null);
    }

    /**
     * 请求成功消息模板
     *
     * @param message 自定义提示消息
     * @param data    响应数据
     * @return SuccessResult<T> 请求成功范型模板对象
     */
    public static <T> Result<T> createSuccessMessage(String message, T data) {
        return new SuccessResult<>(true, message, data);
    }


    /**
     * 请求失败消息模板
     *
     * @param errorEnum 错误枚举
     * @return FailedResult<T> 请求失败范型模板对象
     */
    public static <T> Result<T> createFailMessage(ErrorEnum errorEnum) {
        return createFailMessage(errorEnum, DEFAULT_FAILED_MESSAGE);
    }

    /**
     * 请求失败消息模板
     *
     * @param errorEnum 错误枚举
     * @param message   自定义失败信息
     * @return FailedResult<T> 请求失败范型模板对象
     */

    public static <T> Result<T> createFailMessage(ErrorEnum errorEnum, String message) {

        return createFailMessage(errorEnum, message, null);
    }

    /**
     * 请求失败消息模板
     *
     * @param errorEnum 错误枚举
     * @param message   自定义失败信息
     * @param data      响应数据
     * @return FailedResult<T> 请求失败范型模板对象
     */
    public static <T> Result<T> createFailMessage(ErrorEnum errorEnum, String message, T data) {
        return new FailedResult<>(false, message, errorEnum.getErrorCode(), errorEnum.getErrorName(), data);
    }

}
