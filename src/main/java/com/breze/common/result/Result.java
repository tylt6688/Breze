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
     * 请求成功消息模板
     */
    public static Result createSuccessMessage() {

        return Result.createSuccessMessage("请求成功",null);
    }

    public static Result createSuccessMessage(String message) {

        return Result.createSuccessMessage(message, null);
    }

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
     */
    public static Result createFailMessage(ErrorEnum err) {

        return Result.createFailMessage(err, "请求失败");
    }

    public static Result createFailMessage(ErrorEnum err, String message) {

        return Result.createFailMessage(err, message, null);
    }


    public static Result createFailMessage(ErrorEnum err, String message, Object data) {

        Result resultBox = new Result();
        resultBox.success = false;
        resultBox.errorCode = err.getErrorCode();
        resultBox.errorName = err.getErrorName();
        resultBox.message = message;
        resultBox.result.put("data", data);
        return resultBox;
    }


    public Result addData(String key, Object value) {
        this.result.put(key, value);
        return this;
    }

}
