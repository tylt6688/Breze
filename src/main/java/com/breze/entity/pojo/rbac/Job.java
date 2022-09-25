package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:07
 * @Description 岗位对象
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_job")
@ApiModel(value = "Job岗位对象", description = "sys_job岗位表")
public class Job implements Serializable {

    private static final long serialVersionUID = -3858488919858333072L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String name;

    private Integer state;

    private String remark;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

}
