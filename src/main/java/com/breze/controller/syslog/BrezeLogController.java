package com.breze.controller.syslog;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.syslog.HandleLog;
import com.breze.entity.pojo.syslog.LoginLog;
import com.breze.entity.vo.sys.LoginLogVO;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:59
 * @Description 日志控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(tags = "权限-日志管理")
@RestController
@RequestMapping("/tool/log")
public class BrezeLogController extends BaseController {

    @RequestMapping("/list_login_log")
    public Result<Page<LoginLog>> listLoginLog() {
        Page<LoginLog> pageData = loginLogService.page(getPage(), new LambdaQueryWrapper<LoginLog>().orderByDesc(LoginLog::getCreateTime));
        pageData.getRecords().forEach(item -> {
            User user = userService.getById(item.getUserId());
            item.setUserName(user.getUsername()).setTrueName(user.getTrueName());
        });
        return Result.createSuccessMessage("分页查询登录日志成功", pageData);
    }

    @GetMapping("/list_handle_log")
    public Result<Page<HandleLog>> listHandleLog() {
        Page<HandleLog> pageData = handleLogService.page(getPage(), new LambdaQueryWrapper<HandleLog>().orderByDesc(HandleLog::getCreateTime));
        return Result.createSuccessMessage("分页查询操作日志成功", pageData);
    }

    @GetMapping("/login_count")
    public Result<List<LoginLogVO>> getUserLoginCount() {
        List<LoginLogVO> userLoginCount = loginLogService.getUserLoginCount();
        return Result.createSuccessMessage("最近用户登录数量获取成功", userLoginCount);
    }

    @GetMapping("/login_category")
    public Result<List<LoginLogVO>> getUserLoginCategory() {


        List<LoginLogVO> loginLogs = loginLogService.getUserLoginCategory(LocalDateTime.now());
        return Result.createSuccessMessage("访客类型数据获取成功", loginLogs);
    }


}
