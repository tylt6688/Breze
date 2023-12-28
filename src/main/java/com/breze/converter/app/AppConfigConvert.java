package com.breze.converter.app;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.app.AppConfigDTO;
import com.breze.entity.pojo.app.AppConfig;
import com.breze.entity.vo.app.AppConfigVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author tylt6688
 * @Date 2023/12/12 16:03
 * @Description AppConfig 实体转化
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Mapper
public interface AppConfigConvert {


    AppConfigConvert INSTANCE = Mappers.getMapper(AppConfigConvert.class);

    /**
     * AppConfig 转为 AppConfigVO
     *
     * @param appConfig AppConfig
     * @return AppConfigVO
     */
    AppConfigVO appConfigToAppConfigVO(AppConfig appConfig);

    /**
     * AppConfigDTO 转为 AppConfig
     *
     * @param appConfigDTO AppConfigDTO
     * @return AppConfig
     */
    AppConfig appConfigDTOToAppConfig(AppConfigDTO appConfigDTO);

    Page<AppConfigVO> appConfigPageToAppConfigVOPage(Page<AppConfig> appConfigPage);

}
