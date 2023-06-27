package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "ConfigDTO对象", description = "系统参数配置表")
public class ConfigDTO {

    @ApiModelProperty("配置项中文名")
    private String name;

    @ApiModelProperty("配置项键")
    private String key;

    @ApiModelProperty("配置项值")
    private String value;

    @ApiModelProperty("状态（开关）")
    private Integer state;

    @ApiModelProperty("创建人")
    private String createBy;

    @ApiModelProperty("备注")
    private String remark;
}
