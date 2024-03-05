package com.breze.service.core;


import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.config.BrezeConfig;
import com.breze.entity.pojo.core.Config;
import com.breze.entity.vo.sys.ConfigVO;

import java.util.List;

/**
 * <p>
 * 系统参数配置表 服务类
 * </p>
 *
 * @author tylt6688
 * @since 2023-06-07
 */
public interface ConfigService extends IService<Config> {

    Config getConfigByKey(String s);

    Boolean insertConfig(ConfigVO configVO);

    List<ConfigVO> getConfigList(BrezeConfig brezeConfig);
}
