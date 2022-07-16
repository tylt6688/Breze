package com.breze.controller;


import com.breze.entity.pojo.rbac.User;
import com.breze.service.rbac.UserService;
import com.breze.utils.QrCodeUtil;
import com.breze.utils.ServerUtil;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.utils.LogUtil;

import java.util.List;

@Log4j2
@RestController
@RequestMapping("/qx/test")
public class TestController extends BaseController {


    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @RequestMapping(value = "/hellotest", method = RequestMethod.GET)
    public String hi() {
        return "hello";
    }

    @GetMapping("/logtest")
    public String logtest() throws Exception {
        Logger log = LogUtil.getExceptionLogger();
        Logger log1 = LogUtil.getBussinessLogger();
        Logger log2 = LogUtil.getDBLogger();

        log.error("getExceptionLogger===error日志测试");
        log1.info("getBussinessLogger===info日志测试");
        log2.debug("getDBLogger===debug日志测试");
        return "logtest";
    }



//针对mybatisplus生成代码进行测试

    @Autowired
    private UserService userService;

    @PreAuthorize("hasRole('admin')")
    //指明只有admin权限的用户才能访问此方法
    @GetMapping("/userservicetest")
    public Result userservice() {
        List<User> list = userService.list();
        return Result.createSuccessMessage(list);
    }

    @PreAuthorize("hasAuthority('sys:user:list')")
    //指明只有当前授权权限码的管理员才能访问此方法
    @GetMapping("/userservicetest1")
    public Result userservice1() {
        List<User> list = userService.list();
        return Result.createSuccessMessage(list);
    }


    // TODO:测试二维码生成
    @RequestMapping("/qrCode")
    public Result qrCode(Integer id) {
        QrCodeUtil qrCodeUtil = new QrCodeUtil();
        String content = "http://www.baidu.com?id=";
        String logoUrl = "http://www.baidu.com/statics/logo.png";
        String url = qrCodeUtil.getBase64QRCode(content + id, logoUrl);
        return Result.createSuccessMessage(url);
    }


    public static void main(String[] args) throws Exception {
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        String encode = bCryptPasswordEncoder.encode("123456");
//
//        boolean matches = bCryptPasswordEncoder.matches("123456", "$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO");
//        System.out.println(encode+"---"+matches);
        //////////
//        Long[] ids = new Long[10];
//        ids[0] = Long.valueOf(1);
//        ids[1] = Long.valueOf(2);
//        ids[2] = Long.valueOf(3);
//        ids[3] = Long.valueOf(4);
//        ids[4] = Long.valueOf(5);
//
//        for (Long id : ids) {
//            System.out.println(id);
//        }
//        String key = "http://qiniuyun.tylt.xyz/abc.kpg";
//        int len = key.length();
//        String subkey = key.substring(0,24);

//        System.out.println(subkey);
        System.out.println(ServerUtil.getDiskInfo());
        System.out.println(ServerUtil.getMemoryInfo());
        System.out.println(ServerUtil.getOsInfo());

    }

}
