package com.breze.converter.sys;

import com.breze.config.BrezeConfig;
import com.breze.entity.pojo.core.Config;
import com.breze.entity.vo.sys.ConfigVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2023/7/26 10:26
 * @Description Config 实体转化
 * @Copyright(c) 2023 , 青枫网络工作室
 */

@Mapper
public interface ConfigConvert {

    ConfigConvert INSTANCE = Mappers.getMapper(ConfigConvert.class);

    /**
     * BrezeConfig 转为 ConfigVO
     *
     * @param brezeConfig BrezeConfig
     * @return ConfigVO
     */
    ConfigVO brezeConfigToConfigVO(BrezeConfig brezeConfig);

    /**
     * ConfigVO 转为 Config
     *
     * @param configVO ConfigVO
     * @return Config
     */
    Config convertToConfig(ConfigVO configVO);

    /**
     * Config 转为 ConfigVO
     *
     * @param List<Config> list
     * @return ConfigVO
     */
    List<ConfigVO> convertToConfigVO(List<Config> list);
}
