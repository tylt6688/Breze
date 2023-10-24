package com.breze.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * @Author tylt6688
 * @Description Jwt配置类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "jwt.breze")
public class JwtConfig {

    /**
     * 给JWT起个名字方便后面获取
     */
    private String header;

    /**
     * 过期时间
     */
    private Long expire;

    /**
     * 密钥
     */
    private String secret;
}
