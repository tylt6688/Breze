package com.breze.security.filter;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.breze.common.consts.CacheConstant;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.SecurityConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.CaptchaException;
import com.breze.security.handler.AuthenticationFailureHandlerImpl;
import com.breze.utils.RedisUtil;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;
import java.io.IOException;

/**
 * @Author tylt6688
 * @Date 2022/2/11 14:50
 * @Description 每次请求携带 jwt 进行令牌校验以及认证鉴权投票判定，验证码判定机制，在进行账号密码判断前进行第三方验证码判断
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Component
public class CaptchaFilter extends OncePerRequestFilter {

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    AuthenticationFailureHandlerImpl authenticationFailureHandlerImpl;

    private static final String KEY = "key";

    private static final String CODE = "code";

    @Override
    protected void doFilterInternal(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response, @NotNull FilterChain filterChain) throws ServletException, IOException {

        String url = request.getRequestURI();
        String method = request.getMethod();

        if (SecurityConstant.LOGIN_PATH.equals(url) && method.equals(CharsetConstant.POST)) {
            try {
                // 先校验验证码
                validate(request);
            } catch (CaptchaException e) {
                // 交给登录失败处理器
                authenticationFailureHandlerImpl.onAuthenticationFailure(request, response, e);
            }
        }
        filterChain.doFilter(request, response);
    }

    /**
     * 校验验证码逻辑
     */
    private void validate(HttpServletRequest request) {

        String key = request.getParameter(KEY);
        String code = request.getParameter(CODE);

        log.info("传入的参数key:{}--code:{} ", key, code);

        //先判断 code与 key是否为空，再从Redis中获取进行比较
        if (StringUtils.isBlank(key) || StringUtils.isBlank(code) || !code.equals(redisUtil.hashGet(CacheConstant.CAPTCHA_KEY, key))) {
            throw new CaptchaException(ErrorEnum.VERIFY_CODE_ERROR.getErrorName());
        }

        //一次性使用，使用后将其从Redis中删除
        redisUtil.hashDel(CacheConstant.CAPTCHA_KEY, key);
    }
}
