package com.breze.entity.pojo.tool;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 对象存储表
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("tb_ossfile")
@ApiModel(value = "OssFile对象", description = "对象存储表")
public class OssFile implements Serializable {

    private static final long serialVersionUID = 4904930249407221901L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String fileName;

    private String filUrl;

    private Long userId;

    private Integer state;

    private String type;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @TableField(exist = false)
    private String trueName;


}
