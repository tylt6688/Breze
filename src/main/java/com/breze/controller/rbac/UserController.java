package com.breze.controller.rbac;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.sys.PermRoleDTO;
import com.breze.entity.dto.sys.UpdatePasswordDTO;
import com.breze.entity.dto.sys.UserDTO;
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

    @ApiOperation(value = "获取当前登录用户信息", notes = "用于当前登录用户个人中心信息展示")
    @BrezeLog("获取当前用户信息")
    @GetMapping("/get_userinfo")
    public Result<UserInfoVO> getCurrentUserInfo(Principal principal) {
        UserInfoVO userInfoVo = userService.getCurrentUserInfo(principal.getName());
        return Result.createSuccessMessage("获取个人信息成功", userInfoVo);
    }


    @ApiOperation("根据ID获取用户信息")
    @ApiImplicitParam(name = "id", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("根据ID获取用户信息")
    @GetMapping("/info/{id}")
    public Result<UserInfoVO> info(@PathVariable Long id) {
        UserInfoVO userInfoVo = userService.getUserInfoById(id);
        return Result.createSuccessMessage("获取用户信息成功", userInfoVo);
    }


    @ApiOperation("获取全部用户信息，可多条件联合查询，实体属性值为空则显示全部")
    @BrezeLog("获取全部用户信息")
    @PostMapping("/select")
    @PreAuthorize("hasAuthority('sys:user:select')")
    public Result<Page<UserVO>> select(@RequestBody UserDTO userDTO) {
        Page<UserVO> userPage = userService.getUserPage(getPage(), userDTO);
        return Result.createSuccessMessage("获取用户列表成功", userPage);
    }

    @ApiOperation("获取系统用户数量")
    @GetMapping("/user_count")
    public Result<Long> getUserCount() {
        return Result.createSuccessMessage("获取用户数量成功", userService.count());
    }

    @ApiOperation("新增用户")
    @BrezeLog("新增用户")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result<String> insert(@Validated @RequestBody UserDTO userDTO) {
        return judgeResult(userService.insert(userDTO));
    }


    @ApiOperation("删除用户信息")
    @BrezeLog("删除用户")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result<String> delete(@RequestBody Long[] ids) {
        return judgeResult(userService.delete(ids));
    }


    @ApiOperation("更新用户信息")
    @BrezeLog("更新用户信息")
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result<String> update(@Validated @RequestBody UserDTO userDTO) {
        return judgeResult(userService.update(userDTO));
    }


    @ApiOperation("分配用户角色")
    @BrezeLog("分配用户角色")
    @PostMapping("/perm_role")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result<String> permRole(@RequestBody PermRoleDTO permRoleDTO) {
        return judgeResult(userService.permRole(permRoleDTO));
    }


    @ApiOperation("重置用户密码")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("重置用户密码")
    @PostMapping("/reset_password")
    @PreAuthorize("hasAuthority('sys:user:repass')")
    public Result<String> resetPassword(@RequestParam Long userId) {
        return judgeResult(userService.resetUserPassword(userId));
    }

    @ApiOperation("修改用户密码")
    @BrezeLog("修改用户密码")
    @PostMapping("/update_password")
    public Result<String> updatePassword(@Validated @RequestBody UpdatePasswordDTO updatePasswordDTO) {
        return judgeResult(userService.updatePassword(updatePasswordDTO));
    }

    @ApiOperation("修改用户头像")
    @ApiImplicitParam(name = "avatar", value = "头像", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @BrezeLog("修改用户头像")
    @PostMapping("/update_avatar")
    public Result<String> updateAvatar(@RequestParam MultipartFile avatar) {
        return judgeResult(userService.updateAvatar(avatar));
    }

    @ApiOperation("更新登录提醒")
    @ApiImplicitParams({@ApiImplicitParam(name = "loginWarn", value = "登录提醒", dataType = "Integer", dataTypeClass = Integer.class), @ApiImplicitParam(name = "id", value = "用户ID", dataType = "Long", dataTypeClass = Long.class)})
    @BrezeLog("登录提醒")
    @PostMapping("/update_login_warn")
    public Result<String> updateLoginWarn(@RequestParam Integer loginWarn) {
        return judgeResult(userService.updateLoginWarnByUserId(loginWarn));
    }


    @ApiOperation("导入用户Excel表")
    @ApiImplicitParam(name = "file", value = "Excel表", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @BrezeLog("导入用户Excel表")
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file) {
        return judgeResult(userService.importUserByExcel(file));
    }

    @ApiOperation("导出用户Excel表")
    @BrezeLog("导出用户Excel表")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response) {
        userService.exportExcel(response);
    }

    @ApiOperation("下载用户表Excel模板")
    @BrezeLog("下载用户表Excel模板")
    @GetMapping("/export_model_excel")
    public void exportTemplateExcel(HttpServletResponse response) {
        userService.exportTemplateExcel(response);
    }

}
