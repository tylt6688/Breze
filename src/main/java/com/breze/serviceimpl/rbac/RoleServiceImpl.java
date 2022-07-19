package com.breze.serviceimpl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.entity.pojo.rbac.Role;
import com.breze.mapper.rbac.RoleMapper;
import com.breze.service.rbac.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Override
    public List<Role> listRolesByUserId(Long userId) {
        List<Role> roles = this.list(new QueryWrapper<Role>().inSql("id", "SELECT role_id FROM sys_user_role WHERE user_id = " + userId));
        return roles;
    }
}
