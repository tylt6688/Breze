package com.breze.service.portal.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.tool.OSS;
import com.breze.mapper.tool.OssFileMapper;
import com.breze.service.portal.OssFileService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@DS("portal")
@Transactional
@Service
public class OssFileServiceImpl extends ServiceImpl<OssFileMapper, OSS> implements OssFileService {

}
