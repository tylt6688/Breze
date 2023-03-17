package com.breze.common.result.stand;

import com.breze.common.result.Result;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Author tylt6688
 * @Date 2022/11/25 11:25
 * @Description 成功结果实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Accessors(chain = true)
@EqualsAndHashCode(callSuper=false)
@ApiModel(description= "请求成功响应模板")
public class SuccessResult extends Result {
    private static final long serialVersionUID = 1L;
    @ApiModelProperty(value = "是否成功")
    private boolean success;
    @ApiModelProperty(value = "消息提示")
    private String message;

}
