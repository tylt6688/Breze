package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:19
 * @Description 部门岗位关联表
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_group_job")
@ApiModel(value = "部门岗位表", description="部门岗位表")
public class GroupJob implements Serializable {

    private static final long serialVersionUID = -3854597199333634830L;

    @ApiModelProperty(value = "ID", name = "ID", example = "1", notes = "ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "部门ID", name = "Group ID", example = "1", notes = "部门ID")
    private Long groupId;

    @ApiModelProperty(value = "岗位ID", name = "Job ID", example = "1", notes = "岗位ID")
    private Long jobId;
}
