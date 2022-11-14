package com.breze.service.brezelog.impl;

import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.logdo.HandleLog;
import org.springframework.stereotype.Service;
import com.breze.mapper.brezelog.HandleLogMapper;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Service
public class HandleLogServiceImp extends ServiceImpl<HandleLogMapper, HandleLog> implements IService<HandleLog> {

}
