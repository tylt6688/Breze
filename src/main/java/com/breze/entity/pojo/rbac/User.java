package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_user")
@ApiModel(value = "用户表", description="用户表")
public class User extends BaseEntity {

    private static final long serialVersionUID = 482852208991067144L;

    @ApiModelProperty(value = "用户名称", name = "Username", example = "admin", notes = "用户名称")
    private String username;

    @ApiModelProperty(value = "用户密码", name = "Password", example = "123456", notes = "用户密码")
    private String password;

    @ApiModelProperty(value = "用户头像", name = "Avatar", example = "https://xxxx.jpg", notes = "用户头像")
    private String avatar;

    @ApiModelProperty(value = "用户真名", name = "trueName", example = "张三", notes = "用户真名")
    private String trueName;

    @ApiModelProperty(value = "手机号", name = "Phone", example = "12345678910", notes = "手机号")
    private String phone;

    @ApiModelProperty(value = "邮箱", name = "Email", example = "1234@a.com", notes = "邮箱")
    private String email;

    @ApiModelProperty(value = "城市", name = "City", example = "Beijing", notes = "城市")
    private String city;

    private Integer loginWarn;

    @ApiModelProperty(value = "登录时间", name = "Login Time", example = "2023/06/01 12:00:00", notes = "登录时间")
    private LocalDateTime loginTime;

    @ApiModelProperty(value = "用户状态", name = "State", example = "1", notes = "用户状态")
    private Integer state;

    @ApiModelProperty(value = "角色列表", name = "Roles", example = "['Role1', 'Role2']", notes = "角色列表")
    @TableField(exist = false)
    private List<Role> roles = new ArrayList<>();


}
