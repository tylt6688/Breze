package com.breze.controller.rbac;


import cn.hutool.core.text.CharSequenceUtil;
import com.alibaba.excel.EasyExcelFactory;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.dto.UpdatePasswordDTO;
import com.breze.entity.dto.UserDTO;
import com.breze.entity.mapstruct.UserConvert;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.rbac.UserGroupJob;
import com.breze.entity.pojo.rbac.UserRole;
import com.breze.entity.vo.UserInfoVo;
import com.qiniu.common.QiniuException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Api(tags = "用户管理")
@RestController
@RequestMapping("/sys/user")
public class UserController extends BaseController {

    @BrezeLog("获取当前用户信息")
    @ApiOperation(value = "获取当前登录用户信息", notes = "用于当前登录用户个人中心信息展示")
    @GetMapping("/get_userinfo")
    public Result getUserInfo(Principal principal) {
        User user = userService.getUserByUserName(principal.getName());
        userService.getUserRolesByUserId(user.getId());
        UserInfoVo userInfoVo = UserConvert.INSTANCE.userToUserInfoVo(user);
        userInfoVo.setGroupJob(groupService.findGroupAndJobByUserId(user.getId()));
        return Result.createSuccessMessage("获取个人信息成功", userInfoVo);
    }

    @BrezeLog("根据ID获取用户信息")
    @ApiOperation("根据ID获取用户信息")
    @ApiImplicitParam(name = "id", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @GetMapping("/info/{id}")
    public Result info(@PathVariable Long id) {
        User user = userService.getUserRolesByUserId(id);
        UserInfoVo userInfoVo = UserConvert.INSTANCE.userToUserInfoVo(user);
        return Result.createSuccessMessage("获取用户信息成功", userInfoVo);
    }

    @BrezeLog("获取全部用户信息")
    @ApiOperation("获取全部用户信息，可多条件联合查询，为空则显示全部")
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:user:select')")
    // FIXME: 2022/11/23 有待优化，做多条件联合查询
    public Result select(@RequestParam String username) {
        Page<User> pageData = userService.page(getPage(), new LambdaQueryWrapper<User>().like(CharSequenceUtil.isNotBlank(username), User::getUsername, username));
        pageData.getRecords().forEach(u -> u.setRoles(roleService.listByUserId(u.getId())));
        return Result.createSuccessMessage("", pageData);
    }


    @BrezeLog("新增用户")
    @ApiOperation("新增用户")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result insert(@Validated @RequestBody UserDTO userDTO) {
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);
        userService.insertUser(user);
        // 2022/9/23 15:30 FIXME: 添加 用户岗位 UP BY LUCIFER-LGX
        UserGroupJob uj = UserConvert.INSTANCE.userDTOToUserGroupJob(userDTO);
        userGroupJobService.insert(uj);

        // 2022/9/23 15:31 FIXME: 添加 部门岗位 UP BY LUCIFER-LGX
        GroupJob gj = UserConvert.INSTANCE.userDTOToGroupJob(userDTO);
        groupJobService.insert(gj);

        return Result.createSuccessMessage("添加用户成功");
    }

