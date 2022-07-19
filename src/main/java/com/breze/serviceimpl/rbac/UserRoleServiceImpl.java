package com.breze.serviceimpl.rbac;

import com.breze.entity.pojo.rbac.UserRole;
import com.breze.mapper.rbac.UserRoleMapper;
import com.breze.service.rbac.UserRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements UserRoleService {

}
