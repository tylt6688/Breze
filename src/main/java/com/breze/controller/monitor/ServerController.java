package com.breze.controller.monitor;

import com.breze.utils.ServerUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;


/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@RestController
@RequestMapping("/monitor/server")
public class ServerController {

    @GetMapping("/cpuinfo")
    public Result getCpuInfo() {
        return Result.createSuccessMessage(ServerUtil.getOsInfo());
    }

    @GetMapping("/memoryinfo")
    public Result getMemoryInfo() {
        return Result.createSuccessMessage(ServerUtil.getMemoryInfo());
    }

    @GetMapping("/diskinfo")
    public Result getDiskInfo() {
        return Result.createSuccessMessage(ServerUtil.getDiskInfo());
    }
}
