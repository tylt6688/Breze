package com.breze.common.result;

import com.breze.common.enums.ErrorEnum;
import lombok.Data;
import lombok.extern.log4j.Log4j2;

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
public class Result {

    private boolean success;

    private String message;

    private Integer errorCode;

    private String errorName;

    private Map<String, Object> result = new HashMap<>();


    /**
     * 空参请求成功消息模板
     */
    public static Result createSuccessMessage() {

        return Result.createSuccessMessage("请求成功", null);
    }

    /**
     * 请求成功消息模板
     *
     * @param message
     */
    public static Result createSuccessMessage(String message) {

        return Result.createSuccessMessage(message, null);
    }

    /**
     * 空参请求成功消息模板
     *
     * @param message, data
     */
    public static Result createSuccessMessage(String message, Object data) {

        Result resultBox = new Result();
        resultBox.success = true;
        resultBox.message = message;
        if (data != null) {
            resultBox.result.put("data", data);
        }
        return resultBox;
    }


    /**
     * 请求失败消息模板
     *
     * @param errorEnum
     */
    public static Result createFailMessage(ErrorEnum errorEnum) {

        return Result.createFailMessage(errorEnum, "请求失败");
    }

    /**
     * 请求失败消息模板
     *
     * @param errorEnum , message
     */

    public static Result createFailMessage(ErrorEnum errorEnum, String message) {

        return Result.createFailMessage(errorEnum, message, null);
    }

    /**
     * 请求失败消息模板
     *
     * @param errorEnum , message ,data
     */
    public static Result createFailMessage(ErrorEnum errorEnum, String message, Object data) {

        Result resultBox = new Result();
        resultBox.success = false;
        resultBox.errorCode = errorEnum.getErrorCode();
        resultBox.errorName = errorEnum.getErrorName();
        resultBox.message = message;
        resultBox.result.put("data", data);
        return resultBox;
    }


    public Result addData(String key, Object value) {
        this.result.put(key, value);
        return this;
    }

}
