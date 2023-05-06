package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * <p>
 * Banner表
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("tb_banner")
@ApiModel(value = "Banner", description = "轮播图对象,tb_banner表")
public class Banner extends BaseEntity {

    private static final long serialVersionUID = -725723282782099951L;

    @ApiModelProperty("轮播图地址")
    private String url;

    @ApiModelProperty("图片提示")
    private String alt;

    @ApiModelProperty("排序")
    private Integer orderNum;


}
