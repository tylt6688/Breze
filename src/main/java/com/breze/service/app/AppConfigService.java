package com.breze.service.app;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.app.AppConfigDTO;
import com.breze.entity.pojo.app.AppConfig;
import com.breze.entity.vo.app.AppConfigVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tylt6688
 * @since 2023/12/12 14:09
 */
public interface AppConfigService extends IService<AppConfig> {

    Boolean insert(AppConfigDTO appConfigDTO);

    Boolean delete(List<AppConfigDTO> appConfigDTOList);
    Boolean update(AppConfigDTO appConfigDTO);

    Page<AppConfigVO> getAppConfigPage(Page<AppConfig> page, AppConfigDTO appConfigDTO);

    /**
     * 多条件搜索查询
     *
     * @param appConfig 对象
     * @return LambdaQueryWrapper<AppConfig>
     */
    LambdaQueryWrapper<AppConfig> searchByCondition(AppConfig appConfig);
}
