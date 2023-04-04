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
import com.breze.common.consts.GlobalConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.config.OssConfig;
import com.breze.converter.sys.UserConvert;
import com.breze.entity.dto.sys.UpdatePasswordDTO;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import com.breze.mapper.rbac.MenuMapper;
import com.breze.mapper.rbac.RoleMapper;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.rbac.GroupService;
import com.breze.service.rbac.RoleService;
import com.breze.service.rbac.UserService;
import com.breze.service.tool.QiNiuService;
import com.breze.utils.FileUtil;
import com.breze.utils.RedisUtil;
import com.qiniu.common.QiniuException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.time.LocalDateTime;
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
    @Autowired
    GroupService groupService;

    @Autowired
    RoleService roleService;

    @Autowired
    QiNiuService qiNiuService;

    @Autowired
    OssConfig ossConfig;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    UserMapper userMapper;

    @Autowired
    RoleMapper roleMapper;

    @Autowired
    MenuMapper menuMapper;


    @Override
    public User getUserByUserName(String username) {
        return getOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
    }


    public User getUserRolesByUserId(Long userId) {
        User user = this.getById(userId);
        List<Role> roles = roleMapper.listByUserId(user.getId());
        user.setRoles(roles);
        return user;
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
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
        user.setState(GlobalConstant.STATUS_ON)
                .setAvatar(SystemConstant.DEFAULT_AVATAR)
                .setPassword(bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD));
        return userMapper.insert(user) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean update(UserDTO userDTO) {
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
        return userMapper.updateById(user) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delete(Long id) {
        return userMapper.deleteById(id) > 0;
    }

    @Override
    public Boolean resetUserPassword(Long userId) {
        User user = this.getById(userId);
        user.setPassword(bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD));
        return this.updateById(user);
    }

    @Override
    public String updatePassword(UpdatePasswordDTO updatePasswordDTO) {
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = this.getUserByUserName(username);
        boolean matches = bCryptPasswordEncoder.matches(updatePasswordDTO.getCurrentPass(), user.getPassword());
        if (matches) {
            user.setPassword(bCryptPasswordEncoder.encode(updatePasswordDTO.getPassword()));
            try {
                this.updateById(user);
                return "修改密码成功";
            } catch (Exception e) {
                return "修改密码失败";
            }
        } else {
            return "旧密码不正确";
        }
    }

    @Override
    public String updateAvatar(MultipartFile avatar) {
        try {
            String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            User user = this.getUserByUserName(username);
            if (user.getAvatar() != null && CharSequenceUtil.subSuf(user.getAvatar(), 24).equals(ossConfig.getUrl())) {
                qiNiuService.deleteFile(user.getAvatar());
            }
            String path = qiNiuService.uploadFile(avatar);
            if (path == null) {
                throw new BusinessException(ErrorEnum.FindException, "修改头像失败");
            }
            user.setAvatar(path);
            this.updateById(user);
            return "修改头像成功";
        } catch (QiniuException e) {
            return e.getMessage();
        }
    }


    @Override
    public void updateLoginWarnByUserId(Integer loginWarn) {
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = this.getUserByUserName(username);
        userMapper.updateLoginWarnByUserId(loginWarn, user.getId());
    }

    @Override
    public void updateLastLoginTime(String username) {
        // 更新账户最后一次登录时间
        LambdaUpdateWrapper<User> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        lambdaUpdateWrapper.eq(User::getUsername, username);
        lambdaUpdateWrapper.set(User::getLoginTime, LocalDateTime.now());
        this.update(lambdaUpdateWrapper);
    }

    @Override
    public void importUserByExcel(MultipartFile file) {
        String encode = bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD);
        File coverFile = FileUtil.multipartFileToFile(file);
        EasyExcelFactory.read(coverFile, User.class, new PageReadListener<User>(dataList -> {
            for (User user : dataList) {
                user.setPassword(encode)
                        .setState(GlobalConstant.TYPE_ZERO)
                        .setLoginWarn(GlobalConstant.TYPE_ONE);
                userMapper.insert(user);
            }
        })).sheet().doRead();
    }

    @Override
    public String getUserAuthorityInfo(Long userId) {
        String authority = "";

        User user = userMapper.selectById(userId);
        String key = CacheConstant.AUTHORITY_CODE + user.getUsername();

        // 如果 redis 中存在直接取，没有的话再去数据库查
        if (redisUtil.hasKey(key)) {
            authority = (String) redisUtil.get(key);
        } else {
            // 获取角色
            List<Role> roles = roleMapper.listByUserId(userId);
            if (!roles.isEmpty()) {
                String roleCodes = roles.stream().map(role -> "ROLE_" + role.getCode()).collect(Collectors.joining(","));
                authority = roleCodes.concat(",");
            }

            // 获取菜单权限编码
            List<Long> menuIds = userMapper.getNavMenuIds(userId);
            if (!menuIds.isEmpty()) {
                List<Menu> menus = menuMapper.selectBatchIds(menuIds);
                String menuPerms = menus.stream().map(Menu::getPerms).collect(Collectors.joining(","));
                authority = authority.concat(menuPerms);
            }
            // TODO　避免每次请求都频繁操作多次数据库，所以将权限数据放入 Redis，暂定时间为一小时
            redisUtil.set(key, authority, 60 * 60);
        }
        return authority;
    }

    @Override
    public UserInfoVO getCurrentUserInfo(String username) {
        User user = this.getUserByUserName(username);
        User userRoles = this.getUserRolesByUserId(user.getId());
        UserInfoVO userInfoVo = UserConvert.INSTANCE.userToUserInfoVo(userRoles);
        userInfoVo.setGroupJob(groupService.findGroupAndJobByUserId(user.getId()));
        return userInfoVo;
    }

    @Override
    public UserInfoVO getUserInfoById(Long id) {
        User user = this.getUserRolesByUserId(id);
        return UserConvert.INSTANCE.userToUserInfoVo(user);
    }

    @Override
    public Page<UserVO> getUserPage(Page<User> page, UserDTO userDTO) {
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
        Page<User> pageData = this.page(page, this.searchByCondition(user));
        pageData.getRecords().forEach(u -> u.setRoles(roleService.listByUserId(u.getId())));
        return UserConvert.INSTANCE.userPageToUserVOPage(pageData);
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
}
