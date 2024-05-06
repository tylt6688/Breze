package com.breze.entity.dto.portal;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-09-13 17:25
 * @Description 内容接受对象
 * @Copyright(c) 2023, 青枫网络工作室
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "内容接受对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class DetailContentDTO extends BaseDTO {

    private static final long serialVersionUID = 5370615934046887386L;

    @ApiModelProperty(value = "content", name = "content_Id", notes = "content")
    private Long contentId;

    @ApiModelProperty(value = "oss文件", name = "oss_id", notes = "oss文件")
    private Long ossId;

    @ApiModelProperty(value = "内容主标题", name = "main_title", notes = "内容主标题")
    private String mainTitle;

    @ApiModelProperty(value = "内容副标题", name = "subtitle", notes = "内容副标题")
    private String subTitle;

    @ApiModelProperty(value = "内容简介", name = "info", notes = "内容简介")
    private String info;

    @ApiModelProperty(value = "排序", name = "order_num", notes = "排序")
    private Long orderNum;

    @ApiModelProperty(value = "上一级标题", name = "parent_id", notes = "上一级标题")
    private Long parentId;
}
