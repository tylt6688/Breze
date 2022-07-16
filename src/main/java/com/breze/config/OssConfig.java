package com.breze.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "oss.qiniu")
public class OssConfig {

    private String url;

    private String accessKey;

    private String secretKey;

    private String bucketName;

}
