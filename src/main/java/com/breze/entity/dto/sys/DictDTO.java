package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-04-20 16:03
 */
@ApiModel(description = "字典数据接收对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class DictDTO extends BaseDTO {

    private static final long serialVersionUID = -4724983896729687860L;

    @ApiModelProperty(value = "字典名称", name = "name", example = "用户性别", notes = "字典名称",dataType = "String")
    private String name;

    @ApiModelProperty(value = "字典类型", name = "type", example = "sys_user_sex", notes = "字典类型",dataType = "String")
    private String type;

    @ApiModelProperty(value = "字典状态", name = "state", example = "0", notes = "字典状态",dataType = "Integer")
    private Integer state;

    @ApiModelProperty(value = "字典描述", name = "remark", example = "描述", notes = "字典描述",dataType = "String")
    private String remark;
}
