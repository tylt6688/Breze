package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.time.LocalDateTime;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * <p>
 * 导航连接表
 * </p>
 *
 * @author leochan
 * @since 2022-10-02
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("tb_navbar")
@ApiModel(value = "Navbar对象", description = "导航连接表")
public class Navbar implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("导航标题id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long flag;

    @ApiModelProperty("标题名称")
    private String titleName;

    @ApiModelProperty("跳转路径")
    private String titleUrl;

    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
