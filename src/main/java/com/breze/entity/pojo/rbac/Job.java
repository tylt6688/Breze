package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_job")
@ApiModel(value = "Job", description = "岗位对象,sys_job岗位表")
public class Job implements Serializable {

    private static final long serialVersionUID = -3858488919858333072L;
    @ApiModelProperty(value = "岗位ID", name = "id", example = "1", notes = "岗位ID")
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
