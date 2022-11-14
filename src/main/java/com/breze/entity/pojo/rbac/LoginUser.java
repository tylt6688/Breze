package com.breze.entity.pojo.rbac;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.Assert;

import java.util.Collection;

/**
 * 这里是为了返回这个实体类，后期其实可以改为集成User类再实现UserDetails好一些
 *
 * @author TYLT
 */
public class LoginUser implements UserDetails {


    private static final long serialVersionUID = 2157836804554108892L;
    private final String password;

    private final String username;

    private final Collection<? extends GrantedAuthority> authorities;

    /**
     * 账号是否失效
     */
    private final boolean accountNonExpired;

    /**
     * 账号是否锁定
     */
    private final boolean accountNonLocked;

    /**
     * 密钥是否失效
     */
    private final boolean credentialsNonExpired;

    /**
     * 是否可用
     */
    private final boolean enabled;

    public LoginUser(String username, String password, Boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        this(username, password, true, true, true, accountNonLocked, authorities);
    }


    public LoginUser(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        Assert.isTrue(username != null && !"".equals(username) && password != null, "Cannot pass null or empty values to constructor");

        this.username = username;
        this.password = password;
        this.enabled = enabled;
        this.accountNonExpired = accountNonExpired;
        this.credentialsNonExpired = credentialsNonExpired;
        this.accountNonLocked = accountNonLocked;
        this.authorities = authorities;
    }


    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.accountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.accountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }
}