    @BrezeLog("删除用户")
    @ApiOperation("删除用户信息")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)
    @Transactional(rollbackFor = Exception.class)
    @PostMapping("/delete")
    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result delete(@RequestBody Long[] ids) {
        userService.removeByIds(Arrays.asList(ids));
        userRoleService.remove(new LambdaQueryWrapper<UserRole>().in(UserRole::getUserId, ids));
        // 2022/9/23 17:03 TODO: 需要修改 用户岗位 功能 UP BY LUCIFER-LGX
        return Result.createSuccessMessage("删除成功");
    }

    @BrezeLog("修改用户")
    @ApiOperation("修改用户")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result update(@Validated @RequestBody UserDTO userDTO) {
        // 2022/9/23 15:28 FIXME: Use MapStruct UP BY LUCIFER-LGX
        User user = UserConvert.INSTANCE.userDTOToUser(userDTO);

        // 2022/9/23 16:46 FIXME: 修改 用户岗位信息 UP BY LUCIFER-LGX
        UserGroupJob uj = userGroupJobService.getOne(new QueryWrapper<UserGroupJob>().eq("user_id", userDTO.getId()));
        uj.setJobId(userDTO.getJobId());
        userGroupJobService.updateById(uj);

        // 2022/9/23 15:27 FIXME: 修改用户 UP BY LUCIFER-LGX
        userService.updateUser(user);
        return Result.createSuccessMessage("", user);
    }


    @BrezeLog("分配单个用户角色")
    @ApiOperation("分配单个用户角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "roleIds", value = "角色ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)
    })
    @PostMapping("/role_perm/{userId}")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result rolePerm(@RequestBody Long[] roleIds,@PathVariable Long userId) {
        List<UserRole> userRoles = new ArrayList<>();
        Arrays.stream(roleIds).forEach(roleId -> {
            UserRole userRole = new UserRole();
            userRole.setRoleId(roleId)
                    .setUserId(userId);
            userRoles.add(userRole);
        });
        userRoleService.remove(new LambdaQueryWrapper<UserRole>().eq(UserRole::getUserId, userId));
        userRoleService.saveBatch(userRoles);
        // 删除缓存
        User sysUser = userService.getById(userId);
        userService.clearUserAuthorityInfo(sysUser.getUsername());
        return Result.createSuccessMessage("分配单个用户角色成功");
    }

    @BrezeLog("批量分配用户角色")
    @ApiOperation("批量分配用户角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "userIds", value = "用户ID", required = true, dataType = "Long[]", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "roleIds", value = "角色ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)
    })
    @PostMapping("/role_more_perm")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result rolePermMore(@RequestBody Long[] roleIds,@RequestParam Long[] userIds) {
        List<UserRole> userRoles = new ArrayList<>();
        Arrays.stream(userIds).forEach(uid -> {
            Arrays.stream(roleIds).forEach(roleId -> {
                UserRole userRole = new UserRole();
                userRole.setRoleId(roleId)
                        .setUserId(uid);
                userRoles.add(userRole);
            });
            userRoleService.remove(new LambdaQueryWrapper<UserRole>().eq(UserRole::getUserId, uid));
        });
        userRoleService.saveBatch(userRoles);
        // 删除缓存
        Arrays.stream(userIds).forEach(uid -> {
            User sysUser = userService.getById(uid);
            userService.clearUserAuthorityInfo(sysUser.getUsername());
        });

        return Result.createSuccessMessage("多用户批量分配角色成功");
    }

    @BrezeLog("重置用户密码")
    @ApiOperation("重置用户密码")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @PostMapping("/reset_password")
    @PreAuthorize("hasAuthority('sys:user:repass')")
    public Result resetPassword(@RequestParam Long userId) {
        User user = userService.getById(userId);
        user.setPassword(bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD));
        try {
            userService.updateById(user);
            return Result.createSuccessMessage("重置密码成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "重置密码失败");
        }

    }

    @BrezeLog("修改用户密码")
    @ApiOperation("修改用户密码")
    @PostMapping("/update_password")
    public Result updatePassword(@Validated @RequestBody UpdatePasswordDTO updatePasswordDto, Principal principal) {
        User user = userService.getUserByUserName(principal.getName());
        boolean matches = bCryptPasswordEncoder.matches(updatePasswordDto.getCurrentPass(), user.getPassword());
        if (matches) {
            user.setPassword(bCryptPasswordEncoder.encode(updatePasswordDto.getPassword()));
            try {
                userService.updateById(user);
                return Result.createSuccessMessage("修改密码成功");
            } catch (Exception e) {
                throw new BusinessException(ErrorEnum.FindException, "修改密码失败");
            }
        } else {
            return Result.createFailMessage(ErrorEnum.FindException, "旧密码不正确");
        }

    }

    @BrezeLog("修改用户头像")
    @ApiOperation("修改用户头像")
    @ApiImplicitParam(name = "avatar", value = "头像", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @PostMapping("/update_avatar")
    public Result updateAvatar(@RequestParam MultipartFile avatar) throws QiniuException {
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.getUserByUserName(username);
        if (user.getAvatar() != null && CharSequenceUtil.subSuf(user.getAvatar(), 24).equals(ossConfig.getUrl())) {
            qiNiuService.deleteFile(user.getAvatar());
        }
        String path = qiNiuService.uploadFile(avatar);
        if (path == null) {
            throw new BusinessException(ErrorEnum.FindException, "修改头像失败");
        }
        user.setAvatar(path);
        userService.updateById(user);
        return Result.createSuccessMessage("修改头像成功");
    }

    @BrezeLog("更新用户信息")
    @ApiOperation("更新用户信息")
    @PostMapping("/update_userinfo")
    public Result updateUserInfo(@Validated @RequestBody User user) {
        try {
            userService.updateById(user);
            return Result.createSuccessMessage("更新用户信息成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "更新用户信息失败");
        }
    }

    @BrezeLog("登录提醒")
    @ApiOperation("更新登录提醒")
    @ApiImplicitParams({@ApiImplicitParam(name = "loginWarn", value = "登录提醒", dataType = "Integer", dataTypeClass = Integer.class), @ApiImplicitParam(name = "id", value = "用户ID", dataType = "Long", dataTypeClass = Long.class)})
    @PostMapping("/update_login_warn")
    public Result updateLoginWarn(@RequestParam Integer loginWarn, Principal principal) {
        User user = userService.getUserByUserName(principal.getName());
        userService.updateLoginWarnByUserId(loginWarn, user.getId());
        return Result.createSuccessMessage("更新登录提醒成功");
    }

    @BrezeLog("导入Excel表")
    @ApiOperation("导入Excel表")
    @ApiImplicitParam(name = "file", value = "Excel表", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @PostMapping("/upload_excel")
    public Result uploadExcel(@RequestParam MultipartFile file) {
        try {
            userService.importUserFromExcel(file);
            return Result.createSuccessMessage("数据导入成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "导入Excel表失败");
        }

    }

    @BrezeLog("导出Excel表")
    @ApiOperation("导出Excel表")
    @GetMapping("/export_excel")
    public void downloadUserExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            EasyExcelFactory.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(userService.list());
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出Excel表失败");
        }
    }

    @BrezeLog("导出模板Excel表")
    @ApiOperation("导出模板Excel表")
    @GetMapping("/download_model_excel")
    public void downloadModelExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            User user = new User("2022000000001", "张三", "18888888888", "zhangsan@email.com", "济南");
            EasyExcelFactory.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(Arrays.asList(user));
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出模板Excel表失败");
        }
    }

}
