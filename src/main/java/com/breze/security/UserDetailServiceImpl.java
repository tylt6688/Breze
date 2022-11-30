package com.breze.security;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.rabbit.Produce;
import com.breze.config.BrezeConfig;
import com.breze.config.MailConfig;
import com.breze.entity.pojo.brezelog.LoginLog;
import com.breze.entity.pojo.rbac.LoginUser;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.tool.Email;
import com.breze.service.brezelog.LoginLogService;
import com.breze.service.rbac.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.time.LocalDateTime;
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

    @Autowired
    Produce produce;
    @Autowired
    private BrezeConfig brezeConfig;
    @Autowired
    MailConfig mailConfig;
    @Autowired
    TemplateEngine templateEngine;
    @Autowired
    UserService userService;
    @Autowired
    LoginLogService loginLogService;


    @Override
    public UserDetails loadUserByUsername(String username) {

        User user = userService.getUserByUserName(username);
        // 进行异常抛出，交付给认证失败处理器进行处理
        if (user == null) {
            throw new UsernameNotFoundException(ErrorEnum.ErrorUsernamePassword.getErrorName());
        } else if (user.getState().equals(GlobalConstant.STATUS_OFF)) {
            throw new UsernameNotFoundException(ErrorEnum.LockUser.getErrorName());
        }
        // 更新账户最后一次登录时间
        LambdaUpdateWrapper<User> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        lambdaUpdateWrapper.eq(User::getUsername, username);
        lambdaUpdateWrapper.set(User::getLoginTime, LocalDateTime.now());
        userService.update(lambdaUpdateWrapper);

        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getId())
                .setState(GlobalConstant.TYPE_ZERO);
        loginLogService.save(loginLog);

        if (user.getLoginWarn().equals(GlobalConstant.STATUS_ON)) {
            sendRemindEmail(user);
        }

        return new LoginUser(user.getUsername(), user.getPassword(), user.getState().equals(GlobalConstant.STATUS_ON), getUserAuthority(user.getId()));
    }

    /**
     * 通过用户id连接表方式获取权限信息（角色、菜单权限）
     *
     * @param userId
     * @return List<GrantedAuthority>
     */
    public List<GrantedAuthority> getUserAuthority(Long userId) {

        // 获取角色(ROLE_admin)、菜单操作权限 sys:user:list
        String authority = userService.getUserAuthorityInfo(userId);
        // ROLE_admin,ROLE_user,sys:user:list,....
        log.info("[当前角色及对应权限]:---{}", authority);

        return AuthorityUtils.commaSeparatedStringToAuthorityList(authority);
    }

    public void sendRemindEmail(User user) {
        Context context = new Context();
        context.setVariable("username", user.getUsername());
        context.setVariable("login_time", LocalDateTime.now());
        context.setVariable("link", "https://blog.csdn.net/tylt6688");
        String content = templateEngine.process("html/email.html", context);

        Email email = new Email();
        email.setMailFrom(mailConfig.getUsername())
                .setMailFromNick(brezeConfig.getName())
                .setMailTo(user.getEmail())
                .setSubject("账户登录提醒")
                .setContent(content);
        produce.sendMailByMQ(email);

    }
}
