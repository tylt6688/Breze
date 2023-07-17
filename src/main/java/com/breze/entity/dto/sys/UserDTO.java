package com.breze.entity.dto.sys;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/16 14:36
 * @Description Update By tylt6688 2022/12/6 10:51
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class UserDTO extends BaseDTO {

    private static final long serialVersionUID = -6838673609790692000L;

    @ApiModelProperty(required = true, value = "用户ID", name = "id", example = "1", notes = "用户ID")
    private Long id;

    @ApiModelProperty(required = true, value = "用户名", name = "username", example = "admin", notes = "用户名")
    @NotBlank(message = "用户名不能为空")
    private String username;

    @ApiModelProperty(required = true, value = "真实姓名", name = "trueName", example = "张三", notes = "真实姓名")
    private String trueName;

    @ApiModelProperty(value = "手机号", name = "phone", example = "13888888888", notes = "手机号")
    private String phone;

    @ApiModelProperty(required = true, value = "邮箱", name = "email", example = "13888888888@qq.com", notes = "邮箱")
    @NotBlank(message = "邮箱不能为空")
    @Email(message = "邮箱格式不正确")
    private String email;

    @ApiModelProperty(value = "籍贯", name = "city", example = "湖北武汉", notes = "籍贯")
    private String city;

}
