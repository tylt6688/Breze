package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import lombok.Data;
import lombok.experimental.Accessors;

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

public class Config extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String name;

    private String key;

    private String value;

    private Integer state;

    private String createBy;

    private String remark;
}
