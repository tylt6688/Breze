package com.breze.entity.dto.sys;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 更新密码 DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class UpdatePasswordDTO implements Serializable {

    private static final long serialVersionUID = 4794413496085729435L;

    @NotBlank(message = "新密码不能为空")
    private String password;

    @NotBlank(message = "旧密码不能为空")
    private String currentPass;
}
