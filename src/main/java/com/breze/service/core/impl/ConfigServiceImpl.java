package com.breze.service.core.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.config.BrezeConfig;
import com.breze.converter.sys.ConfigConvert;
import com.breze.entity.pojo.core.Config;
import com.breze.entity.vo.sys.ConfigVO;
import com.breze.mapper.rbac.ConfigMapper;
import com.breze.service.core.ConfigService;
import com.breze.utils.BrezeUtil;
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

    @Autowired
    public ConfigServiceImpl(ConfigMapper configMapper) {
        this.configMapper = configMapper;
    }
    @Override
    public Config getConfigByKey(String key) {
        return configMapper.selectOne(new LambdaQueryWrapper<Config>().eq(Config::getConfigKey, key));
    }

    @Override
    public Boolean insertConfig(ConfigVO configVO) {
        Config config = ConfigConvert.INSTANCE.convertToConfig(configVO);
        return this.save(config);
    }

    @Override
    public List<ConfigVO> getConfigList(BrezeConfig brezeConfig) {
        log.info("AABBCC",brezeConfig.toString());
        String[] attributeNames = BrezeUtil.getAttributeNames(brezeConfig);

        ConfigVO configVO = new ConfigVO();
        for (String attributeName : attributeNames) {
            log.info(attributeName);
//            if (BrezeUtil.isNotNull(this.getConfigByKey(attributeName))) {
//                String value = (String) BrezeUtil.getFieldValueByName(attributeName, brezeConfig);
//                configVO.setName(attributeName);
//                configVO.setKey(attributeName);
//                configVO.setValue(value);
//                Config config = ConfigConvert.INSTANCE.convertToConfig(configVO);
//                this.save(config);
//            }
        }

        return ConfigConvert.INSTANCE.convertToConfigVO(this.list());
    }
}
