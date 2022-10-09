package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.common.result.Result;
import com.breze.entity.pojo.rbac.User;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface UserService extends IService<User> {


    Result insertUser(User user);

    int updateUser(User user);

    int deleteUserById(Long id);

    User getByOpenId(String openid);

    User getByUserName(String username);

    String getUserAuthorityInfo(Long userId);

    Boolean updateLoginWarnById(Integer loginwarn, Long id);

    // 避免系统用户分配权限变动后redis缓存未发生变动导致缓存不一致
    void clearUserAuthorityInfo(String username);

    void clearUserAuthorityInfoByRoleId(Long roleId);

    void clearUserAuthorityInfoByMenuId(Long menuId);


}
