package com.breze.entity.vo.portal;

import com.baomidou.mybatisplus.annotation.TableField;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-05-04 11:34
 */
@ApiModel(description = "导航信息获取对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class NavbarVO extends BaseVO {

    @ApiModelProperty(value = "导航ID", name = "id", example = "1", notes = "导航ID")
    private Long id;

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

    @ApiModelProperty(value = "是否含有下级导航", name = "hasChildren", notes = "是否含有下级导航")
    private boolean hasChildren;

    @ApiModelProperty(value = "子导航", notes = "子导航")
    private List<NavbarVO> navbarChildren;
}
