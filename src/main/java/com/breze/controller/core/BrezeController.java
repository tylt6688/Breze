package com.breze.controller.core;


import com.breze.controller.BaseController;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author tylt6688
 * @Date 2023/7/25 17:08
 * @Description Breze系统配置控制器
 * @Copyright(c) 2023 , 青枫网络工作室
 */

@Api(tags = "系统配置存储")
@RestController
@RequestMapping("/breze")
public class BrezeController extends BaseController {
}
