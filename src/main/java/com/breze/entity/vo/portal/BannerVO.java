package com.breze.entity.vo.portal;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-05-04 15:12
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "轮播图展示对象")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class BannerVO extends BaseVO {

    private static final long serialVersionUID = -8083088524513911523L;

    @ApiModelProperty(value = "轮播图id", name = "id", example = "1", notes = "轮播图id")
    private Long id;

    @ApiModelProperty(value = "轮播图地址", name = "url", notes = "轮播图地址")
    private String url;

    @ApiModelProperty(value = "图片提示", name = "alt", example = "天空之岛", notes = "图片提示")
    private String alt;

    @ApiModelProperty(value = "排序", name = "order_num", example = "0", notes = "排序")
    private Integer orderNum;
}
