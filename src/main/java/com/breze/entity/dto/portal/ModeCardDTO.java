package com.breze.entity.dto.portal;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-05-04 14:04
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "模块接受对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class ModeCardDTO extends BaseDTO {

    private static final long serialVersionUID = -6370620972530575735L;

    @ApiModelProperty(value = "模块名称", name = "mode_title", example = "轮播图管理", notes = "模块名称")
    private String modeTitle;

    @ApiModelProperty(value = "模块简介", name = "mode_info", example = "轮播图模块功能信息管理", notes = "模块简介")
    private String modeInfo;

    @ApiModelProperty(value = "模块链接", name = "mode_link", example = "/portal/banner", notes = "模块链接")
    private String modeLink;

    @ApiModelProperty(value = "模块组件", name = "mode_component", example = "portal/BannerManage", notes = "模块组件")
    private String modeComponent;
}
