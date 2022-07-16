package com.breze.security;

import cn.hutool.json.JSONUtil;
import com.breze.common.constant.ErrorEnum;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;
import com.breze.common.result.Result;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/*
 * @Author tylt
 * @Description //TODO 登录认证失败处理器
 * @Date 2022/2/10 23:33
 **/
@Component
public class LoginFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException {

        response.setContentType("application/json;charset=UTF-8");

        ServletOutputStream outputStream = response.getOutputStream();

        //进行错误自定义异常结果返回
        String msg = exception.getMessage();

        Result result = null;
        if ("验证码错误".equals(msg)) {
            result = Result.createFailureMessage(ErrorEnum.FindException, exception.getMessage());
        }else if("账户状态异常".equals(msg)){
            result = Result.createFailureMessage(ErrorEnum.FindException, "您的账户已被禁用，请联系管理员");
        }
        else {
            result = Result.createFailureMessage(ErrorEnum.FindException, "用户名或密码错误");
        }

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

        outputStream.flush();

        outputStream.close();
    }
}
