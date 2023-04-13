package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
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
public class User extends BaseEntity {

    private static final long serialVersionUID = 482852208991067144L;
    
    private String username;

    private String password;

    private String avatar;

    private String trueName;

    private String phone;

    private String email;

    private String city;

    private Integer loginWarn;

    private LocalDateTime loginTime;

    private Integer state;

    @TableField(exist = false)
    private List<Role> roles = new ArrayList<>();


}
