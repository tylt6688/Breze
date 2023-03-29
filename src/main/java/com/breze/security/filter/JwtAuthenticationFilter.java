package com.breze.security.filter;

import com.breze.common.consts.SecurityConstant;
import com.breze.common.exception.BrezeDeniedException;
import com.breze.common.exception.BrezeJwtException;
import com.breze.config.JwtConfig;
import com.breze.entity.pojo.rbac.User;
import com.breze.security.UserDetailServiceImpl;
import com.breze.security.handler.AccessDeniedHandlerImpl;
import com.breze.security.handler.AuthenticationEntryPointImpl;
import com.breze.security.handler.AuthenticationFailureHandlerImpl;
import com.breze.service.rbac.UserService;
import com.breze.utils.JwtUtil;
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
    private JwtUtil jwtUtil;

    @Autowired
    private UserService userService;

    @Autowired
    private UserDetailServiceImpl userDetailService;

    @Autowired
    private AuthenticationFailureHandlerImpl authenticationFailureHandler;

    @Autowired
    AuthenticationEntryPointImpl authenticationEntryPoint;

    @Autowired
    private AccessDeniedHandlerImpl accessDeniedHandler;


    public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {

        // 判断JWT是否为空
        String jwt = request.getHeader(jwtConfig.getHeader());
        log.info("[原始带Bearer头jwt信息]：---{}",jwt);
        if (jwt == null || SecurityConstant.BREZE_APP.equals(jwt)) {
            log.info("[JWT为空](初始登录以及白名单接口访问时为空正常):---{}", jwt);
            chain.doFilter(request, response);
            return;
        } else if (!jwt.startsWith(SecurityConstant.JWT_PREFIX)) {
            log.info("[JWT头部格式不正确]:---{}", jwt);
            accessDeniedHandler.handle(request, response, new BrezeDeniedException("JWT头部格式不正确"));
            return;
        }

        jwt = jwt.replace(SecurityConstant.JWT_PREFIX, "");
        log.info("[处理后的jwt信息]：---{}",jwt);
        // 进行JWT解析
        Claims claim = jwtUtil.getClaimByToken(jwt);

        if (claim == null) {
            authenticationEntryPoint.commence(request,response,new BrezeJwtException("登录凭证失效"));
            return;
        }
       // 判断token是否过期
//        else if (jwtUtil.isTokenExpired(jwt)) {
//            authenticationFailureHandler.onAuthenticationFailure(request, response, new BrezeJwtException("JWT已过期"));
//            return;
//        }

        // 获取用户的权限菜单等信息
        String username = claim.getSubject();

        User user = userService.getUserByUserName(username);

        // 第三个参数是查询出来的权限信息
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, null, userDetailService.getUserAuthority(user.getId()));

        SecurityContextHolder.getContext().setAuthentication(token);

        chain.doFilter(request, response);
    }

}
