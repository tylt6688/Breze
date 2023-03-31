package com.breze.controller.monitor;

import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.utils.ServerUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author tylt6688
 * @Date 2022-03-01
 * @Discription 监控界面前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(tags = "服务器监控")
@RestController
@RequestMapping("/monitor/server")
public class ServerController extends BaseController {

    @ApiOperation(value = "获取CPU信息", notes = "用于CPU信息展示")
    @GetMapping("/cpu_info")
    public Result<Object> getCpuInfo() {
        return Result.createSuccessMessage("获取CPU信息成功", ServerUtil.getOsInfo());
    }

    @ApiOperation(value = "获取内存信息", notes = "用于内存信息展示")
    @GetMapping("/memory_info")
    public Result<Object> getMemoryInfo() {
        return Result.createSuccessMessage("获取内存信息成功", ServerUtil.getMemoryInfo());
    }

    @ApiOperation(value = "获取磁盘信息", notes = "用于磁盘信息展示")
    @GetMapping("/disk_info")
    public Result<Object> getDiskInfo() {
        return Result.createSuccessMessage("获取磁盘信息成功", ServerUtil.getDiskInfo());
    }
}
