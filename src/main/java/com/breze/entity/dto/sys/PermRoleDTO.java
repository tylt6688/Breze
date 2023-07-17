package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author tylt6688
 * @Date 2023/4/6 14:54
 * @Description 分配角色 DTO
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@ApiModel(description = "分配角色数据传输对象")
@Data
public class PermRoleDTO implements Serializable {

    private static final long serialVersionUID = -1564631352724243750L;

    @ApiModelProperty(required = true, value = "用户ID数组", name = "userIds", example = "[1,2,3]", notes = "用户ID数组")
    private Long[] userIds;

    @ApiModelProperty(required = true, value = "角色ID数组", name = "roleIds", example = "[1,2,3]", notes = "角色ID数组")
    private Long[] roleIds;
}
