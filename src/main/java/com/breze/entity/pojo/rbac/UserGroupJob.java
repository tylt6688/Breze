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
 * @Date 2022/9/11 9:39
 * @Description 用户岗位关联表
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_user_group_job")
@ApiModel(value = "用户部门岗位表", description="用户部门岗位表")
public class UserGroupJob implements Serializable {

    private static final long serialVersionUID = 11683181677760025L;

    @ApiModelProperty(value = "ID", name = "ID", example = "1", notes = "ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "用户ID", name = "User ID", example = "1", notes = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "部门岗位ID", name = "Group Job ID", example = "1", notes = "部门岗位ID")
    private Long groupJobId;

}
