package com.breze.entity.vo.portal;

import com.baomidou.mybatisplus.annotation.TableField;
import com.breze.entity.pojo.portal.ContentIntroduce;
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
@ApiModel(description = "protal内容展示对象")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class ContentIntroduceVo extends BaseVO {

    @ApiModelProperty(value = "内容id", name = "id", example = "1", notes = "内容id")
    private Long id;

    @ApiModelProperty(value = "oss文件", name = "oss_id", notes = "oss文件")
    private String OssId;

    @ApiModelProperty(value = "内容主标题", name = "main_title", notes = "内容主标题")
    private String mainTitle;

    @ApiModelProperty(value = "内容副标题", name = "subtitle", notes = "内容副标题")
    private String subtitle;

    @ApiModelProperty(value = "内容简介", name = "title_info", notes = "内容简介")
    private String titleInfo;

    @ApiModelProperty(value = "排序", name = "order_num", notes = "排序")
    private Long orderNum;

    @ApiModelProperty(value = "跳转路径", name = "router_path", notes = "跳转路径")
    private String routerPath;

    @ApiModelProperty(value = "上一级标题", name = "parent_id", notes = "上一级标题")
    private Long parentId;

    @ApiModelProperty(value = "图片地址", name = "img_url", notes = "图片地址")
    private String imgUrl;

    @ApiModelProperty(value = "背景地址", name = "back_utl", notes = "背景地址")
    private String backUrl;

    @ApiModelProperty(value = "子模块",notes = "子模块")
    private List<ContentIntroduce> children;
}
