package com.breze.service.syslog.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.vo.sys.LoginLogVO;
import com.breze.service.syslog.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.mapper.syslog.LoginLogMapper;

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
    @Override
    public List<LoginLogVO> getUserLoginCount() {
        List<LoginLogVO> loginLogList = loginLogMapper.getUserLoginCount();
        return loginLogList;
    }

    @Override
    public List<LoginLogVO> getUserLoginCategory(String currentDate) {
        List<LoginLogVO> logVOS = loginLogMapper.getUserLoginCategory(currentDate);
        return logVOS;
    }
}
