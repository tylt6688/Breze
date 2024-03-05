package com.breze.config;

import com.breze.common.consts.SecurityConstant;
import com.breze.security.filter.CaptchaFilter;
import com.breze.security.filter.JwtAuthenticationFilter;
import com.breze.security.handler.*;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;


/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description Spring Security 配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

    @Autowired
    private AuthenticationSuccessHandlerImpl authenticationSuccessHandlerImpl;

    @Autowired
    private AuthenticationFailureHandlerImpl authenticationFailureHandlerImpl;

    @Autowired
    private AccessDeniedHandlerImpl accessDeniedHandlerImpl;

    @Autowired
    private AuthenticationEntryPointImpl authenticationEntryPointImpl;

    @Autowired
    private AuthenticationConfiguration authenticationConfiguration;

    @Autowired
    private LogoutSuccessHandlerImpl logoutSuccessHandlerImpl;

    @Autowired
    private CaptchaFilter captchaFilter;

    @Bean
    BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }


    @Bean
    public AuthenticationManager authenticationManager() throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }


    @Bean
    JwtAuthenticationFilter jwtAuthenticationFilter() throws Exception {
        return new JwtAuthenticationFilter(authenticationManager());
    }

    /**
     * 配置安全过滤器链
     */
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // 允许跨域
        http.cors()

                .and()
                // 关闭 csrf 预防跨站请求攻击认证
                .csrf().disable().headers().frameOptions().disable()

                // 前后端分离禁用 Session,选择不生成 session 策略
                .and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)

                .and()
                // 配置登录请求
                .formLogin()
                // 自定义登录请求路径(post)
                .loginProcessingUrl(SecurityConstant.LOGIN_PATH)
                // 自定义登录用户名密码属性名,默认为 username 和 password
//                .usernameParameter("username").passwordParameter("password")
//                .loginPage("/login") //配置登录页面(前后端不分离)
//                .successForwardUrl("/index") //登录成功后的url(post,前后端不分离)
//                .failureForwardUrl("/error") //登录失败后的url(post,前后端不分离)
                .successHandler(authenticationSuccessHandlerImpl)
                .failureHandler(authenticationFailureHandlerImpl)


                // 退出登录
                .and()
                .logout()
                // 自定义注销请求路径
                .logoutUrl("/breze/logout")
//                .logoutSuccessUrl("/bye") //注销成功后的 url(前后端不分离)
                // 注销成功处理器(前后端分离)
                .logoutSuccessHandler(logoutSuccessHandlerImpl)

                // 配置拦截规则
                .and()
                // 开启权限认证
                .authorizeHttpRequests()
                // 配置拦截白名单放行
                .antMatchers(SecurityConstant.URL_WHITELIST)
                .permitAll()
                .antMatchers(SecurityConstant.PORTAL_WHITELIST)
                .permitAll()

                // 对其它请求进行拦截认证处理  Spring EL，表示剩余接口都需要登录认证后才能访问
                .anyRequest().authenticated()

                // 异常处理器
                .and()
                .exceptionHandling()
                .authenticationEntryPoint(authenticationEntryPointImpl)
                .accessDeniedHandler(accessDeniedHandlerImpl)

                // 自定义过滤器进行添加
                .and()
                // 自定义验证码过滤器，在账号密码验证器运行之前，addFilterBefore可以在指定的Filter类之前添加过滤器
                .addFilterBefore(captchaFilter, UsernamePasswordAuthenticationFilter.class)
                // 添加 JWT 授权验证过滤器
                .addFilter(jwtAuthenticationFilter());

        return http.build();
    }


}
