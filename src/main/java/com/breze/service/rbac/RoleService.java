package com.breze.service.rbac;

import com.breze.entity.pojo.rbac.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
public interface RoleService extends IService<Role> {

    List<Role> listRolesByUserId(Long userId);
}
