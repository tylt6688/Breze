package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 系统参数配置表
 * </p>
 *
 * @author tylt6688
 * @since 2023-06-07
 */
@Data
@Accessors(chain = true)
@TableName("sys_config")

public class Config implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String name;

    private String key;

    private String value;

    private Integer state;

    private String createBy;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    private String remark;
}
