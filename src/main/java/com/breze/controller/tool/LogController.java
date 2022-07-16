package com.breze.controller.tool;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.annotation.Log;
import com.breze.common.result.Result;

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
@RequestMapping("/sys/log")
public class LogController {

    @Log("测试日志注解")
    @ApiOperation("测试日志注解")
    @GetMapping("/test")
    public Result test() {
        String msg = "Use @Log Test";
        return Result.createSuccessMessage(msg);
    }
}
