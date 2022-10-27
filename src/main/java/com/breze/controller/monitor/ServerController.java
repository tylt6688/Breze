package com.breze.controller.monitor;

import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.utils.ServerUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


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
public class ServerController extends BaseController {

    @GetMapping("/cpu_info")
    public Result getCpuInfo() {
        return Result.createSuccessMessage(ServerUtil.getOsInfo());
    }

    @GetMapping("/memory_info")
    public Result getMemoryInfo() {
        return Result.createSuccessMessage(ServerUtil.getMemoryInfo());
    }

    @GetMapping("/disk_info")
    public Result getDiskInfo() {
        return Result.createSuccessMessage(ServerUtil.getDiskInfo());
    }
}
