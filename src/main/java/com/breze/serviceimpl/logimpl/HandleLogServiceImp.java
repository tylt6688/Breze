package com.breze.serviceimpl.logimpl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.logservice.HandleLogService;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.logpojo.HandleLog;
import com.breze.mapper.logmapper.HandleLogMapper;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Service
public class HandleLogServiceImp extends ServiceImpl<HandleLogMapper, HandleLog> implements HandleLogService {

}
