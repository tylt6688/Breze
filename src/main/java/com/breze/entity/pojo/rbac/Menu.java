package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 菜单对象
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_menu")
@ApiModel(value = "Menu", description = "菜单对象,sys_menu菜单表")
public class Menu implements Serializable {

    private static final long serialVersionUID = 51460849181143467L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "菜单ID", name = "id", example = "1", notes = "菜单ID")
    private Long id;

    @ApiModelProperty(value = "菜单父ID", name = "parentId", example = "0", notes = "父菜单ID，一级菜单为0")
    @NotNull(message = "上级菜单不能为空")
    private Long parentId;

    @ApiModelProperty(value = "菜单名称", name = "name", example = "系统管理", notes = "菜单名称")
    @NotBlank(message = "菜单名称不能为空")
    private String name;


    @ApiModelProperty(value = "菜单URL", name = "url", example = "/sys/menu", notes = "菜单URL")
    private String path;

    @ApiModelProperty(value = "授权编码", name = "perms", example = "user:list,user:create", notes = "授权编码,多个用逗号分隔，如：user:list,user:create)")
    @NotBlank(message = "菜单授权码不能为空")
    private String perms;

    @ApiModelProperty(value = "菜单组件", name = "component", example = "layout", notes = "菜单组件")
    private String component;

    @ApiModelProperty(value = "菜单类型", name = "type", example = "0", notes = "目录0,菜单1,按钮2")
    @NotNull(message = "菜单类型不能为空")
    private Integer type;

    @ApiModelProperty(value = "菜单图标", name = "icon", example = "fa fa-user", notes = "菜单图标")
    private String icon;

    @ApiModelProperty(value = "菜单排序", name = "orderNum", example = "1", notes = "菜单排序")
    private Integer orderNum;

    @ApiModelProperty(value = "状态", name = "state", example = "0", notes = "状态：0正常 1停用")
    private Integer state;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2020-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2020-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "多级子节点",name = "children",dataType = "List<Menu>")
    @TableField(exist = false)
    private List<Menu> children = new ArrayList<>();

}
