package com.breze.security.filter;

import com.breze.common.exception.BrezeJwtException;
import com.breze.entity.bo.sys.LoginUserCacheBO;
import com.breze.security.UserDetailServiceImpl;
import com.breze.security.handler.AuthenticationEntryPointImpl;
import com.breze.service.rbac.UserService;
import com.breze.utils.BrezeUtil;
import com.breze.utils.TokenUtil;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/2/11 14:50
 * @Description 每次请求携带jwt进行令牌校验以及认证鉴权投票判定
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
public class JwtAuthenticationFilter extends BasicAuthenticationFilter {


    @Autowired
    TokenUtil tokenUtil;

    @Autowired
    UserService userService;

    @Autowired
    UserDetailServiceImpl userDetailService;

    @Autowired
    AuthenticationEntryPointImpl authenticationEntryPoint;


    public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {

        try {
            LoginUserCacheBO loginUser = tokenUtil.getLoginUser(request);
            if (BrezeUtil.isNotNull(loginUser)) {
                List<GrantedAuthority> userAuthority = userDetailService.getUserAuthority(userService.getUserByUserName(loginUser.getUsername()));
                // 第三个参数是查询出来的权限信息
                UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(loginUser.getUsername(), null, userAuthority);
                // 把用户的信息存入安全上下文 SecurityContextHolder中
                SecurityContextHolder.getContext().setAuthentication(authenticationToken);
            }
            chain.doFilter(request, response);
        }
        catch (Exception e){
            authenticationEntryPoint.commence(request, response, new BrezeJwtException(e.getMessage()));
        }

    }

}
