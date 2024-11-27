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
     * 头部标题
     */
    private String title;

    /**
     * 项目名称
     */
    private String projectName;

    /**
     * 描述
     */
    private String description;

    /**
     * 版权归属
     */
    private String copyrightName;

    /**
     * 版权年份
     */
    private String copyrightYear;

    /**
     * 版本号
     */
    private String version;

    /**
     * 上传文件路径
     */
    private String uploadPath;

    /**
     * Swagger是否开启
     */
    private Boolean swaggerEnabled;

    /**
     * 开发模式下验证码是否开启
     */
    private Boolean captchaDevEnabled;

    /*
     * Python解释器路径
     */
    private String pythonInterpreter;

}
