package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author tylt6688
 * @Date 2023/7/20 22:36
 * @Description 系统配置 DTO
 * @Copyright(c) 2023 , 青枫网络工作室
 */

@EqualsAndHashCode(callSuper = true)
@Data
@ApiModel(value = "ConfigDTO对象", description = "系统参数配置表")
public class ConfigDTO extends BaseDTO {

    private static final long serialVersionUID = 4028932115503608978L;

    @ApiModelProperty(value = "配置项中文名", example = "系统名称", notes = "配置项中文名", dataType = "String", required = true)
    private String configName;

    @ApiModelProperty(value = "配置项键", example = "system.name", notes = "配置项键", dataType = "String", required = true)
    private String configKey;

    @ApiModelProperty(value = "配置项值", example = "青枫网络工作室", notes = "配置项值", dataType = "String", required = true)
    private String configValue;

    @ApiModelProperty(value = "状态（开关）", example = "1", notes = "状态（开关）", dataType = "Integer", required = true)
    private Integer configState;

    @ApiModelProperty(value = "创建人", example = "admin", notes = "创建人", dataType = "String", required = true)
    private String createBy;

    @ApiModelProperty(value = "备注", example = "系统名称", notes = "备注", dataType = "String")
    private String remark;
}
