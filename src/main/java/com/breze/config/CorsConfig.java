package com.breze.config;

import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.SecurityConstant;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 跨域配置类，解决前后端分离产生的跨域问题
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {

    private CorsConfiguration buildConfig() {
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin(SecurityConstant.ALL);
        corsConfiguration.addAllowedHeader(SecurityConstant.ALL);
        corsConfiguration.addAllowedMethod(SecurityConstant.ALL);
        corsConfiguration.addExposedHeader(SecurityConstant.AUTHORIZATION);
        return corsConfiguration;
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration(SecurityConstant.ALL_PATH, buildConfig());
        return new CorsFilter(source);
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        // 设置允许跨域的路径
        registry.addMapping(SecurityConstant.ALL_PATH)
                // 设置允许跨域请求的域名
                .allowedOriginPatterns(SecurityConstant.ALL)
                // 是否允许Cookie
                .allowCredentials(true)
                // 设置允许的请求方式
                .allowedMethods(CharsetConstant.GET, CharsetConstant.POST, CharsetConstant.PUT, CharsetConstant.DELETE)
                // 最大响应时间
                .maxAge(3600);
    }

}
