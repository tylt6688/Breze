package com.breze.security.filter;

import com.breze.common.consts.CharsetConstant;
import com.breze.common.exception.JwtBrezeException;
import com.breze.config.JwtConfig;
import com.breze.entity.pojo.rbac.User;
import com.breze.security.handler.LoginFailureHandlerImpl;
import com.breze.security.securityimpl.UserDetailServiceImpl;
import com.breze.service.rbac.UserService;
import io.jsonwebtoken.Claims;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author tylt6688
 * @Date 2022/2/11 14:50
 * @Description 每次请求携带jwt进行令牌校验以及认证鉴权投票判定
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
public class JwtAuthenticationFilter extends BasicAuthenticationFilter {


    @Autowired
    private JwtConfig jwtConfig;

    @Autowired
    private UserService userService;

    @Autowired
    private UserDetailServiceImpl userDetailService;

    @Autowired
    private LoginFailureHandlerImpl loginFailureHandlerImpl;


    public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {

        // 判断JWT是否为空
        String jwt = request.getHeader(jwtConfig.getHeader());
        if (jwt == null || !jwt.startsWith(CharsetConstant.JWT_PREFIX)) {
            log.info("JWT为空或者格式不正确-----------{}", jwt);
            chain.doFilter(request, response);
            return;
        }

        jwt = jwt.replace(CharsetConstant.JWT_PREFIX, "");

        // 进行JWT解析
        Claims claim = jwtConfig.getClaimByToken(jwt);

        if (claim == null) {
            loginFailureHandlerImpl.onAuthenticationFailure(request, response, new JwtBrezeException("Token解析失败"));
            return;
        }
        // 判断token是否过期
        else if (Boolean.TRUE.equals(jwtConfig.isTokenExpired(claim))) {
            loginFailureHandlerImpl.onAuthenticationFailure(request, response, new JwtBrezeException("JWT已过期"));
            return;
        }

        // 获取用户的权限菜单等信息
        String username = claim.getSubject();

        User user = userService.getByUserName(username);

        // 第三个参数是查询出来的权限信息
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, null, userDetailService.getUserAuthority(user.getId()));

        SecurityContextHolder.getContext().setAuthentication(token);

        chain.doFilter(request, response);
    }

}
