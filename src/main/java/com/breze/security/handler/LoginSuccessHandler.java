package com.breze.security.handler;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import com.breze.config.JwtConfig;
import com.breze.utils.IPUtil;
import com.maxmind.geoip2.DatabaseReader;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import com.breze.common.result.Result;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
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
public class LoginSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    JwtConfig jwtConfig;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {

        response.setContentType(CharsetConstant.JSON_TYPE);
        response.setCharacterEncoding(CharsetConstant.UTF_8);

        ServletOutputStream outputStream = response.getOutputStream();

        String jwt = jwtConfig.generateToken(authentication.getName());

        // 生成jwt放置到响应的请求头中
        response.setHeader(jwtConfig.getHeader(), jwt);

        File database = new File(new File("geolite2city.mmdb").getAbsolutePath());
        // 读取GeoIP数据库内容
        DatabaseReader reader = null;
        try {
            reader = new DatabaseReader.Builder(database).build();
            log.warn(IPUtil.getAddress(reader, IPUtil.getIpAddress(request)));
        } catch (Exception e) {
            log.warn("未知IP或处于测试环境");
        }

        Result result = Result.createSuccessMessage("登录认证成功");

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

        outputStream.flush();

        outputStream.close();

    }

}
