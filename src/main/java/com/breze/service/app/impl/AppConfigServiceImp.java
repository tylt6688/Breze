package com.breze.service.app.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.converter.app.AppConfigConvert;
import com.breze.entity.dto.app.AppConfigDTO;
import com.breze.entity.pojo.app.AppConfig;
import com.breze.entity.vo.app.AppConfigVO;
import com.breze.mapper.app.AppConfigMapper;
import com.breze.service.app.AppConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2023/12/12 14:09
 */
@DS("slave")
@Service
public class AppConfigServiceImp extends ServiceImpl<AppConfigMapper, AppConfig> implements AppConfigService {

    private final AppConfigMapper appConfigMapper;

    @Autowired
    public AppConfigServiceImp(AppConfigMapper appConfigMapper){
        this.appConfigMapper = appConfigMapper;
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insert(AppConfigDTO appConfigDTO) {
        AppConfig appConfig = AppConfigConvert.INSTANCE.appConfigDTOToAppConfig(appConfigDTO);
        return this.save(appConfig);
    }

    @Override
    public Boolean delete(List<AppConfigDTO> appConfigDTOList) {
        return appConfigMapper.deleteBatchIds(appConfigDTOList) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean update(AppConfigDTO appConfigDTO) {
        AppConfig appConfig = AppConfigConvert.INSTANCE.appConfigDTOToAppConfig(appConfigDTO);
        return this.updateById(appConfig);
    }

    @Override
    public Page<AppConfigVO> getAppConfigPage(Page<AppConfig> page, AppConfigDTO appConfigDTO) {
        AppConfig appConfig = AppConfigConvert.INSTANCE.appConfigDTOToAppConfig(appConfigDTO);
        Page<AppConfig> appConfigPage = this.page(page, this.searchByCondition(appConfig));
        return AppConfigConvert.INSTANCE.appConfigPageToAppConfigVOPage(appConfigPage);
    }

    @Override
    public LambdaQueryWrapper<AppConfig> searchByCondition(AppConfig appConfig) {
        LambdaQueryWrapper<AppConfig> wrapper = new LambdaQueryWrapper<>();
        if (appConfig != null) {
            if (!appConfig.getAppName().isEmpty()) {
                wrapper.like(AppConfig::getAppName, appConfig.getAppName());
            }
            if (!appConfig.getAppVersion().isEmpty()) {
                wrapper.like(AppConfig::getAppVersion, appConfig.getAppVersion());
            }
        }
        return wrapper;
    }


}
