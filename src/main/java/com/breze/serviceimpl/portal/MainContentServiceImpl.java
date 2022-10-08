package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.breze.entity.pojo.portal.MainContent;
import com.breze.mapper.portal.MainContentMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.service.portal.MainContentService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 主体内容表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Service
public class MainContentServiceImpl extends ServiceImpl<MainContentMapper, MainContent> implements MainContentService {

}