package com.breze.serviceimpl.tool;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.tool.OssFile;
import com.breze.entity.dto.ShareDTO;
import com.breze.mapper.tool.OssfileMapper;
import com.breze.service.tool.OssFileService;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@Service
public class OssFileServiceImpl extends ServiceImpl<OssfileMapper, OssFile> implements OssFileService {

    @Autowired
    OssfileMapper ossfileMapper;

    @Override
    public List<ShareDTO> selectShare() {
        return ossfileMapper.selectShare();
    }

}
