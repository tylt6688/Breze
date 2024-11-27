package com.breze.controller;


import com.breze.common.listener.WebSocketListener;
import com.breze.common.result.Result;
import com.breze.config.BrezeConfig;
import com.breze.utils.FileUtil;
import com.breze.utils.ProcessUtil;
import com.breze.utils.QrCodeUtil;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.security.PermitAll;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @Author tylt6688
 * @Description 清枫Breze权限一体化平台接口本地开发测试类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@RestController
@RequestMapping("/breze/test")
public class BrezeTestController extends BaseController {

    @Autowired
    BrezeConfig brezeConfig;

    @GetMapping("/{msg}")
    public Result<String> demo01(@PathVariable String msg) {
        WebSocketListener.sendInfo("1", msg);
        return Result.createSuccessMessage("请求成功", msg);
    }


    //    @PreAuthorize("hasRole('admin')") // 指明只有admin权限的用户才能访问此方法
    //    @PreAuthorize("hasAuthority('sys:user:list')") // 指明只有当前授权权限码的管理员才能访问此方法
    @PermitAll
    @RequestMapping("/qrcode")
    public Result<String> qrCode(Integer id) {
        String content = "http://www.baidu.com?id=" + id;
        String logoUrl = "http://www.baidu.com/statics/logo.png";
        String url = QrCodeUtil.getBase64QRCode(content, logoUrl);
        return Result.createSuccessMessage("二维码信息", url);
    }

    @RequestMapping("/execute")
    public String execute(MultipartFile file) throws IOException {
        return FileUtil.uploadFile(brezeConfig.getUploadPath(), file);
    }

    @ApiOperation("python脚本执行测试")
    @PostMapping("/py_script_test")
    public Result<String> getData(@RequestParam String params) {
        // 想要传递到脚本中的参数
        List<String> commend = new ArrayList<>();
        // Python环境的路径
        commend.add(brezeConfig.getPythonInterpreter());
        // Python脚本的路径，也可以是绝对路径
        String scriptPath = System.getProperty("user.dir") + "\\scripts\\";
        commend.add(scriptPath + "test.py");

        commend.addAll(Arrays.asList(params.split(",")));
        // 执行脚本命令
        Process process = ProcessUtil.exec(commend);
        // 获取执行结果
        String result = ProcessUtil.getOutput(process);

        return Result.createSuccessMessage("脚本执行完毕", result);
    }

}
