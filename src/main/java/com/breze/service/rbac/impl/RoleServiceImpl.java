package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.sys.RoleConvert;
import com.breze.entity.dto.sys.RoleDTO;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.pojo.rbac.RoleMenu;
import com.breze.entity.pojo.rbac.UserRole;
import com.breze.entity.vo.sys.RoleVO;
import com.breze.mapper.rbac.RoleMapper;
import com.breze.service.rbac.RoleMenuService;
import com.breze.service.rbac.RoleService;
import com.breze.service.rbac.UserRoleService;
import com.breze.service.rbac.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Autowired
    UserService userService;

    @Autowired
    UserRoleService userRoleService;

    @Autowired
    RoleMenuService roleMenuService;

    @Autowired
    RoleMapper roleMapper;

    @Override
    public List<RoleVO> listByUserId(Long userId) {
        return RoleConvert.INSTANCE.roleTORoleVO(roleMapper.listByUserId(userId));
    }

    @Override
    public RoleVO getRoleInfoById(Long id) {
        Role role = this.getById(id);
        // 获取角色相关联的菜单 id
        List<RoleMenu> menus = roleMenuService.list(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getRoleId, id));
        List<Long> menuIds = menus.stream().map(RoleMenu::getMenuId).collect(Collectors.toList());
        RoleVO roleVO = RoleConvert.INSTANCE.roleTORoleVO(role);
        roleVO.setMenuIds(menuIds);

        return roleVO;
    }

    @Override
    public Boolean permMenu(Long roleId, Long[] menuIds) {
        try {
            List<RoleMenu> roleMenus = new ArrayList<>();
            Arrays.stream(menuIds).forEach(menuId -> {
                RoleMenu roleMenu = new RoleMenu();
                roleMenu.setMenuId(menuId)
                        .setRoleId(roleId);
                roleMenus.add(roleMenu);
            });
            // 先删除原来的记录，再保存新的
            boolean remove = roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().eq(RoleMenu::getRoleId, roleId));
            boolean saveBatch = roleMenuService.saveBatch(roleMenus);
            // 删除缓存
            userService.clearUserAuthorityInfoByRoleId(roleId);
            return remove && saveBatch;
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION);
        }

    }


    @Override
    public Boolean insert(RoleDTO roleDTO) {
        try {
            Role role = RoleConvert.INSTANCE.roleDTOTORole(roleDTO);
            return this.save(role);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION);
        }
    }

    @Override
    public Boolean update(RoleDTO roleDTO) {
        try {
            Role role = RoleConvert.INSTANCE.roleDTOTORole(roleDTO);
            // 更新缓存
            userService.clearUserAuthorityInfoByRoleId(role.getId());
            return this.updateById(role);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "更新角色失败");
        }
    }

    @Override
    public Boolean delete(Long[] roleIds) {
        for (Long roleId : roleIds) {
            long count = userRoleService.count(new LambdaQueryWrapper<UserRole>().eq(UserRole::getRoleId, roleId));
            if (count > 0) {
                throw new BusinessException(ErrorEnum.ERROR_OPERATION, "角色已被使用，请先解除占用");
            }
        }
        try {
            List<Long> ids = Arrays.asList(roleIds);
            // 批量删除需要传入一个集合
            roleMapper.deleteBatchIds(ids);
            // 删除中间表信息
            userRoleService.remove(new LambdaQueryWrapper<UserRole>().in(UserRole::getRoleId, ids));
            roleMenuService.remove(new LambdaQueryWrapper<RoleMenu>().in(RoleMenu::getRoleId, ids));
            // 批量同步删除缓存
            for (Long id : roleIds) {
                userService.clearUserAuthorityInfoByRoleId(id);
            }
            return true;
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION);
        }
    }
}
