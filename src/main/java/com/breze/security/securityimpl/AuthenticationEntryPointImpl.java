package com.breze.security.securityimpl;

import cn.hutool.json.JSONUtil;
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
 * @author TYLT
 * jwt入口处理器
 * TODO 全局认证失败异常处理器
 */
@Component
public class AuthenticationEntryPointImpl implements AuthenticationEntryPoint {

	@Override
	public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {

		response.setContentType("application/json;charset=UTF-8");
		//告知未授权认证状态码401
		response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

		ServletOutputStream outputStream = response.getOutputStream();

		//授权失败的情况下返回异常信息
		Result result = Result.createFailureMessage(ErrorEnum.IllegalOperation,"用户当前未授权");

		outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

		outputStream.flush();

		outputStream.close();
	}
}
