package com.breze.entity.vo.portal;

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
@ApiModel(description = "搜索框选项展示")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class ContentSelectVO extends BaseVO {

    @ApiModelProperty(value = "内容id", name = "id", example = "1", notes = "内容id")
    private Long id;

    @ApiModelProperty(value = "内容主标题", name = "main_title", notes = "内容主标题")
    private String mainTitle;
}
