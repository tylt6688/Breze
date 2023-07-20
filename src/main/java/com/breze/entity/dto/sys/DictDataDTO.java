package com.breze.entity.dto.sys;

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
 * @create 2023-04-20 16:03
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "字典数据接收对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class DictDataDTO extends BaseDTO {

    private static final long serialVersionUID = -3143694978643104553L;

    @ApiModelProperty(value = "字典类型", name = "type", example = "1", notes = "字典类型",dataType = "String")
    private String dictType;

    @ApiModelProperty(value = "字典数据键", name = "dict_key", example = "男", notes = "字典数据键",dataType = "String")
    private String dictKey;

    @ApiModelProperty(value = "字典数据值", name = "dict_value", example = "0", notes = "字典数据值",dataType = "String")
    private Integer dictValue;

    @ApiModelProperty(value = "字典数据状态", name = "state", example = "0", notes = "字典数据状态",dataType = "Integer")
    private Integer state;

    @ApiModelProperty(value = "字典数据描述", name = "remark", example = "男性", notes = "字典数据描述",dataType = "String")
    private String remark;

    @ApiModelProperty(value = "对应tag标签class名", name = "value_class", example = "primary", notes = "对应tag标签class名",dataType = "String")
    private String valueClass;
}
