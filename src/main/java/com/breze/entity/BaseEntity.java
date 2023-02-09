package com.breze.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Author tylt6688
 * @Date 2023/2/7 9:41
 * @Description 用于继承的实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class BaseEntity implements Serializable {


    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
