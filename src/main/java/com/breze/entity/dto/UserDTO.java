package com.breze.entity.dto;

import com.breze.entity.pojo.rbac.Role;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/16 14:36
 * @Description:
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
public class UserDTO implements Serializable {

    private static final long serialVersionUID = -4359978619446051478L;

    private Long id;

    private String username;

    private String password;

    private String avatar;

    private String trueName;

    private String phone;

    private String email;

    private String city;

    private Integer loginWarn;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    private LocalDateTime loginTime;

    private Integer state;

    private String openId;

    private Long departmentId;

    private Long groupId;

    private Long jobId;

    private List<Role> roles = new ArrayList<>();
}
