package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author LGX
 * @Date 2023/3/26 15:57
 * @Description update by tylt6688
 * @Copyright(c) 2023, 清枫网络工作室
 */
@EqualsAndHashCode(callSuper = true)
@ApiModel(description = "岗位数据传输对象")
@Data
public class JobDTO extends BaseDTO {

    private static final long serialVersionUID = 7372711195905397509L;

    @ApiModelProperty(required = true, value = "岗位名称", name = "name", example = "技术研发团队经理", notes = "岗位名称")
    private String name;

    @ApiModelProperty(required = true, value = "状态", name = "state", example = "0", notes = "状态：0正常 1停用")
    private Integer state;

    @ApiModelProperty(value = "备注", name = "remark", example = "隶属技术部", notes = "备注")
    private String remark;
}

