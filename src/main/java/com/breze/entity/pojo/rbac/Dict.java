package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-04-20 15:12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@TableName("sys_dict")
@ApiModel(value = "字典表", description = "字典表")
public class Dict extends BaseEntity {

    @ApiModelProperty(value = "字典名称", name = "Name", example = "用户字典", notes = "字典名称")
    private String name;

    @ApiModelProperty(value = "字典类型", name = "Type", example = "1", notes = "字典类型")
    private String type;

    @ApiModelProperty(value = "字典状态", name = "State", example = "0", notes = "字典状态")
    private Integer state;

    @ApiModelProperty(value = "字典描述", name = "Remark", example = "xxx", notes = "字典描述")
    private String remark;

}
