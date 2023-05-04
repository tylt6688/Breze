package com.breze.entity.vo.portal;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-05-04 13:43
 */
@ApiModel(description = "模块展示对象")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class ModeCardVO extends BaseVO {

    @ApiModelProperty(value = "模块id", name = "id", example = "1", notes = "模块id")
    private Long id;

    @ApiModelProperty(value = "模块名称", name = "mode_title", example = "轮播图管理", notes = "模块名称")
    private String modeTitle;

    @ApiModelProperty(value = "模块简介", name = "mode_info", example = "轮播图模块功能信息管理", notes = "模块简介")
    private String modeInfo;

    @ApiModelProperty(value = "模块链接", name = "mode_link", example = "/portal/banner", notes = "模块链接")
    private String modeLink;

    @ApiModelProperty(value = "模块组件", name = "mode_component", example = "portal/BannerManage", notes = "模块组件")
    private String modeComponent;
}
