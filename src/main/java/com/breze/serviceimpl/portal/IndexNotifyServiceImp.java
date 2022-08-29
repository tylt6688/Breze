package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.breze.entity.pojo.portal.IndexNotify;
import com.breze.mapper.portal.IndexNotifyMapper;
import com.breze.service.portal.IndexNotifyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-16
 */
@Service
@DS("portal")
public class IndexNotifyServiceImp extends ServiceImpl<IndexNotifyMapper, IndexNotify> implements IndexNotifyService {

}
