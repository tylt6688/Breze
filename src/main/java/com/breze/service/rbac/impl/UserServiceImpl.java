package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.User;
import com.breze.mapper.rbac.UserMapper;
import com.breze.service.rbac.MenuService;
import com.breze.service.rbac.RoleService;
import com.breze.service.rbac.UserService;
import com.breze.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    UserMapper userMapper;
    @Autowired
    RoleService roleService;

    @Autowired
    MenuService menuService;

    @Autowired
    RedisUtil redisUtil;


    @Override
    public User getByUserName(String username) {
        return getOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
    }

    @Override
    public User getByOpenId(String openid) {
        return getOne(new LambdaQueryWrapper<User>().eq(User::getOpenId, openid));
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insertUser(User user) {
        user.setState(GlobalConstant.STATUS_ON)
                .setAvatar(SystemConstant.DEFAULT_AVATAR)
                .setPassword(new BCryptPasswordEncoder().encode(SystemConstant.DEFAULT_PASSWORD));
        return userMapper.insert(user) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean updateUser(User user) {
        return userMapper.updateById(user) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean deleteUserById(Long id) {
        return userMapper.deleteById(id) > 0;
    }

    /**
     * @return java.lang.String
     * @Author tylt
     * @Description 获取角色权限具体实现代码
     * @Date 2022/3/6 15:55
     * @Method updateLoginWarnById
     * @Param [userId]
     */
    @Override
    public String getUserAuthorityInfo(Long userId) {
        String authority = "";

        User user = userMapper.selectById(userId);
        String key = "GrantedAuthority:" + user.getUsername();

        // 如果redis中存在直接拿，没有的话再去查数据库
        if (redisUtil.haveKey(key)) {
            authority = (String) redisUtil.get(key);
        } else {
            // 获取角色
            List<Role> roles = roleService.list(new LambdaQueryWrapper<Role>().inSql(Role::getId, "SELECT role_id FROM sys_user_role WHERE user_id = " + userId));

            if (!roles.isEmpty()) {
                String roleCodes = roles.stream().map(role -> "ROLE_" + role.getCode()).collect(Collectors.joining(","));
                authority = roleCodes.concat(",");
            }

            // 获取菜单权限编码
            List<Long> menuIds = userMapper.getNavMenuIds(userId);
            if (!menuIds.isEmpty()) {
                List<Menu> menus = menuService.listByIds(menuIds);
                String menuPerms = menus.stream().map(Menu::getPerms).collect(Collectors.joining(","));
                authority = authority.concat(menuPerms);
            }
            // TODO　避免每次请求都频繁操作多次数据库，所以将权限数据放入redis，暂定时间为一小时
            redisUtil.set(key, authority, 60 * 60);
        }
        return authority;
    }

    /**
     * @return java.lang.Boolean
     * @Author tylt
     * @Description 登录邮件提醒
     * @Date 2022/3/6 15:55
     * @Method updateLoginWarnById
     * @Param [loginwarn, id]
     */
    @Override
    public Boolean updateLoginWarnById(Integer loginwarn, Long id) {
        return userMapper.updateLoginWarnById(loginwarn, id);
    }

    /**
     * @return void
     * @Author tylt
     * @Description 用户变动时清除权限缓存
     * @Date 2022/3/6 17:47
     * @Method clearUserAuthorityInfo
     * @Param [username]
     */
    @Override
    public void clearUserAuthorityInfo(String username) {
        redisUtil.delete("GrantedAuthority:" + username);
    }

    /**
     * @return void
     * @Author tylt
     * @Description 角色变动时清除权限缓存
     * @Date 2022/3/6 17:47
     * @Method clearUserAuthorityInfoByRoleId
     * @Param [roleId]
     */
    @Override
    public void clearUserAuthorityInfoByRoleId(Long roleId) {
        List<User> users = this.list(new QueryWrapper<User>().inSql("id", "select user_id userDTOToUser sys_user_role where role_id = " + roleId));

        users.forEach(u -> {
            this.clearUserAuthorityInfo(u.getUsername());
        });

    }

    /**
     * @return void
     * @Author tylt
     * @Description 菜单变动时清除权限缓存
     * @Date 2022/3/6 17:49
     * @Method clearUserAuthorityInfoByMenuId
     * @Param [menuId]
     */
    @Override
    public void clearUserAuthorityInfoByMenuId(Long menuId) {
        List<User> users = userMapper.listByMenuId(menuId);

        users.forEach(u -> {
            this.clearUserAuthorityInfo(u.getUsername());
        });
    }
}
