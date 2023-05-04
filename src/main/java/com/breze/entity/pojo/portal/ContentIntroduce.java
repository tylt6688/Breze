package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-02-10 15:43
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("simple_content")
@ApiModel(value = "SimpleContent", description = "主体内容对象,SimpleContent主体内容表")
public class ContentIntroduce extends BaseEntity {

    private static final long serialVersionUID = 8822671337435221276L;

    @ApiModelProperty("oss表id")
    private String OssId;

    @ApiModelProperty("内容模块主标题")
    private String mainTitle;

    @ApiModelProperty("内容模块副标题")
    private String subtitle;

    @ApiModelProperty("内容模块简介")
    private String titleInfo;

    @ApiModelProperty("序号")
    private Long orderNum;

    @ApiModelProperty("指定路由跳转")
    private String routerPath;

    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty("图片")
    private String imgUrl;

    @ApiModelProperty("背景")
    private String backUrl;
}
