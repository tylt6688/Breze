package com.breze.common.handler;

import cn.hutool.json.JSONUtil;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.*;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Log4j2
@Component
public class WebSocketHandlerImpl implements WebSocketHandler {
    private static Set<WebSocketSession> webSocket = new HashSet<>();

    /**
     * 建立连接后触发的回调
     *
     * @param session
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) {
        webSocket.add(session);
        log.info("有新连接加入！当前在线人数为:{}", webSocket.size());
    }


    /**
     * 收到消息时触发的回调
     *
     * @param session
     * @param message
     */
    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) {
        log.info("收到新的消息！内容:{}", message.getPayload().toString());
    }

    /**
     * 发生异常，关闭连接
     *
     * @param session
     * @param exception
     */
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) {
        webSocket.remove(session);
        log.info("websocket发生异常！", exception);
    }

    /**
     * 关闭连接
     *
     * @param session
     * @param closeStatus
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus closeStatus) {
        webSocket.remove(session);
        log.debug("webSocket关闭连接，状态：{}，当前剩余连接数：{}", closeStatus, webSocket.size());
    }

    /**
     * 是否支持消息分片
     *
     * @return
     */
    @Override
    public boolean supportsPartialMessages() {
        return false;
    }

    /**
     * 发送消息
     *
     * @param message
     * @throws IOException
     */
    public static void sendString(String message) throws IOException {
        for (WebSocketSession webSocket : webSocket) {
            if (webSocket.isOpen()) {
                webSocket.sendMessage(new TextMessage(message));

            }
        }
        log.debug("webSocket发送消息，内容：{}，当前连接数：{}", message, webSocket.size());
    }

    /**
     * 发送消息
     *
     * @param map
     * @throws IOException
     */
    public static void sendMap(Map<String, Object> map) throws IOException {
        log.debug("webSocket发送消息，内容：{}，当前连接数：{}", JSONUtil.toJsonStr(map), webSocket.size());
        for (WebSocketSession webSocket : webSocket) {
            if (webSocket.isOpen()) {
                webSocket.sendMessage(new TextMessage(JSONUtil.toJsonStr(map)));
            }
        }
    }

    /**
     * 发送消息
     *
     * @param map
     * @throws IOException
     */
    public static void sendList(List<Object> map, String type) throws IOException {
        if (webSocket.size() > 0) {
            for (WebSocketSession webSocket : webSocket) {
                if (webSocket.isOpen()) {
//                    String urlType = getWebsocketUrlType(Objects.requireNonNull(webSocket.getUri()).toString());
//                    if(type.equals(urlType)){
                    webSocket.sendMessage(new TextMessage(JSONUtil.toJsonStr(map)));
//                    }
                }
            }
            log.debug("webSocket发送消息，内容：{}，当前连接数：{}", JSONUtil.toJsonStr(map), webSocket.size());
        }
    }
}
