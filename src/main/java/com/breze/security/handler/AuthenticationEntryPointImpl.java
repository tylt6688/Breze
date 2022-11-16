package com.breze.security.handler;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import lombok.Cleanup;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @Author tylt6688
 * @Date 2022/2/7 14:24
 * @Description 全局认证失败异常处理器, jwt入口处理器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Component
public class AuthenticationEntryPointImpl implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {

        response.setContentType(CharsetConstant.JSON_TYPE);
        response.setCharacterEncoding(CharsetConstant.UTF_8);
        // 告知未认证状态码401
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

        @Cleanup ServletOutputStream outputStream = response.getOutputStream();

        // 认证失败的情况下返回异常信息
        Result result = Result.createFailMessage(ErrorEnum.IncorrectCredentials);

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

    }
}
