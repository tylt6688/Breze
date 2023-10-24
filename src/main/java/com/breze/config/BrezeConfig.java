package com.breze.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * @Author tylt6688
 * @Date 2020/2/5 12:00
 * @Discription 项目配置类解释文件，所有项目主体配置应在此编写
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "breze")
public class BrezeConfig {

    /**
     * 项目标题
     */
    private String title;

    /**
     * 项目标题
     */
    private String name;

    /**
     * 项目描述
     */
    private String description;

    /**
     * 项目版权归属
     */
    private String copyrightName;

    /**
     * 项目版权年份
     */
    private String copyrightYear;

    /**
     * 项目版本号
     */
    private String version;

    /**
     * 上传文件路径
     */
    private String uploadPath;

    /**
     * 项目Swagger是否开启
     */
    private Boolean swaggerEnabled;

    /**
     * 项目验证码是否开启
     */
    private Boolean captchaDevEnabled;

}
