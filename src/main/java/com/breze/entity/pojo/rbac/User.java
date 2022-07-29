package com.breze.entity.pojo.rbac;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("sys_user")
@ApiModel(value = "用户对象", description = "")
public class User implements Serializable {

    private static final long serialVersionUID = 482852208991067144L;

    @ExcelIgnore
    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "用户ID", name = "id", example = "1", notes = "用户ID")
    private Long id;

    @ExcelProperty("用户名")
    @ColumnWidth(20)
    @NotBlank(message = "用户名不能为空")
    @ApiModelProperty(value = "用户名", name = "username", example = "admin", notes = "用户名")
    private String username;

    @ExcelIgnore
    @ApiModelProperty(value = "密码", name = "password", example = "123456", notes = "密码")
    private String password;

    @ExcelIgnore
    @ApiModelProperty(value = "微信小程序唯一标识", name = "openId", example = "123456", notes = "微信小程序唯一标识")
    private String openId;

    @ExcelIgnore
    @ApiModelProperty(value = "部门ID", name = "departmentId", example = "1", notes = "部门ID")
    private Long departmentId;

    @ExcelIgnore
    @ApiModelProperty(value = "用户头像", name = "avatar", example = "http://www.baidu.com/img/bd_logo1.png", notes = "用户头像")
    private String avatar;

    @ExcelProperty("真实姓名")
    @ColumnWidth(20)
    @ApiModelProperty(value = "真实姓名", name = "realName", example = "张三", notes = "真实姓名")
    private String truename;

    @ExcelProperty("手机号")
    @ColumnWidth(20)
    @ApiModelProperty(value = "手机号", name = "phone", example = "13888888888", notes = "手机号")
    private String phone;

    @ExcelProperty("邮箱")
    @ColumnWidth(20)
    @NotBlank(message = "邮箱不能为空")
    @Email(message = "邮箱格式不正确")
    @ApiModelProperty(value = "邮箱", name = "email", example = "13888888888@qq.com", notes = "邮箱")
    private String email;

    @ExcelProperty("籍贯")
    @ColumnWidth(20)
    @ApiModelProperty(value = "籍贯", name = "city", example = "湖北武汉", notes = "籍贯")
    private String city;

    @ExcelIgnore
    @ApiModelProperty(value = "登录提醒", name = "loginWarn", example = "1", notes = "登录提醒")
    private Integer loginWarn;

    @ExcelIgnore
    @ApiModelProperty(value = "创建时间", name = "created", example = "2020-03-01 12:00:00", notes = "创建时间")
    private LocalDateTime created;

    @ExcelIgnore
    @ApiModelProperty(value = "更新时间", name = "updated", example = "2020-03-01 12:00:00", notes = "更新时间")
    private LocalDateTime updated;

    @ExcelIgnore
    @ApiModelProperty(value = "最后一次登录时间", name = "lastLogin", example = "2020-03-01 12:00:00", notes = "最近登录时间")
    private LocalDateTime lastLogin;

    @ExcelIgnore
    @ApiModelProperty(value = "状态", name = "statu", example = "1", notes = "状态:1正常,0禁用")
    private Integer statu;

    @ExcelIgnore
    @TableField(exist = false)
    private List<Role> roles = new ArrayList<>();

}
