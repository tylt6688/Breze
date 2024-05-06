package com.breze.security;

import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.entity.bo.sys.LoginUserBO;
import com.breze.entity.pojo.rbac.User;
import com.breze.service.core.MailService;
import com.breze.service.rbac.UserService;
import com.breze.service.syslog.LoginLogService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/2/7 14:24
 * @Description 实现UserDetailsService接口来实现身份认证，避免数据库结构暴露
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Service
public class UserDetailServiceImpl implements UserDetailsService {

    private final UserService userService;
    private final MailService mailService;
    private final LoginLogService loginLogService;

    @Autowired
    public UserDetailServiceImpl(UserService userService, MailService mailService, LoginLogService loginLogService) {
        this.userService = userService;
        this.mailService = mailService;
        this.loginLogService = loginLogService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) {

        User user = userService.getUserByUserName(username);
        // 判断帐号是否存在
        if (user == null) {
            log.info("用户 {} 不存在", username);
            throw new UsernameNotFoundException(ErrorEnum.UNKNOWN_ACCOUNT.getErrorName());
        }
        // 判断帐户是否被锁定
        else if (user.getState().equals(GlobalConstant.STATUS_OFF)) {
            log.info("用户 {} 账号已被锁定", username);
            throw new UsernameNotFoundException(ErrorEnum.LOCK_USER.getErrorName());
        }
        // 判断是否需要发送提醒邮件
        else if (user.getLoginWarn().equals(GlobalConstant.STATUS_ON)) {
            mailService.sendRemindEmail(user);
        }

        // 更新该账号最后一次登录时间
        userService.updateLoginInfo(user);
        loginLogService.saveLoginLog(username);

        return createLoginUser(user);
    }

    /**
     * 通过用户连接表方式获取权限信息（角色、菜单权限）
     *
     * @return List<GrantedAuthority>
     */
    public List<GrantedAuthority> getUserAuthority(User user) {

        // 获取角色(ROLE_admin)、菜单操作权限 sys:user:list
        String authority = userService.getUserAuthorityInfo(user);
        // ROLE_admin,ROLE_user,sys:user:list,....
        log.info("[当前角色及对应权限编码]:---{}", authority);
        return AuthorityUtils.commaSeparatedStringToAuthorityList(authority);
    }

    /**
     * 创建登录用户业务传输对象
     *
     * @param user User对象
     * @return LoginUserBO 登录用户业务传输对象
     */
    public UserDetails createLoginUser(User user) {
        return new LoginUserBO(user.getUsername(), user.getPassword(), user.getState().equals(GlobalConstant.STATUS_ON), getUserAuthority(user));
    }


}
