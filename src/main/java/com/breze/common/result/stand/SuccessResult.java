package com.breze.common.result.stand;

import cn.hutool.core.map.MapUtil;
import com.breze.common.result.Result;
import io.swagger.annotations.ApiModel;

import java.util.HashMap;

/**
 * @Author tylt6688
 * @Date 2022/11/25 11:25
 * @Description 成功结果实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "请求成功响应模板")
public class SuccessResult<T> extends Result<T> {
    private static final String DATA_TAG = "data";

    public SuccessResult(Boolean success, String message, T data) {
        super.setResult((HashMap<String, T>) MapUtil.builder(DATA_TAG, data).build());
        super.setSuccess(success);
        super.setMessage(message);
    }


}
