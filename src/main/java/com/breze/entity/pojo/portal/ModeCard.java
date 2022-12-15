package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 模块展示表
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("mode_card")
@ApiModel(value = "ModeCard", description = "模块卡片对象,mode_card模块展示表")
public class ModeCard implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("功能模块Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty("模块名字")
    private String modeTitle;

    @ApiModelProperty("模块介绍")
    private String modeInfo;

    @ApiModelProperty("模块链接")
    private String modeLink;

    @ApiModelProperty("页面组件")
    private String modeComponent;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
