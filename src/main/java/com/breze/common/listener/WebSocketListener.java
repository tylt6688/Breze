package com.breze.common.listener;

import lombok.NonNull;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * @Author tylt6688
 * @Date 2023/8/16 10:44
 * @Description WebSocket 监听器
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Log4j2
@Component
@ServerEndpoint("/webSocket/{connectId}")
public class WebSocketListener implements EnvironmentAware {
    /**
     * 静态变量，记录当前在线连接数,必须是线程安全的
     */
    private static int onlineCount = 0;

    /**
     * concurrent包的线程安全Set用来存放每个客户端对应的WebSocket对象
     * 若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
     */
    private static final CopyOnWriteArraySet<WebSocketListener> WEB_SOCKET_SET = new CopyOnWriteArraySet<>();

    /**
     * 接收connectId
     */
    private String connectId = "";

    /**
     * 与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    private Session session;

    private Environment webSocketEnvironment;

    @Override
    public void setEnvironment(@NonNull final Environment environment) {
        if (webSocketEnvironment == null) {
            log.info("初始化全局环境变量");
            webSocketEnvironment = environment;
        }
    }

    /**
     * 建立连接成功
     *
     * @param session [可选参数]，session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("connectId") String connectId) {
        // 防止发生重复连接
        for (WebSocketListener webSocket : WEB_SOCKET_SET) {
            if (webSocket.connectId.equals(connectId)) {
                WEB_SOCKET_SET.remove(webSocket);
                subOnlineCount();
                break;
            }
        }

        this.session = session;
        WEB_SOCKET_SET.add(this);     //加入set中
        addOnlineCount();//在线数加1

        log.info("有新连接，连接ID:{},当前WebSocket连接数目为:{}", connectId, getOnlineCount());
        this.connectId = connectId;

    }

    /**
     * 关闭连接
     */
    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        WEB_SOCKET_SET.remove(this);  //从set中删除
        subOnlineCount();           //在线数减1
        log.info("连接关闭{}，当前WebSocket连接数目为:{},关闭原因:{}", connectId, getOnlineCount(), closeReason.getReasonPhrase());
    }

    /**
     * 发生错误
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.info("发生错误：{}，错误内容:{}", connectId, error.getMessage());
        error.printStackTrace();
    }

    /**
     * 接收客户端文本信息
     *
     * @param message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public void onMessage(Session session, String message) {
        log.info("收到来自:{}的信息:{}", connectId, message);
        // 群发消息
        for (WebSocketListener webSocket : WEB_SOCKET_SET) {
            try {
                log.info("推送消息到:{},推送内容:{}", connectId, message);
                webSocket.sendMessage("服务器返回：" + message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 这个方法与上面几个方法不一样。没有用注解，是根据自己需要添加的方法。
     */
    public void sendMessage(String message) throws IOException {
        this.session.getBasicRemote().sendText(message);
    }

    /**
     * 群发自定义消息
     */
    public static void sendInfo(@PathParam("connectId") String connectId, String message) {
        log.info("推送消息到窗口{}，推送内容:{}", connectId, message);
        for (WebSocketListener item : WEB_SOCKET_SET) {
            try {
                // 这里可以设定只推送给这个sid的，为null则全部推送
                if (connectId == null || connectId.isEmpty()) {
                    item.sendMessage(message);
                } else if (item.connectId.equals(connectId)) {
                    item.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    // 推送给指定sid
    public static boolean sendInfoBySid(@PathParam("connectId") String connectId, String message) {
        log.info("推送消息到窗口{}，推送内容:{}", connectId, message);
        boolean result = false;
        if (!WEB_SOCKET_SET.isEmpty()) {
            for (WebSocketListener item : WEB_SOCKET_SET) {
                try {
                    if (item.connectId.equals(connectId)) {
                        item.sendMessage(message);
                        log.info("推送消息到:{}，推送内容:{}", connectId, message);
                        result = true;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }


    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocketListener.onlineCount++;
    }

    /**
     * ws在线数目减 1
     */
    public static synchronized void subOnlineCount() {
        WebSocketListener.onlineCount--;
    }


}

