package com.breze.controller.core;

import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Log4j2
@RestController
@RequestMapping("/breze")
public class LoginController extends BaseController {
    @PostMapping("/login")
    public Result<String> login(){
        System.out.println("A");
        return Result.createSuccessMessage();
    }
}
