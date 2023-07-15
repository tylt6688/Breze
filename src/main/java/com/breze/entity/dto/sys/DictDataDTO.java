package com.breze.entity.dto.sys;

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
public class DictDataDTO {
    @ApiModelProperty(value = "字典id", name = "id", example = "1", notes = "字典id")
    private Long id;

    @ApiModelProperty(value = "字典类型", name = "type", example = "1", notes = "字典类型")
    private String dictType;

    @ApiModelProperty(value = "字典数据键", name = "dict_key", example = "男", notes = "字典数据键")
    private String dictKey;

    @ApiModelProperty(value = "字典数据值", name = "dict_value", example = "0", notes = "字典数据值")
    private Integer dictValue;

    @ApiModelProperty(value = "字典数据状态", name = "state", example = "0", notes = "字典数据状态")
    private Integer state;

    @ApiModelProperty(value = "字典数据描述", name = "remark", example = "男性", notes = "字典数据描述")
    private String remark;

    @ApiModelProperty(value = "排序号", name = "sort", example = "1", notes = "排序号")
    private Integer sort;

    @ApiModelProperty(value = "对应tag标签class名", name = "value_class", example = "primary", notes = "对应tag标签class名")
    private String valueClass;
}
