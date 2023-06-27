package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Config;
import com.breze.mapper.rbac.ConfigMapper;
import com.breze.service.rbac.ConfigService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 系统参数配置表 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2023-06-07
 */
@Service
public class ConfigServiceImp extends ServiceImpl<ConfigMapper, Config> implements ConfigService {

}
