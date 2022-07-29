package com.breze.common.result;

import com.breze.common.enums.ErrorEnum;
import lombok.Data;
import lombok.extern.log4j.Log4j2;

import java.util.HashMap;
import java.util.Map;

/*
 * @Author tylt
 * @Description //TODO 全局返回结果封装，修改借鉴于之前qust亲爱的李老师
 * @Date 2022/2/5 11:57
 * 结果封装是为了前后端数据交互有一个统一约定的标准，一般有三个要素 1.是否成功 2.结果消息 3.具体数据
 **/

@Log4j2
@Data
public class Result {

    private boolean success;

    private String message;

    private Integer errorCode;

    private String errorName;

    private Map<String, Object> result = new HashMap<>();


    /*
     * 请求成功消息模板
     */
    public static Result createSuccessMessage() {

        return Result.createSuccessMessage("", null);
    }

    public static Result createSuccessMessage(Object object) {

        return Result.createSuccessMessage("", object);
    }

    public static Result createSuccessMessage(WebModel webModel) {

        return Result.createSuccessMessage("", webModel);
    }

    public static Result createSuccessMessage(String message, WebModel webModel) {

        Result resultBox = new Result();
        resultBox.success = true;
        resultBox.message = message;

        if (webModel != null) {
            resultBox.result.put("data", webModel.getData());
            resultBox.result.put("ps", webModel.getPs());
            resultBox.result.put("sp", webModel.getSp());
            resultBox.result.put("tp", webModel.getTp());
            resultBox.result.put("tc", webModel.getTc());
        }

        return resultBox;
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

    /*
     * 请求失败消息模板
     */

    public static Result createFailureMessage(ErrorEnum err) {

        return Result.createFailureMessage(err, "", null);
    }

    public static Result createFailureMessage(ErrorEnum err, String message) {

        return Result.createFailureMessage(err, message, null);
    }


    public static Result createFailureMessage(ErrorEnum err, String message, Object data) {

        Result resultBox = new Result();
        resultBox.success = false;
        resultBox.errorName = err.getErrorName();
        resultBox.errorCode = err.getErrorCode();
        resultBox.message = message;
        resultBox.result.put("data", data);
        return resultBox;
    }


    public Result addData(String key, Object value) {
        this.result.put(key, value);
        log.info(this + " 我是Message里面的addData方法");
        return this;
    }

}
