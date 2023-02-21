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

    public String title;

    private String name;

    private String description;

    private String copyrightName;

    private String copyrightYear;

    private Boolean swaggerEnabled;

    private String version;

}
