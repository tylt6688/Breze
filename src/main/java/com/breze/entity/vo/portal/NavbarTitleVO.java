package com.breze.entity.vo.portal;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2022-10-18 15:52
 */
@ApiModel(description = "导航展示对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class NavbarTitleVO extends BaseVO {

    @ApiModelProperty(value = "导航ID", name = "id", example = "1", notes = "导航ID")
    private Long id;
    @ApiModelProperty(value = "导航名称", name = "title_name", example = "首页", notes = "导航名称")
    private String titleName;
}
