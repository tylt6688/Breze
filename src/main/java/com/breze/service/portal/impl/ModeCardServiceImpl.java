package com.breze.service.portal.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.converter.portal.ModeCardConvert;
import com.breze.entity.dto.portal.ModeCardDTO;
import com.breze.entity.pojo.portal.ModeCard;
import com.breze.entity.vo.portal.ModeCardVO;
import com.breze.mapper.portal.ModeCardMapper;
import com.breze.service.portal.ModeCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 * 模块展示表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Transactional
@Service
public class ModeCardServiceImpl extends ServiceImpl<ModeCardMapper, ModeCard> implements ModeCardService {

    @Autowired
    private ModeCardMapper modeCardMapper;

    @Override
    public Page<ModeCardVO> getModePage(Page<ModeCard> page, String modeTitle) {
        Page<ModeCard> modeCardPage = modeCardMapper.selectPage(page, new QueryWrapper<ModeCard>().eq("mode_title", modeTitle));
        Page<ModeCardVO> modeCardVOPage = ModeCardConvert.INSTANCE.modeCardPageToModeCardVOPage(modeCardPage);
        return modeCardVOPage;
    }

    @Override
    public ModeCard getModeById(Long id) {
        ModeCard modeCard = modeCardMapper.selectById(id);
        return modeCard;
    }

    @Override
    @Transactional
    public Boolean insertModeCard(ModeCardDTO modeCardDTO) {
        ModeCard modeCard = ModeCardConvert.INSTANCE.modeCardDTOToModeCard(modeCardDTO);
        return modeCardMapper.insert(modeCard)>0;
    }

    @Override
    @Transactional
    public Boolean updateModeCard(ModeCardDTO modeCardDTO) {
        ModeCard modeCard = ModeCardConvert.INSTANCE.modeCardDTOToModeCard(modeCardDTO);
        return modeCardMapper.updateById(modeCard)>0;
    }

    @Override
    @Transactional
    public Boolean deleteModeById(Long id) {
        return modeCardMapper.deleteById(id)>0;
    }
}
