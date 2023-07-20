package com.breze.entity.dto.sys;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 登录数据 DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "登录数据传输对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class LoginDTO {

    @ApiModelProperty(value = "用户名", name = "username", example = "admin", notes = "用户名", dataType = "String", required = true)
    private String username;

    @ApiModelProperty(value = "密码", name = "password", example = "123456", notes = "密码", dataType = "String", required = true)
    private String password;

    @ApiModelProperty(value = "验证码键", name = "key", example = "123456", notes = "验证码键", dataType = "String", required = true)
    private String key;

    @ApiModelProperty(value = "验证码值", name = "code", example = "123456", notes = "验证码", dataType = "String", required = true)
    private String code;
}
