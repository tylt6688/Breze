package com.breze.mapper.syslog;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.entity.vo.sys.LoginLogVO;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@Mapper
public interface LoginLogMapper extends BaseMapper<LoginLog> {
    List<LoginLogVO> getUserLoginCount();

    List<LoginLogVO> getUserLoginCategory(LocalDateTime localDateTime);
}
