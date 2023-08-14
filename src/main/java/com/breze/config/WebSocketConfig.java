package com.breze.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * @Author tylt6688
 * @Date 2023/6/5 16:45
 * @Description WebSocket 配置类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Configuration
public class WebSocketConfig {

    @Bean
    public ServerEndpointExporter serverEndpointExporter(){
        return new ServerEndpointExporter();
    }
}

