package com.breze.common.result.stand;

import cn.hutool.core.map.MapUtil;
import com.breze.common.result.Result;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.HashMap;

/**
 * @Author tylt6688
 * @Date 2022/11/25 11:25
 * @Description 失败结果实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(description = "请求失败响应模板")
public class FailedResult<T> extends Result<T> {

    @ApiModelProperty(value = "错误码")
    private Integer errorCode;

    @ApiModelProperty(value = "错误名称")
    private String errorName;

    private static final String DATA_TAG = "data";

    public FailedResult(Boolean success, String message, Integer errorCode, String errorName, T data) {
        super.setResult((HashMap<String, T>) MapUtil.builder(DATA_TAG, data).build());
        super.setSuccess(success);
        super.setMessage(message);

        this.errorCode = errorCode;
        this.errorName = errorName;
    }


}
