package com.breze.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/16 14:36
 * @Description Update By tylt6688 2022/12/6 10:51
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class UserDTO implements Serializable {

    private static final long serialVersionUID = -4359978619446051478L;

    private Long id;
    private String username;

    private String trueName;

    private String phone;

    private String email;

    private String city;

    private String current;

    private String size;


}
