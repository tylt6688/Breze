package com.breze.security.securityimpl;

import cn.hutool.json.JSONUtil;
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

/*
 * @Author tylt
 * @Description //TODO 授权失败，权限不足拒绝访问异常处理
 * @Date 2022/2/7 14:24
 **/
@Component
public class AccessDeniedHandlerImpl implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {

		response.setContentType("application/json;charset=UTF-8");
		// 告知前端权限不足状态码403
		response.setStatus(HttpServletResponse.SC_FORBIDDEN);

		ServletOutputStream outputStream = response.getOutputStream();

//		Message result = Message.createFailureMessage(ErrorEnum.NoPermission,accessDeniedException.getMessage());
		Result result = Result.createFailureMessage(ErrorEnum.NoPermission,"权限不足");

		outputStream.write(JSONUtil.toJsonStr(result).getBytes(StandardCharsets.UTF_8));

		outputStream.flush();

		outputStream.close();

	}
}
