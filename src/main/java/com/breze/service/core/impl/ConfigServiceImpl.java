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
@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements ConfigService {

    @Override
    public List<Config> getConfigByKey(String s) {
        return this.list(new LambdaQueryWrapper<Config>().eq(Config::getKey, s));
    }

    @Override
    public Boolean insertConfig(ConfigVO configVO) {
        Config config = ConfigConvert.INSTANCE.convertToConfig(configVO);
        return this.save(config);
    }

    @Override
    public List<ConfigVO> getConfigList(BrezeConfig brezeConfig) {

        ConfigVO configVO = new ConfigVO();
        String[] filedName = BrezeUtil.getFiledName(brezeConfig);
        for (String s : filedName) {
            if (this.getConfigByKey(s).isEmpty()) {
                String value = (String) BrezeUtil.getFieldValueByName(s, brezeConfig);
                configVO.setName(s);
                configVO.setKey(s);
                configVO.setValue(value);
                Config config = ConfigConvert.INSTANCE.convertToConfig(configVO);
                this.save(config);
            }
        }
        List<Config> list = this.list();
        return ConfigConvert.INSTANCE.convertToConfigVO(list);
    }
}
