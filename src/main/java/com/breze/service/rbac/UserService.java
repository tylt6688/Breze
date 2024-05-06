package com.breze.service.rbac;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.sys.PermRoleDTO;
import com.breze.entity.dto.sys.UpdatePasswordDTO;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
     * @param userDTO 用户传输对象
     * @return boolean
     */
    Boolean insert(UserDTO userDTO);

    /**
     * 更新用户
     *
     * @param userDTO 用户传输对象
     * @return boolean
     */
    Boolean update(UserDTO userDTO);

    /**
     * 删除用户
     *
     * @param userDTOList 用户列表
     * @return boolean
     */
    Boolean delete(List<UserDTO> userDTOList);

    /**
     * 重置用户密码
     *
     * @param userId 用户 id
     * @return boolean
     */
    Boolean resetUserPassword(Long userId);

    /**
     * 更新修改密码
     *
     * @param updatePasswordDTO 更新密码传输对象
     * @return boolean
     */
    Boolean updatePassword(UpdatePasswordDTO updatePasswordDTO);

    /**
     * 更新用户头像
     *
     * @param avatar 用户头像
     * @return boolean
     */
    Boolean updateAvatar(MultipartFile avatar);

    /**
     * 根据用户名获取用户对象
     *
     * @param username 用户名
     * @return User
     */
    User getUserByUserName(String username);

    /**
     * 查询当前用户权限信息
     *
     * @return String
     */
    String getUserAuthorityInfo(User user);

    /**
     * 查询当前用户个人中心信息
     *
     * @param username 用户名，通过 Security 传入
     * @return UserInfoVO
     */
    UserInfoVO getCurrentUserInfo(String username);


    /**
     * 根据用户 id 查询用户信息
     *
     * @param id 用户 id
     * @return UserInfoVO
     */
    UserInfoVO getUserInfoById(Long id);

    /**
     * 根据 UserDTO 分页获取用户表数据
     *
     * @param page    分页对象
     * @param userDTO 用户传输实体
     * @return Page<UserVO>
     */
    Page<UserVO> getUserPage(Page<User> page, UserDTO userDTO);

    /**
     * 根据 permRoleDTO 分配用户角色
     *
     * @param permRoleDTO 角色分配传输对象
     * @return Boolean
     */
    Boolean permRole(PermRoleDTO permRoleDTO);

    /**
     * 根据用户id变更是否开启登录提醒
     *
     * @param loginWarn 登录提醒
     * @return Boolean
     */
    Boolean updateLoginWarnByFlag(Integer loginWarn);


    /**
     * 通过Excel批量导入用户
     *
     * @param file 用户id
     * @return Boolean
     */
    Boolean importUserByExcel(MultipartFile file);

    /**
     * 更新用户登录信息
     *
     * @param user 用户对象
     */
    void updateLoginInfo(User user);

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

    /**
     * 导出用户表Excel
     *
     * @param response Http响应
     */
    void exportExcel(HttpServletResponse response);

    /**
     * 导出用户上传模板表
     *
     * @param response Http响应
     */
    void exportTemplateExcel(HttpServletResponse response);
}
