package com.breze.entity.pojo.logdo;

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
 * <p>
 *  实体类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@TableName("log_login")
@ApiModel(value = "LoginLog对象", description = "登录日志对象")
public class LoginLog implements Serializable {

    private static final long serialVersionUID = 119903841068975842L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long userId;

    private Integer state;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @TableField(exist = false)
    private String userName;

    @TableField(exist = false)
    private String trueName;


}
