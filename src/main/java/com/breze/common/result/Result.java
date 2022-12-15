package com.breze.common.result;

import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.stand.FailedResult;
import com.breze.common.result.stand.SuccessResult;
import lombok.Data;
import lombok.extern.log4j.Log4j2;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 全局返回结果封装，为了前后端数据交互有一个统一约定的标准，一般有三个要素 1.是否成功 2.结果消息 3.具体数据
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Data
public class Result<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 响应数据集合
     */
    private Map<String, T> result = new HashMap<>();

    /**
     * 空参请求成功消息模板
     *
     * @return 成功消息
     */
    public static <T> Result<T> createSuccessMessage() {

        return createSuccessMessage("请求成功", null);
    }

    /**
     * 请求成功消息模板
     *
     * @param message 自定义提示消息
     * @return 成功消息
     */

    public static <T> Result<T> createSuccessMessage(String message) {

        return createSuccessMessage(message, null);
    }

    /**
     * 空参请求成功消息模板
     *
     * @param message 自定义提示消息
     * @param data    响应数据
     * @return 成功消息
     */

    public static <T> Result<T> createSuccessMessage(String message, T data) {

        SuccessResult successResult = new SuccessResult();
        successResult.setSuccess(true).setMessage(message);
        if (data != null) {
            successResult.getResult().put("data", data);
        }
        return successResult;
    }


    /**
     * 请求失败消息模板
     *
     * @param errorEnum 错误枚举
     * @return 失败消息
     */
    public static <T> Result<T> createFailMessage(ErrorEnum errorEnum) {

        return createFailMessage(errorEnum, "请求失败");
    }

    /**
     * 请求失败消息模板
     *
     * @param errorEnum 错误枚举
     * @param message   自定义失败信息
     * @return 失败消息
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
     * @return 失败消息
     */
    public static <T> Result<T> createFailMessage(ErrorEnum errorEnum, String message, T data) {

        FailedResult failedResult = new FailedResult();
        failedResult.setSuccess(false).setErrorCode(errorEnum.getErrorCode()).setErrorName(errorEnum.getErrorName()).setMessage(message);
        if (data != null) {
            failedResult.getResult().put("data", data);
        }
        return failedResult;

    }

}
