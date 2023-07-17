package com.breze.entity.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author tylt6688
 * @Date 2023/7/16 23:01
 * @Description 用于继承的传输实体基类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Data
public class BaseDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "版本号", name = "version", example = "1", notes = "版本号")
    private Integer version;
}
