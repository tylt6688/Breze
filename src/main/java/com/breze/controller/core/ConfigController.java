package com.breze.controller.core;

import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.vo.sys.ConfigVO;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * @Author tylt6688
 * @Date 2023/7/25 16:40
 * @Description 配置条目控制器
 * @Copyright(c) 2023 , 青枫网络工作室
 */

@Api(tags = "系统配置存储")
@RestController
@RequestMapping("/core/config")
public class ConfigController extends BaseController {


    @GetMapping("/get_init_config")
    public Result<List<ConfigVO>> getInitConfig() {

        return Result.createSuccessMessage("获取配置信息成功", configService.getConfigList(brezeConfig));
    }


}
