package com.breze.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 邮件配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "spring.mail")
public class MailConfig {

    /**
     * 邮箱服务地址
     */
    private String host;

    /**
     * 邮箱服务器用户名
     */
    private String username;

    /**
     * 邮箱服务器密码
     */
    private String password;

    @Bean
    public JavaMailSenderImpl javaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(host);
        mailSender.setUsername(username);
        mailSender.setPassword(password);
        return mailSender;
    }


}