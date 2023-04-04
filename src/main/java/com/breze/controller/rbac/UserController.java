package com.breze.controller.rbac;


import com.alibaba.excel.EasyExcelFactory;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.sys.UpdatePasswordDTO;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.rbac.UserRole;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022-03-01
 * @Discription 用户管理前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Api(tags = "用户管理")
@RestController
@RequestMapping("/sys/user")
public class UserController extends BaseController {

    @BrezeLog("获取当前用户信息")
    @ApiOperation(value = "获取当前登录用户信息", notes = "用于当前登录用户个人中心信息展示")
    @GetMapping("/get_userinfo")
    public Result<UserInfoVO> getCurrentUserInfo(Principal principal) {
        try {
            UserInfoVO userInfoVo = userService.getCurrentUserInfo(principal.getName());
            return Result.createSuccessMessage("获取个人信息成功", userInfoVo);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "获取个人信息失败");
        }

    }

    @BrezeLog("根据ID获取用户信息")
    @ApiOperation("根据ID获取用户信息")
    @ApiImplicitParam(name = "id", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @GetMapping("/info/{id}")
    public Result<UserInfoVO> info(@PathVariable Long id) {
        try {
            UserInfoVO userInfoVo = userService.getUserInfoById(id);
            return Result.createSuccessMessage("获取用户信息成功", userInfoVo);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "获取用户信息失败");
        }

    }

    @BrezeLog("获取全部用户信息")
    @ApiOperation("获取全部用户信息，可多条件联合查询，实体属性值为空则显示全部")
    @PostMapping("/select")
    @PreAuthorize("hasAuthority('sys:user:select')")
    public Result<Page<UserVO>> select(@RequestBody UserDTO userDTO) {
        try {
            Page<UserVO> userPage = userService.getUserPage(getPage(), userDTO);
            return Result.createSuccessMessage("获取用户列表成功", userPage);
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "获取用户列表失败");
        }

    }

    @ApiOperation("获取系统用户数量")
    @GetMapping("/user_count")
    public Result<Long> getUserCount() {
        try {
            return Result.createSuccessMessage("获取用户数量成功", userService.count());
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "获取用户数量失败");
        }
    }

    @BrezeLog("新增用户")
    @ApiOperation("新增用户")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result<String> insert(@Validated @RequestBody UserDTO userDTO) {
        try {
            userService.insert(userDTO);
            return Result.createSuccessMessage("添加用户成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "添加用户失败");
        }

    }

    @BrezeLog("删除用户")
    @ApiOperation("删除用户信息")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result<String> delete(@RequestBody Long[] ids) {
        try {
            userService.removeByIds(Arrays.asList(ids));
            userRoleService.remove(new LambdaQueryWrapper<UserRole>().in(UserRole::getUserId, ids));
            return Result.createSuccessMessage("删除成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "删除用户失败");
        }

    }

    @BrezeLog("修改用户信息")
    @ApiOperation("修改用户信息")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result<String> update(@Validated @RequestBody UserDTO userDTO) {

        try {
            userService.update(userDTO);
            return Result.createSuccessMessage("修改用户信息成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "修改用户信息失败");
        }

    }


    @BrezeLog("分配单个用户角色")
    @ApiOperation("分配单个用户角色")
    @ApiImplicitParams({@ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class), @ApiImplicitParam(name = "roleIds", value = "角色ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)})
    @PostMapping("/role_perm/{userId}")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result<String> rolePerm(@PathVariable Long userId, @RequestBody Long[] roleIds) {

        try {
            List<UserRole> userRoles = new ArrayList<>();
            for (Long roleId : roleIds) {
                UserRole userRole = new UserRole();
                userRole.setRoleId(roleId).setUserId(userId);
                userRoles.add(userRole);
            }
            userRoleService.remove(new LambdaQueryWrapper<UserRole>().eq(UserRole::getUserId, userId));
            userRoleService.saveBatch(userRoles);
            // 删除缓存
            User sysUser = userService.getById(userId);
            userService.clearUserAuthorityInfo(sysUser.getUsername());
            return Result.createSuccessMessage("指派用户角色成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "指派用户角色失败");
        }

    }

    @BrezeLog("批量分配用户角色")
    @ApiOperation("批量分配用户角色")
    @ApiImplicitParams({@ApiImplicitParam(name = "userIds", value = "用户ID", required = true, dataType = "Long[]", dataTypeClass = Long.class), @ApiImplicitParam(name = "roleIds", value = "角色ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)})
    @PostMapping("/role_more_perm")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result<String> rolePermMore(@RequestParam Long[] userIds, @RequestBody Long[] roleIds) {
        try {
            List<UserRole> userRoles = new ArrayList<>();
            Arrays.stream(userIds).forEach(uid -> {
                Arrays.stream(roleIds).forEach(roleId -> {
                    UserRole userRole = new UserRole();
                    userRole.setRoleId(roleId).setUserId(uid);
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
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "多用户批量分配角色失败");
        }

    }

    @BrezeLog("重置用户密码")
    @ApiOperation("重置用户密码")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @PostMapping("/reset_password")
    @PreAuthorize("hasAuthority('sys:user:repass')")
    public Result<String> resetPassword(@RequestParam Long userId) {
        try {
            userService.resetUserPassword(userId);
            return Result.createSuccessMessage("重置密码成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "重置密码失败");
        }

    }

    @BrezeLog("修改用户密码")
    @ApiOperation("修改用户密码")
    @PostMapping("/update_password")
    public Result<String> updatePassword(@Validated @RequestBody UpdatePasswordDTO updatePasswordDTO) {
        try {
            userService.updatePassword(updatePasswordDTO);
            return Result.createSuccessMessage("修改密码成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "修改密码失败");
        }

    }

    @BrezeLog("修改用户头像")
    @ApiOperation("修改用户头像")
    @ApiImplicitParam(name = "avatar", value = "头像", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @PostMapping("/update_avatar")
    public Result<String> updateAvatar(@RequestParam MultipartFile avatar) {
        try {
            return Result.createSuccessMessage(userService.updateAvatar(avatar));
        } catch (BusinessException e) {
            throw new BusinessException(ErrorEnum.FindException, "更新头像失败");
        }
    }

    @BrezeLog("更新用户信息")
    @ApiOperation("更新用户信息")
    @PostMapping("/update_userinfo")
    public Result<String> updateUserInfo(@Validated @RequestBody User user) {
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
    public Result<String> updateLoginWarn(@RequestParam Integer loginWarn) {
        try {
            userService.updateLoginWarnByUserId(loginWarn);
            return Result.createSuccessMessage("更新登录提醒成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "更新登录提醒失败");
        }

    }

    @BrezeLog("导入用户Excel表")
    @ApiOperation("导入用户Excel表")
    @ApiImplicitParam(name = "file", value = "Excel表", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file) {
        try {
            userService.importUserByExcel(file);
            return Result.createSuccessMessage("用户数据导入成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException, "导入用户Excel表失败");
        }

    }

    @BrezeLog("导出用户Excel表")
    @ApiOperation("导出用户Excel表")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            EasyExcelFactory.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(userService.list());
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出Excel表失败");
        }
    }

    @BrezeLog("下载用户表Excel模板")
    @ApiOperation("下载用户表Excel模板")
    @GetMapping("/export_model_excel")
    public void exportModelExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            User user = new User("2023001", "张三", "18888888888", "zhangsan@email.com", "济南");
            EasyExcelFactory.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(Arrays.asList(user));
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出模板Excel表失败");
        }
    }

}
