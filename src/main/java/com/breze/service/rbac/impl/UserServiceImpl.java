package com.breze.service.rbac.impl;

import cn.hutool.core.text.CharSequenceUtil;
import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.read.listener.PageReadListener;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.CacheConstant;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.config.OssConfig;
import com.breze.converter.sys.UserConvert;
import com.breze.entity.bo.sys.UserExcelBO;
import com.breze.entity.dto.sys.PermRoleDTO;
import com.breze.entity.dto.sys.UpdatePasswordDTO;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.rbac.UserRole;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import com.breze.mapper.rbac.MenuMapper;
import com.breze.mapper.rbac.RoleMapper;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.core.QiNiuService;
import com.breze.service.rbac.GroupService;
import com.breze.service.rbac.UserRoleService;
import com.breze.service.rbac.UserService;
import com.breze.utils.FileUtil;
import com.breze.utils.RedisUtil;
import com.breze.utils.SecurityUtil;
import com.qiniu.common.QiniuException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Resource
    private RedisUtil redisUtil;

    @Autowired
    private OssConfig ossConfig;

    @Autowired
    private GroupService groupService;

    @Autowired
    private UserRoleService userRoleService;

    @Autowired
    private QiNiuService qiNiuService;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public User getUserByUserName(String username) {
        return userMapper.getUserByUserName(username);
    }


    @Override
    public LambdaQueryWrapper<User> searchByCondition(User user) {
        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
        if (user != null) {
            if (!user.getUsername().isEmpty()) {
                wrapper.like(User::getUsername, user.getUsername());
            }
            if (!user.getTrueName().isEmpty()) {
                wrapper.like(User::getTrueName, user.getTrueName());
            }
            if (!user.getPhone().isEmpty()) {
                wrapper.like(User::getPhone, user.getPhone());
            }
            if (!user.getEmail().isEmpty()) {
                wrapper.like(User::getEmail, user.getEmail());
            }
            if (!user.getCity().isEmpty()) {
                wrapper.like(User::getCity, user.getCity());
            }
        }
        return wrapper;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insert(UserDTO userDTO) {
        try {
            User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
            user.setState(GlobalConstant.STATUS_ON)
                    .setAvatar(SystemConstant.DEFAULT_AVATAR)
                    .setPassword(SecurityUtil.encodePassword(SystemConstant.DEFAULT_PASSWORD));
            return userMapper.insert(user) > 0;
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "添加用户失败");
        }

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean update(UserDTO userDTO) {
        try {
            User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
            return userMapper.updateById(user) > 0;
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "修改用户信息失败");
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delete(List<UserDTO> userDTOList) {
        try {
            return userMapper.deleteBatchIds(UserConvert.INSTANCE.userDTOToUser(userDTOList)) > 0;
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "删除用户失败");
        }

    }

    @Override
    public Boolean resetUserPassword(Long userId) {
        User user = this.getById(userId);
        user.setPassword(SecurityUtil.encodePassword(SystemConstant.DEFAULT_PASSWORD));
        return this.updateById(user);
    }

    @Override
    public Boolean updatePassword(UpdatePasswordDTO updatePasswordDTO) {
        User user = this.getUserByUserName(SecurityUtil.getUsername());
        boolean matches = SecurityUtil.matchesPassword(updatePasswordDTO.getOldPassword(), user.getPassword());
        if (matches) {
            user.setPassword(SecurityUtil.encodePassword(updatePasswordDTO.getNewPassword()));
            try {
                return this.updateById(user);
            } catch (Exception e) {
                throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "修改密码失败");
            }
        } else {
            return false;
        }

    }

    @Override
    public Boolean updateAvatar(MultipartFile avatar) {
        try {
            User user = this.getUserByUserName(SecurityUtil.getUsername());
            if (user.getAvatar() != null && CharSequenceUtil.subSuf(user.getAvatar(), 24).equals(ossConfig.getUrl())) {
                qiNiuService.deleteFile(user.getAvatar());
            }
            String path = qiNiuService.uploadFile(avatar);
            if (path == null) {
                throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "更新头像失败");
            }
            user.setAvatar(path);
            return this.updateById(user);
        } catch (QiniuException e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, e.getMessage());
        }
    }


    @Override
    public Boolean updateLoginWarnByFlag(Integer loginWarn) {
        try {
            User user = this.getUserByUserName(SecurityUtil.getUsername());
            return userMapper.updateLoginWarnByUserId(loginWarn, user.getId());
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "更新登录邮件提醒失败");
        }
    }

    @Override
    public void updateLoginInfo(User user) {
        // 更新账户最后一次登录时间
        LambdaUpdateWrapper<User> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        lambdaUpdateWrapper.eq(User::getUsername, user.getUsername());
        lambdaUpdateWrapper.set(User::getLoginTime, LocalDateTime.now());
        this.update(lambdaUpdateWrapper);
    }

    @Override
    public Boolean importUserByExcel(MultipartFile file) {
        String encode = SecurityUtil.encodePassword(SystemConstant.DEFAULT_PASSWORD);
        File coverFile = FileUtil.multipartFileToFile(file);
        EasyExcelFactory.read(coverFile, User.class, new PageReadListener<User>(dataList -> {
            for (User user : dataList) {
                user.setPassword(encode)
                        .setState(GlobalConstant.TYPE_ZERO)
                        .setLoginWarn(GlobalConstant.TYPE_ONE);
                try {
                    userMapper.insert(user);
                } catch (Exception e) {
                    throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导入用户Excel表失败");
                }
            }
        })).sheet().doRead();
        return true;


    }

    @Override
    // FIXME 等待修复问题
    public String getUserAuthorityInfo(User user) {
        String authority;
        String key = CacheConstant.AUTHORITY_CODE + user.getUsername();
        // 如果 redis 中存在直接取，没有的话再去数据库查
        if (redisUtil.hasKey(key)) {
            authority = (String) redisUtil.get(key);
        } else {
            // 获取角色
            List<Role> roles = roleMapper.listByUserId(user.getId());
            if (roles.isEmpty()) {
                throw new BusinessException(ErrorEnum.UNKNOWN_ACCOUNT, ErrorEnum.UNKNOWN_ACCOUNT.getErrorName());
            }
            String roleCodes = roles.stream().map(role -> "ROLE_" + role.getCode()).collect(Collectors.joining(","));
            authority = roleCodes.concat(",");
            // 获取菜单权限编码
            List<Long> menuIds = userMapper.getNavMenuIds(user.getId());
            if (menuIds.isEmpty()) {
                throw new BusinessException(ErrorEnum.NO_PERMISSION, ErrorEnum.NO_PERMISSION.getErrorName());
            }
            List<Menu> menus = menuMapper.selectBatchIds(menuIds);
            String menuPerms = menus.stream().map(Menu::getPerms).collect(Collectors.joining(","));
            authority = authority.concat(menuPerms);

            // 避免每次请求都频繁操作多次数据库，所以将权限数据放入 Redis，暂定时间为一小时
            redisUtil.set(key, authority, 60 * 60);
        }
        return authority;
    }

    @Override
    public UserInfoVO getCurrentUserInfo(String username) {
        User user = this.getUserByUserName(username);
        UserInfoVO userInfoVo = UserConvert.INSTANCE.userToUserInfoVo(user);
        userInfoVo.setRoles(roleMapper.listByUserId(user.getId()));
        userInfoVo.setGroupJob(groupService.findGroupAndJobByUserId(user.getId()));
        return userInfoVo;
    }

    @Override
    public UserInfoVO getUserInfoById(Long id) {
        User user = this.getById(id);
        UserInfoVO userInfoVo = UserConvert.INSTANCE.userToUserInfoVo(user);
        userInfoVo.setRoles(roleMapper.listByUserId(user.getId()));
        return userInfoVo;
    }

    @Override
    public Page<UserVO> getUserPage(Page<User> page, UserDTO userDTO) {
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
        Page<User> userPage = this.page(page, this.searchByCondition(user));
        Page<UserVO> userVOPage = UserConvert.INSTANCE.userToUserVO(userPage);
        userVOPage.getRecords().forEach(u -> {
                    u.setRoles(roleMapper.listByUserId(u.getId()));
//                    u.setAvatar(qiNiuService.addDomainPrefix(u.getAvatar()));
                }

        );
        return userVOPage;
    }

    @Override
    public Boolean permRole(PermRoleDTO permRoleDTO) {
        List<UserRole> userRoles = new ArrayList<>();
        try {
            Arrays.stream(permRoleDTO.getUserIds()).forEach(uid -> {
                Arrays.stream(permRoleDTO.getRoleIds()).forEach(roleId -> {
                    UserRole userRole = new UserRole();
                    userRole.setRoleId(roleId).setUserId(uid);
                    userRoles.add(userRole);
                });
                userRoleService.remove(new LambdaQueryWrapper<UserRole>().eq(UserRole::getUserId, uid));
            });
            userRoleService.saveBatch(userRoles);
            // 删除缓存
            Arrays.stream(permRoleDTO.getUserIds()).forEach(uid -> {
                User sysUser = this.getById(uid);
                this.clearUserAuthorityInfo(sysUser.getUsername());
            });
            return true;
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "分配角色失败");
        }

    }


    @Override
    public void clearUserAuthorityInfo(String username) {
        redisUtil.delete(CacheConstant.AUTHORITY_CODE + username);
    }


    @Override
    public void clearUserAuthorityInfoByRoleId(Long roleId) {
        List<User> users = this.list(new QueryWrapper<User>().inSql("id", "SELECT user_id FROM sys_user_role WHERE role_id = " + roleId));
        users.forEach(user -> this.clearUserAuthorityInfo(user.getUsername()));
    }


    @Override
    public void clearUserAuthorityInfoByMenuId(Long menuId) {
        List<User> users = userMapper.listByMenuId(menuId);
        users.forEach(user -> this.clearUserAuthorityInfo(user.getUsername()));
    }

    @Override
    public void exportExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            List<UserExcelBO> userExcelBOS = UserConvert.INSTANCE.userListToUserExcelBOLost(this.list());
            EasyExcelFactory.write(response.getOutputStream(), UserExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(userExcelBOS);
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导出Excel表失败");
        }
    }

    @Override
    public void exportTemplateExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            UserExcelBO userExcel = new UserExcelBO("2023001", "张三", "18888888888", "zhangsan@email.com", "济南");
            EasyExcelFactory.write(response.getOutputStream(), UserExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(Arrays.asList(userExcel));
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导出模板Excel表失败");
        }
    }

}
