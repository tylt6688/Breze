package com.breze.entity.vo.portal;

import com.baomidou.mybatisplus.annotation.OrderBy;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.portal.DetailContent;
import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-05-04 14:20
 */
@ApiModel(description = "protal详细内容展示对象")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class DetailContentVO extends BaseVO {

    @ApiModelProperty(value = "内容id", name = "id", example = "1", notes = "内容id")
    private Long id;

    @ApiModelProperty(value = "SimpleContent表id", name = "content_id", notes = "SimpleContent表id")
    private Long contentId;

    @ApiModelProperty(value = "oss文件", name = "oss_id", notes = "oss文件")
    private Long ossId;

    @ApiModelProperty(value = "内容主标题", name = "main_title", notes = "内容主标题")
    private String mainTitle;

    @ApiModelProperty(value = "内容副标题", name = "subtitle", notes = "内容副标题")
    private String subTitle;

    @ApiModelProperty(value = "内容简介", name = "title_info", notes = "内容简介")
    private String info;

    @ApiModelProperty(value = "上一级标题", name = "parent_id", notes = "上一级标题")
    private Long parentId;

    @ApiModelProperty(value = "图片地址", name = "img_url", notes = "图片地址")
    private String imgUrl;

    @ApiModelProperty(value = "排序号", name = "sort", example = "1", notes = "排序号")
    private Integer orderNum;

    @ApiModelProperty(value = "子模块",notes = "子模块")
    private List<DetailContent> children;
}
