package com.breze.security;

import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.entity.bo.sys.LoginUser;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.service.rbac.UserService;
import com.breze.service.syslog.LoginLogService;
import com.breze.service.tool.MailService;
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

    @Autowired
    UserService userService;
    @Autowired
    LoginLogService loginLogService;
    @Autowired
    MailService mailService;


    @Override
    public UserDetails loadUserByUsername(String username) {

        User user = userService.getUserByUserName(username);
        // 进行异常抛出，交付给认证失败处理器进行处理
        if (user == null) {
            throw new UsernameNotFoundException(ErrorEnum.ErrorUsernamePassword.getErrorName());
        } else if (user.getState().equals(GlobalConstant.STATUS_OFF)) {
            throw new UsernameNotFoundException(ErrorEnum.LockUser.getErrorName());
        }
        userService.updateLastLoginTime(username);

        // FIXME 记录登录日志(后期需修改更好方式) [抄送人：tylt6688 待办人：tylt6688 2023-02-21]
        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getId())
                .setState(GlobalConstant.TYPE_ZERO);
        loginLogService.save(loginLog);

        if (user.getLoginWarn().equals(GlobalConstant.STATUS_ON)) {
            mailService.sendRemindEmail(user);
        }

        return new LoginUser(user.getUsername(), user.getPassword(), user.getState().equals(GlobalConstant.STATUS_ON), getUserAuthority(user.getId()));
    }

    /**
     * 通过用户id连接表方式获取权限信息（角色、菜单权限）
     *
     * @param userId 用户id
     * @return List<GrantedAuthority>
     */
    public List<GrantedAuthority> getUserAuthority(Long userId) {

        // 获取角色(ROLE_admin)、菜单操作权限 sys:user:list
        String authority = userService.getUserAuthorityInfo(userId);
        // ROLE_admin,ROLE_user,sys:user:list,....
        log.info("[当前角色及对应权限编码]:---{}", authority);

        return AuthorityUtils.commaSeparatedStringToAuthorityList(authority);
    }


}
