package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-07-04 19:42
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@TableName("sys_dict_data")
@ApiModel(value = "字典数据表", description = "字典数据表")
public class DictData extends BaseEntity {

    private static final long serialVersionUID = -6461030754234589431L;
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


    @ApiModelProperty(value = "对应tag标签class名", name = "value_class", example = "primary", notes = "对应tag标签class名")
    private String valueClass;
}
