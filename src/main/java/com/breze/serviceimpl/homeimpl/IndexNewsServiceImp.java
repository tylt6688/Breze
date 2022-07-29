package com.breze.serviceimpl.homeimpl;

import com.breze.entity.pojo.homedo.IndexNews;
import com.breze.mapper.homemapper.IndexNewsMapper;
import com.breze.service.homeservice.IndexNewsService;
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
public class IndexNewsServiceImp extends ServiceImpl<IndexNewsMapper, IndexNews> implements IndexNewsService {

}
