package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

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
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_menu")
@ApiModel(value = "菜单表", description="菜单表")
public class Menu extends BaseEntity {

    private static final long serialVersionUID = 51460849181143467L;

    @ApiModelProperty(value = "菜单根ID", name = "Parent ID", example = "1", notes = "菜单根ID")
    private Long parentId;

    @ApiModelProperty(value = "菜单标题", name = "Title", example = "控制面板", notes = "菜单标题")
    private String title;

    @ApiModelProperty(value = "菜单名称", name = "Name", example = "控制面板", notes = "菜单名称")
    private String name;

    @ApiModelProperty(value = "图标", name = "Icon", example = "font-home", notes = "图标")
    private String icon;

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    private String path;

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    private String perms;

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    private String component;

    @ApiModelProperty(value = "类型", name = "Type", example = "", notes = "类型")
    private Integer type;

    @ApiModelProperty(value = "菜单状态", name = "State", example = "0", notes = "菜单状态")
    private Integer state;

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    @TableField(exist = false)
    private List<Menu> children = new ArrayList<>();

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    @TableField(exist = false)
    private String parentTitle;

}
