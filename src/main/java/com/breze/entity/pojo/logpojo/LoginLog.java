package com.breze.entity.pojo.logpojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;

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
@Getter
@Setter
@TableName("log_login")
@ApiModel(value = "LoginLog对象", description = "登录日志对象")
public class LoginLog implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private LocalDateTime createTime;

    private Long userId;

    private Integer state;

    @TableField(exist = false)
    private String userName;

    @TableField(exist = false)
    private String trueName;


}
