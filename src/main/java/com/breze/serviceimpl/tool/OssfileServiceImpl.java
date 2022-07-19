package com.breze.serviceimpl.tool;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.tool.Ossfile;
import com.breze.entity.dto.ShareDto;
import com.breze.mapper.tool.OssfileMapper;
import com.breze.service.tool.OssfileService;

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
public class OssfileServiceImpl extends ServiceImpl<OssfileMapper, Ossfile> implements OssfileService {

    @Autowired
    OssfileMapper ossfileMapper;

    @Override
    public List<ShareDto> selectShare() {
        return ossfileMapper.selectShare();
    }
}
