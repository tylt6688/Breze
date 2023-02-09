package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

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
public class MainContent extends BaseEntity {


    private static final long serialVersionUID = 8822671337435221276L;
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

    @TableField(exist = false)
    private String imgUrl;
}
