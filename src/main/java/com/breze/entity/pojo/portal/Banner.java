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
@ApiModel(value = "Banner对象", description = "Banner表")
public class Banner implements Serializable {

    private static final long serialVersionUID = 7888387863124417724L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String url;

    private String alt;

    private Integer orderNum;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;


}
