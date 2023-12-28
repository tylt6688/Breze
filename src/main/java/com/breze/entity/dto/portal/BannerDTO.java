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
 * @create 2023-05-04 15:21
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "轮播图接收对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class BannerDTO extends BaseDTO {

    private static final long serialVersionUID = -4467669542754173606L;

    @ApiModelProperty(value = "轮播图地址", name = "url", notes = "轮播图地址")
    private String url;

    @ApiModelProperty(value = "图片提示", name = "alt", example = "天空之岛", notes = "图片提示")
    private String alt;

    @ApiModelProperty(value = "排序", name = "order_num", example = "0", notes = "排序")
    private Integer orderNum;
}
