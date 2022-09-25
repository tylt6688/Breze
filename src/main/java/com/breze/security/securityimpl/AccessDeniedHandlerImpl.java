package com.breze.security.securityimpl;

import cn.hutool.json.JSONUtil;
import com.breze.common.consts.CharsetConstant;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
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
 * @Description 授权失败，权限不足拒绝访问异常处理
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Component
public class AccessDeniedHandlerImpl implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {

		response.setContentType(CharsetConstant.JSON_TYPE);
		response.setCharacterEncoding(CharsetConstant.UTF_8);
		// 告知前端权限不足状态码 403
		response.setStatus(HttpServletResponse.SC_FORBIDDEN);

		ServletOutputStream outputStream = response.getOutputStream();

		Result result = Result.createFailMessage(ErrorEnum.NoPermission,"权限不足");

		outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

		outputStream.flush();

		outputStream.close();

	}
}
