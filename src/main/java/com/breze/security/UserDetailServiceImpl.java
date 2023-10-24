package com.breze.security;

import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.entity.bo.sys.IpBO;
import com.breze.entity.bo.sys.LoginUserBO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.service.core.MailService;
import com.breze.service.rbac.UserService;
import com.breze.service.syslog.LoginLogService;
import com.breze.utils.BrezeUtil;
import com.breze.utils.ClientUtil;
import com.breze.utils.IPUtil;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
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
    MailService mailService;
    @Autowired
    LoginLogService loginLogService;

    @Override
    public UserDetails loadUserByUsername(String username) {

        User user = userService.getUserByUserName(username);
        // 判断帐号是否存在
        if (user == null) {
            throw new UsernameNotFoundException(ErrorEnum.UnknownAccount.getErrorName());
        }
        // 判断帐户是否被锁定
        else if (user.getState().equals(GlobalConstant.STATUS_OFF)) {
            throw new UsernameNotFoundException(ErrorEnum.LockUser.getErrorName());
        }
        // 判断是否需要发送提醒邮件
        else if (user.getLoginWarn().equals(GlobalConstant.STATUS_ON)) {
            mailService.sendRemindEmail(user);
        }

        // 更新该账号最后一次登录时间
        userService.updateLastLoginTime(username);

//        ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//        assert servletRequestAttributes != null;
        HttpServletRequest request = BrezeUtil.getHttpServletRequest();

        IpBO ipAddressInfo = IPUtil.getIpAddressInfo(request);
        log.info("[当前登录用户IP信息]:---{}", ipAddressInfo.toString());
        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(userService.getUserByUserName(username).getId())
                .setState(GlobalConstant.TYPE_ZERO)
                .setIpAddress(ipAddressInfo.getIp())
                .setOs(ClientUtil.getOperaSystemName(request))
                .setIpLocation(ipAddressInfo.getAddress());
        loginLogService.save(loginLog);

        return new LoginUserBO(user.getUsername(), user.getPassword(), user.getState().equals(GlobalConstant.STATUS_ON), getUserAuthority(user.getId()));
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
