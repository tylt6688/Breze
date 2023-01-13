package com.breze.entity.vo.sys;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class TabVO {

    @ApiModelProperty(value = "菜单英文名称", name = "name", example = "System", notes = "菜单名称")
    private String name;

    @ApiModelProperty(value = "菜单中文名称", name = "name", example = "系统管理", notes = "菜单名称")
    private String title;

    @ApiModelProperty(value = "菜单URL", name = "url", example = "/sys/menu", notes = "菜单URL")
    private String path;

    @ApiModelProperty(value = "父级菜单名称",name = "parentTitle",dataType = "String")
    private String parentTitle;
}
