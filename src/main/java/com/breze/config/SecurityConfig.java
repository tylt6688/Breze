package com.breze.config;

import com.breze.security.filter.JwtAuthenticationFilter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import com.breze.security.handler.LoginFailureHandler;
import com.breze.security.handler.LoginSuccessHandler;
import com.breze.security.filter.KaptchaFilter;
import com.breze.security.handler.ExitSuccessHandler;
import com.breze.security.securityimpl.AccessDeniedHandlerImpl;
import com.breze.security.securityimpl.AuthenticationEntryPointImpl;
import com.breze.security.securityimpl.UserDetailServiceImpl;


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
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    KaptchaFilter kaptchaFilter;
    @Autowired
    LoginSuccessHandler loginSuccessHandler;
    @Autowired
    LoginFailureHandler loginFailureHandler;
    @Autowired
    AccessDeniedHandlerImpl accessDeniedHandlerImpl;
    @Autowired
    AuthenticationEntryPointImpl authenticationEntryPointImpl;
    @Autowired
    ExitSuccessHandler exitSuccessHandler;
    @Autowired
    UserDetailServiceImpl userDetailService;

    @Bean
    JwtAuthenticationFilter jwtAuthenticationFilter() throws Exception {
        return new JwtAuthenticationFilter(authenticationManager());
    }

    //告知加密方式
    @Bean
    BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }


    // 白名单数组
    private static final String[] URL_WHITELIST = {
            "/wxlogin",
            "/login",
            "/logout",
            "/kaptcha",
            "/favicon.ico",
            "/swagger-ui/**",
            "/webjars/**",
            "/*/api-docs",
            "/swagger-resources/**",
            "/druid/**"
    };
    //  Breze-Portal-Get类型Api接口白名单数组
    private static final String[] PORTAL_WHITELIST = {
            // TODO 暂时放行全部，等待后期按 Get 接口白名单进行控制 [抄送人：tylt6688 待办人：ChenWX 2022-08-29]
            "/breze/portal/**",
            // 以下为放行举例，此行注释与上述 TODO 待阅读后下次提交删除
            "/breze/portal/banner/info/**",
            "/breze/portal/banner/select",
    };


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //允许跨域
        http.cors()
                .and()
                // 关闭csrf预防攻击认证
                .csrf().disable()
                // 放行Swagger前端展示

                .headers().frameOptions().disable()
                .and()
                // 配置登录请求
                .formLogin()
                .failureHandler(loginFailureHandler)
                .successHandler(loginSuccessHandler)

                // 退出登录
                .and()
                .logout()
                .logoutSuccessHandler(exitSuccessHandler)

                .and()
                // 前后端分离禁用Session，选择不生成session策略
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)

                .and()
                // 配置拦截规则
                .authorizeHttpRequests()
                // 配置拦截白名单放行
                .antMatchers(URL_WHITELIST).permitAll()
                .antMatchers(PORTAL_WHITELIST).permitAll()
                // .antMatchers("/**/**").hasRole("SUPER_ADMIN")
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
    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        // auth.inMemoryAuthentication().withUser("tylt").password("123456").roles("SUPER_ADMIN");
        auth.userDetailsService(userDetailService);
    }
}
