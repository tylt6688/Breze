package com.breze.service.core.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.config.BrezeConfig;
import com.breze.converter.sys.ConfigConvert;
import com.breze.entity.pojo.core.Config;
import com.breze.entity.vo.sys.ConfigVO;
import com.breze.mapper.rbac.ConfigMapper;
import com.breze.service.core.ConfigService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 系统参数配置表 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2023-06-07
 */
@Log4j2
@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements ConfigService {


    private final ConfigMapper configMapper;

    private final BrezeConfig brezeConfig;

    @Autowired
    public ConfigServiceImpl(ConfigMapper configMapper, BrezeConfig brezeConfig) {
        this.configMapper = configMapper;
        this.brezeConfig = brezeConfig;
    }

    @Override
    public List<ConfigVO> getConfigList() {
        return ConfigConvert.INSTANCE.convertToConfigVO(this.list());
    }


}
