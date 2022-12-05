package com.breze.controller.tool;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.brezelog.HandleLog;
import com.breze.entity.pojo.brezelog.LoginLog;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public Result list() {
        Page<LoginLog> pageData = loginLogService.page(getPage(), new LambdaQueryWrapper<LoginLog>().orderByDesc(LoginLog::getCreateTime));
        pageData.getRecords().forEach(loginLog -> {
            loginLog.setUserName(userService.getById(loginLog.getUserId()).getUsername())
                    .setTrueName(userService.getById(loginLog.getUserId()).getTrueName());
        });
        return Result.createSuccessMessage("分页查询登录日志成功", pageData);
    }

    @GetMapping("/list_handle_log")
    public Result listHandleLog() {
        Page<HandleLog> pageData = handleLogService.page(getPage(), new LambdaQueryWrapper<HandleLog>().orderByDesc(HandleLog::getCreateTime));
        return Result.createSuccessMessage("分页查询操作日志成功", pageData);
    }


}
