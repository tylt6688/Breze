package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 更新密码 DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "岗位数据传输对象")
@Data
public class UpdatePasswordDTO implements Serializable {

    private static final long serialVersionUID = 4794413496085729435L;

    @ApiModelProperty(required = true, value = "新密码", name = "password", example = "138888", notes = "新密码")
    @NotBlank(message = "新密码不能为空")
    @Length(min = 6, max = 20, message = "新密码长度限制6~20之间")
    private String password;

    @ApiModelProperty(required = true, value = "旧密码", name = "oldPassword", example = "138888", notes = "旧密码")
    @NotBlank(message = "旧密码不能为空")
    @Length(min = 6, max = 20, message = "旧密码长度限制6~20之间")
    private String oldPassword;
}
