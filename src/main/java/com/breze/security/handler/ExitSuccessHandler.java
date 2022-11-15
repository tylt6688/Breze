package com.breze.security.handler;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.result.Result;
import com.breze.config.JwtConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @Author tylt6688
 * @Date 2022/2/7 14:24
 * @Description 退出登录处理器
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Component
public class ExitSuccessHandler implements LogoutSuccessHandler {

    @Autowired
    JwtConfig jwtConfig;

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {

        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }

        response.setContentType(CharsetConstant.JSON_TYPE);

        response.setCharacterEncoding(CharsetConstant.UTF_8);

        ServletOutputStream outputStream = response.getOutputStream();

        // 将jwt传给前端清空
        response.setHeader(jwtConfig.getHeader(), "");

        Result result = Result.createSuccessMessage("退出成功!", null);

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

        outputStream.flush();

        outputStream.close();
    }
}
