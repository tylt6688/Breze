package com.breze.common.result.stand;

import com.breze.common.result.Result;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @Author tylt6688
 * @Date 2022/11/25 11:25
 * @Description 失败结果实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ApiModel(description = "请求失败响应模板")
public class FailedResult<T> extends Result<T> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "是否成功")
    private boolean success;

    @ApiModelProperty(value = "消息提示")
    private String message;

    @ApiModelProperty(value = "错误码")
    private Integer errorCode;

    @ApiModelProperty(value = "错误名称")
    private String errorName;

    public FailedResult(Boolean success, String message, Integer errorCode, String errorName, T data) {
        super.getResult().put("data", data);
        this.success = success;
        this.message = message;
        this.errorCode = errorCode;
        this.errorName = errorName;
    }


}
