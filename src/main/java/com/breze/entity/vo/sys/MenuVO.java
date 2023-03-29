package com.breze.entity.vo.sys;

import com.breze.entity.pojo.rbac.Menu;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.List;
/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 菜单信息VO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class MenuVO {

    @ApiModelProperty(value = "菜单ID", name = "id", example = "1", notes = "菜单ID")
    private Long id;

    @ApiModelProperty(value = "菜单英文标题", name = "name", example = "System", notes = "菜单英文名称")
    private String name;

    @ApiModelProperty(value = "菜单中文标题", name = "title", example = "系统管理", notes = "菜单中文名称")
    private String title;

    @ApiModelProperty(value = "菜单URL", name = "url", example = "/sys/menu", notes = "菜单URL")
    private String path;

    @ApiModelProperty(value = "授权编码", name = "perms", example = "user:list,user:create", notes = "授权编码,多个用逗号分隔，如：user:list,user:create)")
    private String perms;

    @ApiModelProperty(value = "菜单组件", name = "component", example = "layout", notes = "菜单组件")
    private String component;

    @ApiModelProperty(value = "菜单类型", name = "type", example = "0", notes = "目录0,菜单1,按钮2")
    private Integer type;

    @ApiModelProperty(value = "菜单图标", name = "icon", example = "fa fa-user", notes = "菜单图标")
    private String icon;

    @ApiModelProperty(value = "菜单排序", name = "orderNum", example = "1", notes = "菜单排序")
    private Integer orderNum;

    @ApiModelProperty(value = "状态", name = "state", example = "0", notes = "状态：0正常 1停用")
    private Integer state;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2020-03-01 12:00:00", notes = "创建时间")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2020-03-01 12:00:00", notes = "更新时间")
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "多级子节点",name = "children",dataType = "List<Menu>")
    private List<Menu> children;

    @ApiModelProperty(value = "父级菜单名称",name = "parentName",dataType = "String")
    private String parentName;
}
