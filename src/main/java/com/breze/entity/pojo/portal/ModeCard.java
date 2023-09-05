package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * <p>
 * 模块展示表
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("tb_mode_card")
@ApiModel(value = "ModeCard", description = "模块卡片对象,mode_card模块展示表")
public class ModeCard extends BaseEntity {


    private static final long serialVersionUID = -7260918479466654077L;

    @ApiModelProperty("模块名字")
    private String modeTitle;

    @ApiModelProperty("模块介绍")
    private String modeInfo;

    @ApiModelProperty("模块链接")
    private String modeLink;

    @ApiModelProperty("页面组件")
    private String modeComponent;


}
