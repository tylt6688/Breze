package com.breze.entity.pojo.syslog;

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
 * <p>
 * 实体类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@TableName("log_login")
@ApiModel(value = "LoginLog", description = "登录日志对象,log_login表")
public class LoginLog implements Serializable {

    private static final long serialVersionUID = 119903841068975842L;

    @ApiModelProperty(value = "ID", name = "id", example = "1", notes = "主键", dataType = "Long")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "用户ID", name = "userId", example = "1", notes = "用户ID", dataType = "Long")
    private Long userId;

    @ApiModelProperty(value = "状态", name = "state", example = "1", notes = "状态", dataType = "Integer")
    private Integer state;

    @ApiModelProperty(value = "ip地址", name = "ipAddress", example = "127.0.0.1", notes = "ip地址", dataType = "String")
    private String ipAddress;

    @ApiModelProperty(value = "ip来源", name = "ipLocation", example = "中国", notes = "ip来源", dataType = "String")
    private String ipLocation;

    @ApiModelProperty(value = "操作系统", name = "os", example = "Windows 10", notes = "操作系统", dataType = "String")
    private String os;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-06-23 08:54:00", notes = "创建时间", dataType = "LocalDateTime")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "用户名", name = "userName", example = "admin", notes = "用户名", dataType = "String")
    @TableField(exist = false)
    private String userName;

    @ApiModelProperty(value = "真实姓名", name = "trueName", example = "张三", notes = "真实姓名", dataType = "String")
    @TableField(exist = false)
    private String trueName;


}
