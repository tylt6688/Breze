package com.breze.entity.bo.sys;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;
import java.util.Collection;

/**
 * @Author tylt6688
 * @Date 2024/1/3 16:54
 * @Description 用于返回Redis中已缓存用户信息
 * @Copyright(c) 2024 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoginUserCacheBO implements Serializable {

    private static final long serialVersionUID = 215783684554108892L;

    /**
     * 用户名
     */
    private  String username;

    /**
     * 权限集合
     */
    private  Collection<? extends GrantedAuthority> authorities;

    /**
     * 账号未失效
     */
    private  Boolean accountNonExpired;

    /**
     * 账号未锁定
     */
    private  Boolean accountNonLocked;

    /**
     * 密钥未失效
     */
    private  Boolean credentialsNonExpired;

    /**
     * 是否可用
     */
    private  Boolean enabled;


}
