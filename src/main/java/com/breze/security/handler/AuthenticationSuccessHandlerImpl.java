package com.breze.security.handler;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.SystemConstant;
import com.breze.common.result.Result;
import com.breze.config.TokenConfig;
import com.breze.utils.TokenUtil;
import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @Author tylt6688
 * @Date 2022/2/10 23:33
 * @Description 登录认证成功处理器
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Component
public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

    @Autowired
    private TokenConfig tokenConfig;

    @Autowired
    TokenUtil tokenUtil;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, @NotNull HttpServletResponse response, @NotNull Authentication authentication) throws IOException {

        response.setContentType(CharsetConstant.JSON_TYPE);

        response.setCharacterEncoding(CharsetConstant.UTF_8);

        @Cleanup ServletOutputStream outputStream = response.getOutputStream();

        String username = authentication.getName();

        // 生成JWT放置到响应Header头中
        String token = tokenUtil.generateToken(username);

        response.setHeader(tokenConfig.getHeader(), token);

        Result<String> result = Result.createSuccessMessage(SystemConstant.LOGIN_SUCCESS, token);

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

    }

}
