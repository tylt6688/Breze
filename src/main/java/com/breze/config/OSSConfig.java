package com.breze.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description OSS配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "oss.qiniu")
public class OSSConfig {

    private String url;

    private String accessKey;

    private String secretKey;

    private String bucketName;

}
