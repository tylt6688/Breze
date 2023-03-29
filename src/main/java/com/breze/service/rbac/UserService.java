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

    /**
     * 多条件搜索查询用户
     *
     * @param user 用户对象
     * @return LambdaQueryWrapper<User>
     */
    LambdaQueryWrapper<User> searchByCondition(User user);

    /**
     * 插入用户
     *
     * @param user 用户对象
     * @return boolean
     */
    Boolean insert(User user);

    /**
     * 更新用户
     *
     * @param user 用户对象
     * @return boolean
     */
    Boolean update(User user);

    /**
     * 删除用户
     *
     * @param userId 用户 id
     * @return boolean
     */
    Boolean delete(Long userId);

    /**
     * 通过用户 id 获取当前用户角色
     *
     * @param userId 用户 id
     * @return User
     */
    User getUserRolesByUserId(Long userId);

    /**
     * 根据用户名获取用户对象
     *
     * @param username 用户名
     * @return User
     */
    User getUserByUserName(String username);

    /**
     * 根据用户 id 查询当前用户权限信息
     *
     * @param userId 用户 id
     * @return String
     */
    String getUserAuthorityInfo(Long userId);

    /**
     * 根据用户id变更是否开启登录提醒
     *
     * @param id        用户id
     * @param loginWarn 登录提醒
     */
    void updateLoginWarnByUserId(Integer loginWarn, Long id);

    /**
     * 更新用户最后登录时间
     *
     * @param username 用户名
     */
    void updateLastLoginTime(String username);

    /**
     * 通过Excel批量导入用户
     *
     * @param file 用户id
     */
    void importUserByExcel(MultipartFile file);

    /**
     * 避免系统用户分配权限变动后redis缓存未发生变动导致缓存不一致
     * 用户变动时清除权限缓存
     *
     * @param username 用户名
     */
    void clearUserAuthorityInfo(String username);

    /**
     * 避免系统用户分配权限变动后redis缓存未发生变动导致缓存不一致
     * 角色变动时清除权限缓存
     *
     * @param roleId 角色 id
     */
    void clearUserAuthorityInfoByRoleId(Long roleId);

    /**
     * 避免系统用户分配权限变动后redis缓存未发生变动导致缓存不一致
     * 菜单变动时清除权限缓存
     *
     * @param menuId 菜单 id
     */
    void clearUserAuthorityInfoByMenuId(Long menuId);


}
