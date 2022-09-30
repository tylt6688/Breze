package com.breze.entity.vo;

import com.breze.entity.pojo.rbac.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.List;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class UserInfoVo {

    private String avatar;

    private String username;

    private String trueName;

    private String email;

    private String phone;

    private String city;

    private LocalDateTime createTime;

    private LocalDateTime loginTime;

    private String job;

    private Integer loginWarn;

    private List<Role> roles;


}
