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
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022-03-01
 * @Discription 用户管理控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Api(tags = "用户管理")
@RestController
@RequestMapping("/sys/user")
public class UserController extends BaseController {

    @ApiOperation("新增用户")
    @BrezeLog("新增用户")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result<String> insert(@Validated @RequestBody UserDTO userDTO) {
        return brezeJudgeResult(userService.insert(userDTO),"新增用户成功","新增用户失败");
    }

    @ApiOperation("删除用户信息")
    @BrezeLog("删除用户")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result<String> delete(@RequestBody List<UserDTO> userDTOList) {
        return brezeJudgeResult(userService.delete(userDTOList),"删除用户成功","删除用户失败");
    }

    @ApiOperation("更新用户信息")
    @BrezeLog("更新用户信息")
    @PutMapping("/update")
    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result<String> update(@Validated @RequestBody UserDTO userDTO) {
        return brezeJudgeResult(userService.update(userDTO),"用户信息更新成功","用户信息更新失败");
    }



    @ApiOperation("获取全部用户列表，可多条件联合查询，实体属性值为空则显示全部")
    @BrezeLog("获取全部用户列表")
    @PostMapping("/select")
    @PreAuthorize("hasAuthority('sys:user:select')")
    public Result<Page<UserVO>> select(@RequestBody UserDTO userDTO) {
        Page<UserVO> userPage = userService.getUserPage(getPage(), userDTO);
        return Result.createSuccessMessage("获取用户列表成功", userPage);
    }

    @ApiOperation("根据用户ID获取用户信息")
    @ApiImplicitParam(name = "id", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("根据用户ID获取用户信息")
    @GetMapping("/info/{id}")
    @PreAuthorize("hasAuthority('sys:user:select')")
    public Result<UserInfoVO> info(@PathVariable Long id) {
        UserInfoVO userInfoVo = userService.getUserInfoById(id);
        return Result.createSuccessMessage("获取用户信息成功", userInfoVo);
    }


    @ApiOperation("分配用户角色")
    @BrezeLog("分配用户角色")
    @PostMapping("/perm_role")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result<String> permRole(@RequestBody PermRoleDTO permRoleDTO) {
        return brezeJudgeResult(userService.permRole(permRoleDTO),"分配用户角色成功","分配用户角色失败");
    }


    @ApiOperation("重置用户密码")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("重置用户密码")
    @PostMapping("/reset_password")
    @PreAuthorize("hasAuthority('sys:user:repass')")
    public Result<String> resetPassword(@RequestParam Long userId) {
        return brezeJudgeResult(userService.resetUserPassword(userId),"重置用户密码成功","重置用户密码失败");
    }


    @ApiOperation(value = "获取当前登录用户信息", notes = "用于当前登录用户个人中心信息展示")
    @BrezeLog("获取当前用户信息")
    @GetMapping("/current_userinfo")
    public Result<UserInfoVO> currentUserInfo(Principal principal) {
        UserInfoVO userInfoVo = userService.getCurrentUserInfo(principal.getName());
        return Result.createSuccessMessage("获取个人信息成功", userInfoVo);
    }

    @ApiOperation("用户修改头像")
    @ApiImplicitParam(name = "avatar", value = "头像", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @BrezeLog("用户修改头像")
    @PostMapping("/update_avatar")
    public Result<String> updateAvatar(@RequestParam MultipartFile avatar) {
        return brezeJudgeResult(userService.updateAvatar(avatar));
    }

    @ApiOperation("用户修改密码")
    @BrezeLog("用户修改密码")
    @PostMapping("/update_password")
    public Result<String> updatePassword(@Validated @RequestBody UpdatePasswordDTO updatePasswordDTO) {
        return brezeJudgeResult(userService.updatePassword(updatePasswordDTO));
    }

    @ApiOperation("更新登录提醒")
    @ApiImplicitParam(name = "loginWarn", value = "登录提醒标识", dataType = "Integer", dataTypeClass = Integer.class)
    @BrezeLog("更新登录提醒")
    @PostMapping("/update_login_warn")
    public Result<String> updateLoginWarn(@RequestParam Integer loginWarn) {
        return brezeJudgeResult(userService.updateLoginWarnByFlag(loginWarn));
    }

    @ApiOperation("导入用户Excel表")
    @ApiImplicitParam(name = "file", value = "Excel表", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @BrezeLog("导入用户Excel表")
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file) {
        return brezeJudgeResult(userService.importUserByExcel(file),"导入用户Excel表成功","导入用户Excel表失败");
    }

    @ApiOperation("导出用户Excel表")
    @BrezeLog("导出用户Excel表")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response) {
        userService.exportExcel(response);
    }

    @ApiOperation("下载用户表Excel模板")
    @BrezeLog("下载用户表Excel模板")
    @GetMapping("/export_template_excel")
    public void exportTemplateExcel(HttpServletResponse response) {
        userService.exportTemplateExcel(response);
    }


    @ApiOperation("获取系统中用户数量")
    @GetMapping("/user_count")
    public Result<Long> getUserCount() {
        return Result.createSuccessMessage("获取用户数量成功", userService.count());
    }
}
