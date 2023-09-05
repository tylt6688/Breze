package com.breze.entity.dto.portal;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-05-04 13:08
 */
@ApiModel(description = "导航菜单接收对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class NavbarDTO extends BaseDTO {

    @ApiModelProperty(value = "导航类别", name = "flag", example = "0", notes = "导航类别")
    private Long flag;

    @ApiModelProperty(value = "排序", name = "order_num", example = "1", notes = "排序")
    private Long orderNum;

    @ApiModelProperty(value = "导航名称", name = "title_name", example = "首页", notes = "导航名称")
    private String titleName;

    @ApiModelProperty(value = "链接地址", name = "title_url", example = "/", notes = "链接地址")
    private String titleUrl;

    @ApiModelProperty(value = "上一级导航", name = "parent_id", example = "0", notes = "上一级导航")
    private Long parentId;
}
