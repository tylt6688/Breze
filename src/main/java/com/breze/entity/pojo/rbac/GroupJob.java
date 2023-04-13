package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
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
public class GroupJob implements Serializable {

    private static final long serialVersionUID = -3854597199333634830L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long groupId;

    private Long jobId;
}
