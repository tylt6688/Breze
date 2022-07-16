package com.breze.security.jwt;

import cn.hutool.core.util.StrUtil;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import com.breze.entity.pojo.rbac.User;
import com.breze.security.securityimpl.UserDetailServiceImpl;
import com.breze.service.rbac.UserService;
import com.breze.config.JwtConfig;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * @Author tylt
 * @Description //TODO 每次请求携带jwt进行令牌校验以及认证鉴权投票判定
 * @Date 2022/2/11 14:50
 **/

@Log4j2
public class JwtAuthenticationFilter extends BasicAuthenticationFilter {

    @Autowired
    JwtConfig jwtConfig;

    @Autowired
    UserService userService;

    @Autowired
    UserDetailServiceImpl userDetailService;


    public JwtAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {

        // 判断JWT是否为空
        String jwt = request.getHeader(jwtConfig.getHeader());
        if (StrUtil.isBlankOrUndefined(jwt)) {
            chain.doFilter(request, response);
            return;
        }

        // 进行JWT解析
        Claims claim = jwtConfig.getClaimByToken(jwt);
        log.info(claim);
        if (claim == null) {
            throw new JwtException("token令牌异常");
        }
        // 判断token是否过期
        if (jwtConfig.isTokenExpired(claim)) {
            throw new JwtException("token令牌已过期");
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
