package com.breze.mapper.rbac;
import org.apache.ibatis.annotations.Param;

import org.apache.ibatis.annotations.Mapper;
import com.breze.entity.pojo.rbac.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

    List<Long> getNavMenuIds(Long userId);

    List<User> listByMenuId(Long menuId);

    User getUserByUserName(String username);


    /**
     * 根据用户id变更邮件提醒状态
     * @param loginWarn
     * @param id
     * @return
     */
    Boolean updateLoginWarnByUserId(@Param("loginWarn") Integer loginWarn, @Param("id") Long id);
}
