package com.breze.service.syslog.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.GlobalConstant;
import com.breze.entity.bo.sys.IpBO;
import com.breze.entity.vo.sys.LoginLogVO;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.syslog.LoginLogService;
import com.breze.utils.BrezeUtil;
import com.breze.utils.ClientUtil;
import com.breze.utils.IPUtil;
import com.breze.utils.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.mapper.syslog.LoginLogMapper;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {

    @Autowired
    private LoginLogMapper loginLogMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<LoginLogVO> getUserLoginCount() {
        return loginLogMapper.getUserLoginCount();
    }

    @Override
    public List<LoginLogVO> getUserLoginCategory(LocalDateTime localDateTime) {
        return loginLogMapper.getUserLoginCategory(localDateTime);
    }

    @Override
    public Boolean clearByDate(LocalDateTime localDateTime) {
        LambdaQueryWrapper<LoginLog> wrapper = new LambdaQueryWrapper<LoginLog>().le(LoginLog::getCreateTime, localDateTime);
        return this.removeBatchByIds(this.list(wrapper));
    }

    @Override
    public void saveLoginLog(String username) {
        HttpServletRequest request = BrezeUtil.getHttpServletRequest();
        IpBO ipAddressInfo = IPUtil.getIpAddressInfo(request);
        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(userMapper.getUserByUserName(username).getId())
                .setState(GlobalConstant.TYPE_ZERO)
                .setIpAddress(ipAddressInfo.getIp())
                .setOs(ClientUtil.getOperaSystemName(request))
                .setIpLocation(ipAddressInfo.getAddress());
        this.save(loginLog);
    }
}
