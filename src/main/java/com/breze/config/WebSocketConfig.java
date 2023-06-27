package com.breze.config;

import com.breze.common.interceptor.WebSocketInterceptor;
import com.breze.common.handler.WebSocketHandlerImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * @Author tylt6688
 * @Date 2023/6/5 16:45
 * @Description WebSocket 配置类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {

    @Bean
    public WebSocketInterceptor getWebSocketInterceptor() {
        return new WebSocketInterceptor();
    }

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        // 此处定义webSocket的连接地址以及允许跨域
        registry.addHandler(webSocketHandler(), "/websocket").addInterceptors(getWebSocketInterceptor()).setAllowedOrigins("*");
        // 同上，同时开启了Sock JS的支持，目的为了支持IE8及以下浏览器
        registry.addHandler(webSocketHandler(), "/sockjs/websocket").addInterceptors(getWebSocketInterceptor()).setAllowedOrigins("*").withSockJS();
    }

    @Bean
    public WebSocketHandlerImpl webSocketHandler() {
        return new WebSocketHandlerImpl();
    }

    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }
}
