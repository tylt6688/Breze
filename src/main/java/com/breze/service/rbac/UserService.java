package com.breze.service.rbac;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.rbac.User;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface UserService extends IService<User> {

    LambdaQueryWrapper<User> searchByCondition(User user);

    /**
     * 插入用户
     *
     * @param user
     * @return boolean
     */
    Boolean insert(User user);

    Boolean update(User user);

    Boolean delete(Long id);

    User getUserByOpenId(String openid);

    User getUserRolesByUserId(Long userId);

    User getUserByUserName(String username);

    String getUserAuthorityInfo(Long userId);

    /**
     * 根据用户id变更是否开启登录提醒
     *
     * @param id
     * @param loginWarn
     * @return true/false
     */
    Boolean updateLoginWarnByUserId(Integer loginWarn, Long id);
    void importUserByExcel(MultipartFile file);
    /**
     * 避免系统用户分配权限变动后redis缓存未发生变动导致缓存不一致
     */
    void clearUserAuthorityInfo(String username);

    void clearUserAuthorityInfoByRoleId(Long roleId);

    void clearUserAuthorityInfoByMenuId(Long menuId);



}
