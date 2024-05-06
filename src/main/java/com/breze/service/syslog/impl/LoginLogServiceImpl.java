package com.breze.service.syslog.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.GlobalConstant;
import com.breze.entity.bo.sys.IPBO;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.entity.vo.sys.LoginLogVO;
import com.breze.mapper.rbac.UserMapper;
import com.breze.mapper.syslog.LoginLogMapper;
import com.breze.service.syslog.LoginLogService;
import com.breze.utils.BrezeUtil;
import com.breze.utils.ClientUtil;
import com.breze.utils.IPUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 * 服务实现类
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
        List<LoginLog> list = list(wrapper);
        return loginLogMapper.deleteBatchIds(list) > 0;
    }

    @Override
    public void saveLoginLog(String username) {
        HttpServletRequest request = BrezeUtil.getHttpServletRequest();
        IPBO ipAddressInfo = IPUtil.getIpAddressInfo(request);
        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(userMapper.getUserByUserName(username).getId())
                .setState(GlobalConstant.TYPE_ZERO)
                .setIpAddress(ipAddressInfo.getIp())
                .setOs(ClientUtil.getOperaSystemName(request))
                .setIpLocation(ipAddressInfo.getAddress());
        this.save(loginLog);
    }
}
