package com.breze.service.tool;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.tool.OssFile;
import com.breze.entity.dto.ShareDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
public interface OssFileService extends IService<OssFile> {

    List<ShareDTO> selectShare();

}
