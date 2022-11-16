package com.breze.config;

import com.breze.common.consts.SecurityConstant;
import com.breze.security.filter.JwtAuthenticationFilter;
import com.breze.security.filter.KaptchaFilter;
import com.breze.security.handler.LoginSuccessHandlerImpl;
import com.breze.security.handler.LogoutSuccessHandlerImpl;
import com.breze.security.handler.LoginFailureHandlerImpl;
import com.breze.security.handler.AccessDeniedHandlerImpl;
import com.breze.security.handler.AuthenticationEntryPointImpl;
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
 * @Description Spring Security配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

    @Autowired
    KaptchaFilter kaptchaFilter;
    @Autowired
    LoginSuccessHandlerImpl loginSuccessHandlerImpl;
    @Autowired
    LoginFailureHandlerImpl loginFailureHandlerImpl;
    @Autowired
    AccessDeniedHandlerImpl accessDeniedHandlerImpl;
    @Autowired
    AuthenticationEntryPointImpl authenticationEntryPointImpl;
    @Autowired
    LogoutSuccessHandlerImpl logoutSuccessHandlerImpl;
    @Autowired
    private AuthenticationConfiguration authenticationConfiguration;


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
     * 放行静态资源
     */
//    @Bean
//    WebSecurityCustomizer webSecurityCustomizer() {
//        return web -> web.ignoring().antMatchers("/static/**", "/favicon.ico");
//    }
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        //允许跨域
        http.cors()

                .and()
                // 关闭csrf预防攻击认证
                .csrf().disable()
                .headers().frameOptions().disable()

                .and()
                // 配置登录请求
                .formLogin()
                .failureHandler(loginFailureHandlerImpl)
                .successHandler(loginSuccessHandlerImpl)

                // 退出登录
                .and()
                .logout()
                .logoutSuccessHandler(logoutSuccessHandlerImpl)

                // 前后端分离禁用Session，选择不生成session策略
                .and()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)

                // 配置拦截规则
                .and()
                .authorizeHttpRequests()
                // 配置拦截白名单放行
                .antMatchers(SecurityConstant.URL_WHITELIST).permitAll()
                .antMatchers(SecurityConstant.PORTAL_WHITELIST).permitAll()
                // 对其它请求进行拦截认证处理  Spring EL
                .anyRequest()
                .authenticated()


                // 异常处理器
                .and()
                .exceptionHandling()
                .authenticationEntryPoint(authenticationEntryPointImpl)
                .accessDeniedHandler(accessDeniedHandlerImpl)

                // 自定义过滤器进行添加
                .and()
                // 自定义验证码过滤器，在账号密码验证器运行之前
                .addFilterBefore(kaptchaFilter, UsernamePasswordAuthenticationFilter.class)
                // 添加 JWT 授权验证过滤器
                .addFilter(jwtAuthenticationFilter());

        return http.build();
    }


}
