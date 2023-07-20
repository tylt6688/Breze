package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 菜单信息 DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "菜单数据传输对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MenuDTO extends BaseDTO {

    private static final long serialVersionUID = 8275860509489827862L;


    @ApiModelProperty(required = true, value = "菜单父ID", name = "parentId", example = "0", notes = "父菜单ID，一级菜单为0")
    @NotNull(message = "上级菜单不能为空")
    private Long parentId;

    @ApiModelProperty(required = true, value = "菜单名称", name = "title", example = "系统管理", notes = "菜单名称")
    @NotBlank(message = "菜单名称不能为空")
    private String title;

    @ApiModelProperty(required = true, value = "菜单组件名称", name = "name", example = "Menu", notes = "菜单组件名称")
    private String name;

    @ApiModelProperty(required = true, value = "授权编码", name = "perms", example = "user:list,user:create", notes = "授权编码,多个用逗号分隔，如：user:list,user:create)")
    @NotBlank(message = "授权码不能为空")
    private String perms;

    @ApiModelProperty(required = true, value = "菜单图标", name = "icon", example = "fa fa-user", notes = "菜单图标")
    private String icon;

    @ApiModelProperty(required = true, value = "菜单类型", name = "type", example = "0", notes = "目录0,菜单1,按钮2")
    @NotNull(message = "菜单类型不能为空")
    private Integer type;

    @ApiModelProperty(required = true, value = "菜单排序", name = "sort", example = "1", notes = "菜单排序")
    @NotNull(message = "排序号不能为空")
    private Integer sort;

    @ApiModelProperty(required = true, value = "状态", name = "state", example = "0", notes = "状态：0正常 1停用")
    @NotNull(message = "状态不能为空")
    private Integer state;

    @ApiModelProperty(required = true, value = "菜单URL", name = "url", example = "/sys/menu", notes = "菜单URL")
    private String path;

    @ApiModelProperty(required = true, value = "菜单组件地址", name = "component", example = "layout/Menu", notes = "菜单组件地址")
    private String component;


}
