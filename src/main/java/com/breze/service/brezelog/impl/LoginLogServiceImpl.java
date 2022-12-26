package com.breze.service.brezelog.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.vo.LoginLogVO;
import com.breze.service.brezelog.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.brezelog.LoginLog;
import com.breze.mapper.brezelog.LoginLogMapper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
}
