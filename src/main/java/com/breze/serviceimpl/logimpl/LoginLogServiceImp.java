package com.breze.serviceimpl.logimpl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.logservice.LoginLogService;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.logdo.LoginLog;
import com.breze.mapper.logmapper.LoginLogMapper;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Service
public class LoginLogServiceImp extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {

}
