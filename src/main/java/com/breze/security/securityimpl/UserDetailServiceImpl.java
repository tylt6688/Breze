package com.breze.security.securityimpl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.breze.common.constant.Const;
import com.breze.common.rabbit.Produce;
import com.breze.config.BrezeConfig;
import com.breze.service.logservice.LoginLogService;
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
import com.breze.config.MailConfig;
import com.breze.entity.pojo.tool.Email;
import com.breze.entity.pojo.logpojo.LoginLog;
import com.breze.entity.pojo.rbac.User;
import com.breze.security.AccountUser;

import java.time.LocalDateTime;
import java.util.List;
/*
 * @Author tylt
 * @Description //TODO 实现UserDetailsService接口来实现身份认证，避免数据库结构暴露
 * @Date 2022/2/7 14:24
 **/

@Log4j2
@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    UserService userService;
    @Autowired
    LoginLogService loginLogService;
    @Autowired
    Produce produce;
    @Autowired
    TemplateEngine templateEngine;
    @Autowired
    MailConfig mailConfig;

    @Autowired
    BrezeConfig brezeConfig;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userService.getByUserName(username);
        // 进行异常抛出，交付给认证失败处理器进行处理
        if (user == null) {
            throw new UsernameNotFoundException("用户名或密码错误");
        } else if (user.getStatu().equals(Const.STATUS_OFF)) {
            throw new UsernameNotFoundException("账户状态异常");
        }
        // 更新账户最后一次登录时间
        UpdateWrapper<User> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("username", username);
        updateWrapper.set("last_login", LocalDateTime.now());
        userService.update(updateWrapper);

        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getId());
        loginLog.setCreateTime(LocalDateTime.now());
        loginLog.setState(Const.TYPE_ZERO);
        loginLogService.save(loginLog);

        if (user.getLoginWarn().equals(Const.STATUS_ON)) {
            Context context = new Context();
            context.setVariable("username", user.getUsername());
            context.setVariable("last_login", LocalDateTime.now());
            context.setVariable("link", "https://blog.csdn.net/tylt6688");
            String content = templateEngine.process("mail.html", context);

            Email email = new Email();
            email.setMailFrom(mailConfig.getUsername());
            email.setMailFromNick(brezeConfig.getName());
            email.setMailTo(user.getEmail());
            email.setSubject("账户登录提醒");
            email.setContent(content);
            produce.sendMailByMQ(email);
        }


        return new AccountUser(user.getId(), user.getUsername(), user.getPassword(), getUserAuthority(user.getId()));
    }

    /**
     * TODO 通过用户id获取权限信息（角色、菜单权限）
     *
     * @param userId
     * @return 连接表方式通过userID获取权限信息
     */
    public List<GrantedAuthority> getUserAuthority(Long userId) {

        // 获取角色(ROLE_admin)、菜单操作权限 sys:user:list
        String authority = userService.getUserAuthorityInfo(userId);
        // ROLE_admin,ROLE_user,sys:user:list,....
        log.info("当前角色及相应权限---{}", authority);

        return AuthorityUtils.commaSeparatedStringToAuthorityList(authority);
    }
}
