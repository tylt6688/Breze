package com.breze.controller;


import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.User;
import com.breze.service.rbac.UserService;
import com.breze.utils.LogUtil;
import com.breze.utils.QrCodeUtil;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @GetMapping("/log_test")
    public void logTest() {
        Logger log = LogUtil.getExceptionLogger();
        Logger log1 = LogUtil.getBussinessLogger();
        Logger log2 = LogUtil.getDBLogger();

        log.error("getExceptionLogger===error日志测试");
        log1.info("getBussinessLogger===info日志测试");
        log2.debug("getDBLogger===debug日志测试");
    }


// 针对mybatisplus生成代码进行测试

    @Autowired
    private UserService userService;

    @PreAuthorize("hasRole('admin')")
    //指明只有admin权限的用户才能访问此方法
    @GetMapping("/userservicetest")
    public Result userservice() {
        List<User> list = userService.list();
        return Result.createSuccessMessage("",list);
    }

    @PreAuthorize("hasAuthority('sys:user:list')")
    //指明只有当前授权权限码的管理员才能访问此方法
    @GetMapping("/userservicetest1")
    public Result userservice1() {
        List<User> list = userService.list();
        return Result.createSuccessMessage("",list);
    }


    // 测试二维码生成
    @RequestMapping("/qrCode")
    public Result qrCode(Integer id) {
        String content = "http://www.baidu.com?id=";
        String logoUrl = "http://www.baidu.com/statics/logo.png";
        String url = QrCodeUtil.getBase64QRCode(content + id, logoUrl);
        return Result.createSuccessMessage(url);
    }






    public static void main(String[] args) {

//        System.out.println(ServerUtil.getDiskInfo());
//        System.out.println(ServerUtil.getMemoryInfo());
//        System.out.println(ServerUtil.getOsInfo());

    }

}
