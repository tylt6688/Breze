package com.breze.entity.vo.sys;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-04-20 16:25
 */
@ApiModel(description = "字典表展示对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class DictVO extends BaseVO {

    private static final long serialVersionUID = 6600452663835204751L;

    @ApiModelProperty(value = "字典id", name = "id", example = "1", notes = "字典id")
    private Long id;

    @ApiModelProperty(value = "字典名称", name = "name", example = "用户性别", notes = "字典名称")
    private String name;

    @ApiModelProperty(value = "字典类型", name = "type", example = "sys_user_sex", notes = "字典类型")
    private String type;

    @ApiModelProperty(value = "字典状态", name = "state", example = "0", notes = "字典状态")
    private Integer state;

    @ApiModelProperty(value = "字典描述", name = "remark", example = "", notes = "字典描述")
    private String remark;
}
