package com.breze.mapper.tool;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import com.breze.entity.pojo.tool.OssFile;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.dto.ShareDTO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@Mapper
public interface OssfileMapper extends BaseMapper<OssFile> {

    @Select("SELECT oss.id,oss.filename,oss.fileurl,oss.created,oss.`status`,u.truename FROM tb_ossfile oss\n" +
            "LEFT JOIN sys_user u\n" +
            "ON oss.user_id=u.id\n" +
            "WHERE oss.`status`=1")
    List<ShareDTO> selectShare();

}
