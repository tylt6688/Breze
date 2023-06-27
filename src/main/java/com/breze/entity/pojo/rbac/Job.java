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
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:07
 * @Description 岗位对象
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_job")
@ApiModel(value = "岗位表", description="岗位表")
public class Job extends BaseEntity {

    private static final long serialVersionUID = -3858488919858333072L;

    @ApiModelProperty(value = "岗位名称", name = "Name", example = "技术部实习生", notes = "岗位名称")
    private String name;

    @ApiModelProperty(value = "岗位状态", name = "State", example = "0", notes = "岗位状态")
    private Integer state;

    @ApiModelProperty(value = "岗位备注", name = "Remark", example = "xxx", notes = "岗位备注")
    private String remark;


}
