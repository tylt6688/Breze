package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author LGX
 * @Date 2023/3/26 16:34
 * @Description update by tylt6688
 * @Copyright(c) 2023, 清枫网络工作室
 */
@ApiModel(description = "团队数据传输对象")
@Data
public class GroupDTO extends BaseDTO {

    private static final long serialVersionUID = -749234510745047704L;

    @ApiModelProperty(required = true, value = "团队ID", name = "id", example = "1", notes = "团队ID")
    private Long id;

    @ApiModelProperty(required = true, value = "团队父ID", name = "parentId", example = "0", notes = "父级ID，一级ID为0")
    private Long parentId;

    @ApiModelProperty(required = true, value = "岗位名称", name = "name", example = "实习生", notes = "岗位名称")
    private String job;

    @ApiModelProperty(required = true, value = "部门名称", name = "name", example = "技术部", notes = "部门名称")
    private String name;

    @ApiModelProperty(required = true, value = "状态", name = "state", example = "0", notes = "状态：0正常 1停用")
    private Integer state;

    @ApiModelProperty(value = "备注", name = "remark", example = "技术研发团队", notes = "备注")
    private String remark;


}
