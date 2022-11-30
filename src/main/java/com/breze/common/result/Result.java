package com.breze.common.result;

import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.stand.FailedResult;
import com.breze.common.result.stand.SuccessResult;
import lombok.extern.log4j.Log4j2;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 全局返回结果封装，为了前后端数据交互有一个统一约定的标准，一般有三个要素 1.是否成功 2.结果消息 3.具体数据
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
public class Result {


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
     * @param message , data
     */
    public static Result createSuccessMessage(String message, Object data) {

        SuccessResult successResult = new SuccessResult();
        successResult.setSuccess(true)
                .setMessage(message);
        if (data != null) {
            successResult.getResult().put("data", data);
        }
        return successResult;
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
     * @param errorEnum , message , data
     */
    public static Result createFailMessage(ErrorEnum errorEnum, String message, Object data) {

        FailedResult failedResult = new FailedResult();
        failedResult.setSuccess(false)
                .setErrorCode(errorEnum.getErrorCode())
                .setErrorName(errorEnum.getErrorName())
                .setMessage(message)
                .getResult().put("data", data);
        return failedResult;

    }


}
