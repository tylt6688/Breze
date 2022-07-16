package com.breze.service.tool;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.tool.Ossfile;
import com.breze.entity.dto.ShareDto;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
public interface OssfileService extends IService<Ossfile> {

    List<ShareDto> selectShare();

}
