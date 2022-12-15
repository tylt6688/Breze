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
 * 主体内容表
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("main_content")
@ApiModel(value = "MainContent", description = "主体内容对象,main_content主体内容表")
public class MainContent implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("主页内容模块id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty("oss表id")
    private String ossId;

    @ApiModelProperty("内容模块标题")
    private String titleName;

    @ApiModelProperty("内容模块简介")
    private String titleInfo;

    @ApiModelProperty("序号")
    private Long orderNum;

    @ApiModelProperty("指定路由跳转")
    private String routerPath;

    @ApiModelProperty("按钮信息")
    private String buttonInfo;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @TableField(exist = false)
    private String imgUrl;
}
