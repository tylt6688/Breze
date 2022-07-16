package com.breze.service.impl.logpage;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.logpage.LoginLogService;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.logpage.LoginLog;
import com.breze.mapper.logpage.LoginLogMapper;

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
