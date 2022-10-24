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
 * 导航连接表
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Data
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

    @ApiModelProperty("标题类型")
    private Long flag;

    @ApiModelProperty("序号")
    private Long orderNum;

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

    @TableField(exist = false)
    private boolean hasChildren;
}
