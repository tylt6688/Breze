package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @Author tylt6688
 * @Date 2022/12/16 14:36
 * @Description 角色信息 DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleDTO implements Serializable {
    private static final long serialVersionUID = 7099645733115709911L;

    @ApiModelProperty(value = "角色ID", name = "id", example = "1", notes = "角色ID")
    private Long id;

    @NotBlank(message = "角色身份不能为空")
    @ApiModelProperty(value = "角色名称", name = "name", example = "admin", notes = "角色名称")
    private String name;

    @NotBlank(message = "权限码不能为空")
    @ApiModelProperty(value = "权限码", name = "code", example = "user:list,user:create", notes = "权限码,多个用逗号分隔，如：user:list,user:create)")
    private String code;

    @ApiModelProperty(value = "备注", name = "remark", example = "超级管理员", notes = "备注")
    private String remark;

    @ApiModelProperty(value = "状态", name = "state", example = "1", notes = "0:禁用 1:启用")
    private Integer state;
}
