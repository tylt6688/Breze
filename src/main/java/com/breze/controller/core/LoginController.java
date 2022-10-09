//package com.breze.controller.core;
//
//import com.breze.common.result.Result;
//import com.breze.entity.vo.LoginVo;
//import lombok.extern.log4j.Log4j2;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//@Log4j2
//@RestController
//@RequestMapping("/login")
//public class LoginController {
//
//    @PostMapping("/account_login")
//    public Result login(@RequestBody LoginVo loginVo) {
//        log.error("loginVo: {}", loginVo);
//        return Result.createSuccessMessage();
//    }
//
//}
