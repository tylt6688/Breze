package com.breze.security.filter;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.breze.common.consts.CacheConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.KaptchaException;
import com.breze.security.handler.LoginFailureHandlerImpl;
import com.breze.utils.RedisUtil;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author tylt6688
 * @Date 2022/2/11 14:50
 * @Description 每次请求携带jwt进行令牌校验以及认证鉴权投票判定，验证码判定机制，在进行账号密码判断前进行第三方验证码判断
 * @Copyright(c) 2022 , 青枫网络工作室
 */

// TODO: 2022/8/20 等待修改自定义登陆方式
@Component
public class KaptchaFilter extends OncePerRequestFilter {

    @Autowired
    RedisUtil redisUtil;
    @Autowired
    LoginFailureHandlerImpl loginFailureHandlerImpl;

    @Override
    protected void doFilterInternal(HttpServletRequest request, @NotNull HttpServletResponse response, @NotNull FilterChain filterChain) throws ServletException, IOException {

        String url = request.getRequestURI();

        if ("/login".equals(url) && "POST".equals(request.getMethod())) {
            try {
                // 先校验验证码
                validate(request);
            } catch (KaptchaException exception) {
                // 交给认证失败处理器
                loginFailureHandlerImpl.onAuthenticationFailure(request, response, exception);
            }
        }
        filterChain.doFilter(request, response);
    }

    // 校验验证码逻辑
    private void validate(HttpServletRequest request) {

        String key = request.getParameter("key");
        String code = request.getParameter("code");

        //先判断 code与 key是否为空
        if (StringUtils.isBlank(code) || StringUtils.isBlank(key)) {
            throw new KaptchaException("非法验证码");
        }

        //从Redis中获取进行比较
        if (!code.equals(redisUtil.hashGet(CacheConstant.KAPTCHA_KEY, key))) {
            throw new KaptchaException(ErrorEnum.VerifyCodeError.getErrorName());
        }

        //一次性使用，使用后将其从Redis中删除
        redisUtil.hdel(CacheConstant.KAPTCHA_KEY, key);
    }
}
