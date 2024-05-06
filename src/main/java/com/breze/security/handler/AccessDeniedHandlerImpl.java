package com.breze.security.handler;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import lombok.Cleanup;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @Author tylt6688
 * @Date 2022/2/7 14:24
 * @Description 鉴权失败，权限不足拒绝访问异常处理
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Component
public class AccessDeniedHandlerImpl implements AccessDeniedHandler {

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException {

        response.setContentType(CharsetConstant.JSON_TYPE);

        response.setCharacterEncoding(CharsetConstant.UTF_8);

        // 告知前端权限不足状态码 403
        response.setStatus(HttpServletResponse.SC_FORBIDDEN);

        @Cleanup ServletOutputStream outputStream = response.getOutputStream();

        Result<Object> result = Result.createFailMessage(ErrorEnum.NO_PERMISSION, accessDeniedException.getMessage());

        outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));


    }
}
