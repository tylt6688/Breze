package com.breze.security.filter;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.breze.common.consts.SystemConstant;
import com.breze.common.exception.KaptchaException;
import com.breze.security.LoginFailureHandler;
import com.breze.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * TODO 验证码判定机制
 * 在进行账号密码判断前进行第三方验证码判断
 */
@Component
public class KaptchaFilter extends OncePerRequestFilter {

    @Autowired
    LoginFailureHandler loginFailureHandler;

    @Autowired
    RedisUtil redisUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {

        String url = httpServletRequest.getRequestURI();

        if ("/login".equals(url) && "POST".equals(httpServletRequest.getMethod())) {
            try {
                // 校验验证码
                validate(httpServletRequest);
            } catch (KaptchaException e) {
                // 交给认证失败处理器
                loginFailureHandler.onAuthenticationFailure(httpServletRequest, httpServletResponse, e);
            }
        }
        filterChain.doFilter(httpServletRequest, httpServletResponse);
    }

    // 校验验证码逻辑
    private void validate(HttpServletRequest httpServletRequest) {

        String key = httpServletRequest.getParameter("key");
        String code = httpServletRequest.getParameter("code");


        //先判断用户的code与key是否为空
        if (StringUtils.isBlank(code) || StringUtils.isBlank(key)) {
            throw new KaptchaException("验证码错误");
        }

        //从redis中获取进行比较
        if (!code.equals(redisUtil.hashGet(SystemConstant.KAPTCHA_KEY, key))) {
            throw new KaptchaException("验证码错误");
        }

        //一次性使用，使用后将其从Redis中删除
        redisUtil.hdel(SystemConstant.KAPTCHA_KEY, key);
    }
}
