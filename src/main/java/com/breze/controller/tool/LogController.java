package com.breze.controller.tool;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.logdo.HandleLog;
import com.breze.entity.pojo.logdo.LoginLog;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Name: LogController.java
 * @Package: xyz.tylt.controller.rbac
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:59
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Api(tags = "权限-日志管理")
@RestController
@RequestMapping("/tool/log")
public class LogController extends BaseController {

    @RequestMapping("/listLoginLog")
    public Result list() {
        Page<LoginLog> pageData = loginLogService.page(getPage(), new QueryWrapper<LoginLog>().orderByDesc("create_time"));
        pageData.getRecords().forEach(loginLog -> {
            loginLog.setUserName(userService.getById(loginLog.getUserId()).getUsername());
            loginLog.setTrueName(userService.getById(loginLog.getUserId()).getTruename());
        });
        return Result.createSuccessMessage(pageData);
    }

    @GetMapping("/listHandleLog")
    public Result listHandleLog() {

        Page<HandleLog> pageData = handleLogService.page(getPage(), new QueryWrapper<HandleLog>().orderByDesc("create_time"));
        return Result.createSuccessMessage(pageData);
    }


}
