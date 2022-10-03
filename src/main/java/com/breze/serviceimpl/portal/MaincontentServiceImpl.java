package com.breze.serviceimpl.portal;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.portal.Maincontent;
import com.breze.mapper.portal.MaincontentMapper;
import com.breze.service.portal.MaincontentService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 主体内容表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-02
 */
@Service
public class MaincontentServiceImpl extends ServiceImpl<MaincontentMapper, Maincontent> implements MaincontentService {

}
