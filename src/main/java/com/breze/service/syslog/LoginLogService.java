package com.breze.service.syslog;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.entity.vo.sys.LoginLogVO;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 *  登录日志服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
public interface LoginLogService extends IService<LoginLog> {

    List<LoginLogVO> getUserLoginCount();

    List<LoginLogVO> getUserLoginCategory(LocalDateTime localDateTime);

    Boolean clearByDate(LocalDateTime localDateTime);
}
