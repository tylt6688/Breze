package com.breze.controller.rbac;


import cn.hutool.core.map.MapUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.read.listener.PageReadListener;
import com.alibaba.excel.util.MapUtils;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.Log;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.dto.UpdatePasswordDTO;
import com.breze.entity.dto.UserDTO;
import com.breze.entity.mapstruct.UserConvert;
import com.breze.entity.pojo.rbac.*;
import com.breze.utils.MultipartFileToFileUtil;
import com.qiniu.common.QiniuException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

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

    @Log("获取当前用户信息")
    @ApiOperation(value = "获取当前用户信息")
    @GetMapping("/get_userinfo")
    public Result getUserInfo(Principal principal) {
        // 此处为安全数据页面展示，前端需要什么后端就返回什么
        User user = userService.getByUserName(principal.getName());
        user.setRoles(roleService.listRolesByUserId(user.getId()));
        Result result = new Result();
        result.addData("username", user.getUsername());
        result.addData("roles", user.getRoles());
        result.addData("avatar", user.getAvatar());
        result.addData("trueName", user.getTrueName());
        result.addData("email", user.getEmail());
        result.addData("phone", user.getPhone());
        result.addData("city", user.getCity());
        result.addData("loginTime", user.getLoginTime());
        result.addData("createTime", user.getCreateTime());
        result.addData("loginWarn", user.getLoginWarn());
        // FIXME: 2022/9/30 临时在Controller展示，后续需要针对Service进行优化
        List<UserGroupJob> userGroupJobList = userGroupJobService.list(new QueryWrapper<UserGroupJob>().eq("user_id", user.getId()));
        List<Map> list = new ArrayList<>();
        for (UserGroupJob userGroupJob : userGroupJobList) {
            String groupname = groupService.getById(userGroupJob.getJobId()).getName();
            String jobname = jobService.getById(userGroupJob.getJobId()).getName();
            list.add(MapUtil.builder()
                    .put("groupName", groupname)
                    .put("jobName", jobname)
                    .build());
        }
        result.addData("groupJob", list);

        return Result.createSuccessMessage(result);

    }

    @Log("根据ID获取用户信息")
    @ApiOperation("根据ID获取用户信息")
    @ApiImplicitParam(name = "id", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @GetMapping("/info/{id}")
    // @PreAuthorize("hasAuthority('sys:user:select')")
    public Result info(@PathVariable Long id) {
        User user = userService.getById(id);
        Assert.notNull(user, "找不到该用户");
        List<Role> roles = roleService.listRolesByUserId(id);
        user.setRoles(roles);
        // 2022/9/23 15:30 FIXME: 根据ID获取用户信息 UP BY LUCIFER-LGX
        UserDTO userDTO = UserConvert.INSTANCE.from(user);
        UserGroupJob uj = userGroupJobService.getOne(new QueryWrapper<UserGroupJob>().eq("user_id", user.getId()));
        userDTO.setJobId(uj.getJobId());
        return Result.createSuccessMessage(userDTO);
    }

    @Log("根据用户名获取用户信息")
    @ApiOperation("根据用户名获取用户信息")
    @ApiImplicitParam(name = "username", value = "用户名", required = false, dataType = "String", dataTypeClass = String.class)
    @GetMapping("/select")
    @PreAuthorize("hasAuthority('sys:user:select')")
    public Result select(String username) {
        // 2022/9/23 15:24 TODO: Should Be ReWrite UP BY LUCIFER-LGX
        Page<User> pageData = userService.page(getPage(), new QueryWrapper<User>().like(StrUtil.isNotBlank(username), "username", username));
        // 回显角色信息
        pageData.getRecords().forEach(u -> {
            u.setRoles(roleService.listRolesByUserId(u.getId()));
        });
        return Result.createSuccessMessage(pageData);
    }

    @Log("新增用户")
    @ApiOperation("新增用户")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result insert(@Validated @RequestBody UserDTO userDTO) {
        User user = UserConvert.INSTANCE.from(userDTO);
        boolean flag = userService.insertUser(user);

        // 2022/9/23 15:30 FIXME: 添加 用户岗位 UP BY LUCIFER-LGX
        UserGroupJob uj = UserConvert.INSTANCE.UJfrom(userDTO);
        userGroupJobService.insert(uj);

        // 2022/9/23 15:31 FIXME: 添加 部门岗位 UP BY LUCIFER-LGX
        GroupJob gj = UserConvert.INSTANCE.GJfrom(userDTO);
        groupJobService.insert(gj);

        return flag ? Result.createSuccessMessage(user) : Result.createFailMessage(ErrorEnum.FindException);
    }

    @Log("删除用户")
    @ApiOperation("删除用户信息")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)
    @Transactional(rollbackFor = Exception.class)
    @PostMapping("/delete")
    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result delete(@RequestBody Long[] ids) {
        userService.removeByIds(Arrays.asList(ids));
        boolean flag = userRoleService.remove(new QueryWrapper<UserRole>().in("user_id", ids));
        // 2022/9/23 17:03 TODO: 需要修改 用户岗位 功能 UP BY LUCIFER-LGX
        return flag ? Result.createSuccessMessage("删除成功") : Result.createFailMessage(ErrorEnum.FindException);
    }

    @Log("修改用户")
    @ApiOperation("修改用户")
    @Transactional(rollbackFor = Exception.class)
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result update(@Validated @RequestBody UserDTO userDTO) {
        // 2022/9/23 15:28 FIXME: Use MapStruct UP BY LUCIFER-LGX
        User user = UserConvert.INSTANCE.from(userDTO);

        // 2022/9/23 16:46 FIXME: 修改 用户岗位信息 UP BY LUCIFER-LGX
        UserGroupJob uj = userGroupJobService.getOne(new QueryWrapper<UserGroupJob>().eq("user_id", userDTO.getId()));
        uj.setJobId(userDTO.getJobId());
        userGroupJobService.updateById(uj);

        // 2022/9/23 15:27 FIXME: 修改用户 UP BY LUCIFER-LGX
        boolean flag = userService.updateById(user);
        return flag ? Result.createSuccessMessage(user) : Result.createFailMessage(ErrorEnum.FindException);
    }


    @Log("分配用户角色")
    @ApiOperation("分配用户角色")
    @ApiImplicitParam(name = "userId", value = "用户ID", paramType = "path", required = true, dataType = "Long", dataTypeClass = Long.class)
    @Transactional
    @PostMapping("/role_perm/{userId}")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result rolePerm(@PathVariable Long userId, @RequestBody Long[] roleIds) {
        List<UserRole> userRoles = new ArrayList<>();
        Arrays.stream(roleIds).forEach(r -> {
            UserRole userRole = new UserRole();
            userRole.setRoleId(r);
            userRole.setUserId(userId);
            userRoles.add(userRole);
        });
        userRoleService.remove(new QueryWrapper<UserRole>().eq("user_id", userId));
        userRoleService.saveBatch(userRoles);
        // 删除缓存
        User sysUser = userService.getById(userId);
        userService.clearUserAuthorityInfo(sysUser.getUsername());
        return Result.createSuccessMessage("单个分配角色成功");
    }

    @Log("批量分配用户角色")
    @ApiOperation("批量分配用户角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "userIds", value = "用户ID", required = true, dataType = "Long[]", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "roleIds", value = "角色ID", required = true, dataType = "Long[]", dataTypeClass = Long.class)
    })
    @Transactional
    @PostMapping("/role_more_perm")
    @PreAuthorize("hasAuthority('sys:user:role')")
    public Result rolePermMore(@RequestParam Long[] userIds, @RequestBody Long[] roleIds) {
        List<UserRole> userRoles = new ArrayList<>();
        Arrays.stream(userIds).forEach(uid -> {
            Arrays.stream(roleIds).forEach(r -> {
                UserRole userRole = new UserRole();
                userRole.setRoleId(r);
                userRole.setUserId(uid);
                userRoles.add(userRole);
            });
            userRoleService.remove(new QueryWrapper<UserRole>().eq("user_id", uid));
        });
        userRoleService.saveBatch(userRoles);
        // 删除缓存
        Arrays.stream(userIds).forEach(uid -> {
            User sysUser = userService.getById(uid);
            userService.clearUserAuthorityInfo(sysUser.getUsername());
        });

        return Result.createSuccessMessage("多用户批量分配角色成功");
    }

    @Log("重置用户密码")
    @ApiOperation("重置用户密码")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @PostMapping("/reseat_password")
    @PreAuthorize("hasAuthority('sys:user:repass')")
    public Result resertPassword(@RequestBody Long userId) {
        User user = userService.getById(userId);
        user.setPassword(bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD));
        boolean flag = userService.updateById(user);
        return flag ? Result.createSuccessMessage("重置密码成功") : Result.createFailMessage(ErrorEnum.FindException);
    }

    @Log("修改用户密码")
    @ApiOperation("修改用户密码")
    @Transactional
    @PostMapping("/update_password")
    public Result updatePassword(@Validated @RequestBody UpdatePasswordDTO updatePasswordDto, Principal principal) {
        User user = userService.getByUserName(principal.getName());
        boolean matches = bCryptPasswordEncoder.matches(updatePasswordDto.getCurrentPass(), user.getPassword());
        if (matches) {
            user.setPassword(bCryptPasswordEncoder.encode(updatePasswordDto.getPassword()));
            userService.updateById(user);
        } else {
            return Result.createFailMessage(ErrorEnum.FindException, "旧密码不正确");
        }
        return Result.createSuccessMessage("修改密码成功");
    }

    @Log("修改用户头像")
    @ApiOperation("修改用户头像")
    @ApiImplicitParam(name = "avatar", value = "头像", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @Transactional
    @PostMapping("/update_avatar")
    public Result updateAvatar(@RequestParam MultipartFile avatar) throws QiniuException {
        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.getByUserName(username);
        if (user.getAvatar() != null && StrUtil.subSuf(user.getAvatar(), 24).equals(ossConfig.getUrl())) {
            qiNiuService.deleteFile(user.getAvatar());
        }
        String path = qiNiuService.uploadFile(avatar);
        if (path != null) {
            user.setAvatar(path);
            userService.updateById(user);
            return Result.createSuccessMessage("修改头像成功");

        } else {
            return Result.createFailMessage(ErrorEnum.FindException, "修改头像失败");
        }
    }

    @Log("更新用户信息")
    @ApiOperation("更新用户信息")
    @Transactional(rollbackFor = Exception.class)
    @PostMapping("/update_userinfo")
    public Result updateUserInfo(@Validated @RequestBody User user) {
        boolean flag = userService.updateById(user);
        return flag ? Result.createSuccessMessage(user) : Result.createFailMessage(ErrorEnum.FindException);
    }

    @Log("登录提醒")
    @ApiOperation("更新登录提醒")
    @ApiImplicitParams({@ApiImplicitParam(name = "loginwarn", value = "登录提醒", dataType = "Integer", dataTypeClass = Integer.class), @ApiImplicitParam(name = "id", value = "用户ID", dataType = "Long", dataTypeClass = Long.class)})
    @Transactional
    @PostMapping("/update_login_warn")
    public Result updateLoginWarn(@RequestParam Integer loginwarn, @RequestParam Long id) {
        boolean flag = userService.updateLoginWarnById(loginwarn, id);
        return flag ? Result.createSuccessMessage("更新登录提醒成功") : Result.createFailMessage(ErrorEnum.FindException);
    }

    @Log("导入Excel表")
    @ApiOperation("导入Excel表")
    @ApiImplicitParam(name = "file", value = "Excel表", required = true, dataType = "MultipartFile", dataTypeClass = MultipartFile.class)
    @Transactional
    @PostMapping("/upload_excel")
    public Result uploadExcel(@RequestParam MultipartFile file) {
        String encode = bCryptPasswordEncoder.encode(SystemConstant.DEFAULT_PASSWORD);
        File covfile = MultipartFileToFileUtil.multipartFileToFile(file);
        EasyExcel.read(covfile, User.class, new PageReadListener<User>(dataList -> {
            for (User user : dataList) {
                user.setPassword(encode);
                user.setState(GlobalConstant.TYPE_ZERO);
                user.setLoginWarn(GlobalConstant.TYPE_ONE);
                userService.save(user);
            }
        })).sheet().doRead();
        return Result.createSuccessMessage("数据导入成功");
    }

    @Log("导出Excel表")
    @ApiOperation("导出Excel表")
    @GetMapping("/export_excel")
    public void downloadUserExcel(HttpServletResponse response) throws IOException {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            EasyExcel.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(userService.list());
        } catch (Exception e) {
            response.reset();
            response.setContentType(CharsetConstant.JSON_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            Map<String, String> map = MapUtils.newHashMap();
            map.put("status", "failure");
            map.put("message", "下载文件失败" + e.getMessage());
            response.getWriter().println(JSON.toJSONString(map));
        }
    }

    @Log("导出模板Excel表")
    @ApiOperation("导出模板Excel表")
    @GetMapping("/download_model_excel")
    public void downloadModelExcel(HttpServletResponse response) throws IOException {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            List<User> list = new ArrayList<>();
            User user = new User();
            user.setTrueName("张三").setUsername("2022000000001").setEmail("zhangsan@email.com").setPhone("18888888888").setCity("济南");
            list.add(user);
            EasyExcel.write(response.getOutputStream(), User.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("模板").doWrite(list);
        } catch (Exception e) {
            response.reset();
            response.setContentType(CharsetConstant.JSON_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            Map<String, String> map = MapUtils.newHashMap();
            map.put("status", "failure");
            map.put("message", "下载文件失败" + e.getMessage());
            response.getWriter().println(JSON.toJSONString(map));
        }
    }

}
