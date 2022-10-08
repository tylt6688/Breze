package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.breze.entity.pojo.portal.ModeCard;
import com.breze.mapper.portal.ModeCardMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.portal.ModeCardService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 模块展示表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Service
public class ModeCardServiceImpl extends ServiceImpl<ModeCardMapper, ModeCard> implements ModeCardService {

}
