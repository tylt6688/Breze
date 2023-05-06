package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.portal.ModeCardDTO;
import com.breze.entity.pojo.portal.ModeCard;
import com.breze.entity.vo.portal.ModeCardVO;

import java.util.List;

/**
 * <p>
 * 模块展示表 服务类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
public interface ModeCardService extends IService<ModeCard> {
    /**
     *  分页获取模块信息
     *
     * @Params [page, modeTitle]
     * @Return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.breze.entity.vo.portal.ModeCardVO>
     */
    Page<ModeCardVO> getModePage(Page<ModeCard> page, String modeTitle);
    /**
     *  通过Id获取指定模块 
     *
     * @Params [id] 
     * @Return com.breze.entity.pojo.portal.ModeCard
     */
    ModeCard getModeById(Long id);
    /**
     *  新增模块 
     *
     * @Params [modeCardDTO] 
     * @Return java.lang.Boolean
     */
    Boolean insertModeCard(ModeCardDTO modeCardDTO);
    /**
     *  修改模块 
     *
     * @Params [modeCardDTO] 
     * @Return java.lang.Boolean
     */
    Boolean updateModeCard(ModeCardDTO modeCardDTO);
    /**
     *  删除模块 
     *
     * @Params [id] 
     * @Return java.lang.Boolean
     */
    Boolean deleteModeById(Long id);
}
