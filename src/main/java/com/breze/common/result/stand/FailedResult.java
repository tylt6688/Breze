package com.breze.common.result.stand;

import com.breze.common.result.Result;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @Author tylt6688
 * @Date 2022/11/25 11:25
 * @Description 失败结果实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Accessors(chain = true)
@ApiModel(description= "请求失败响应模板")
public class FailedResult extends Result{

    private static final long serialVersionUID = 1L;
    @ApiModelProperty(value = "是否成功")
    private boolean success;
    @ApiModelProperty(value = "消息提示")
    private String message;
    @ApiModelProperty(value = "错误码")
    private Integer errorCode;
    @ApiModelProperty(value = "错误名称")
    private String errorName;


}
