package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.OrderBy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-09-05 14:40
 * @Description 详细内容
 * @Copyright(c) 2023, 青枫网络工作室
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("tb_details_content")
@ApiModel(value = "detailsContent", description = "详细内容对象,detailsContentt详细内容表")
public class DetailContent extends BaseEntity {

    @ApiModelProperty("SimpleContent表id")
    private Long contentId;

    @ApiModelProperty("oss表id")
    private Long ossId;

    @ApiModelProperty("内容模块主标题")
    private String mainTitle;

    @ApiModelProperty("内容模块副标题")
    private String subTitle;

    @ApiModelProperty("内容模块简介")
    private String info;

    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty("排序号")
    private Integer orderNum;

    @ApiModelProperty("图片")
    @TableField(exist = false)
    private String imgUrl;

    @TableField(exist = false)
    private List<String> InfoList;
}
