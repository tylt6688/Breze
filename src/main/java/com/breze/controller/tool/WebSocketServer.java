package com.breze.controller.tool;

import lombok.extern.log4j.Log4j2;
import org.jetbrains.annotations.NotNull;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

@Log4j2
@Component
@ServerEndpoint("/webSocket/{sid}")
public class WebSocketServer implements EnvironmentAware {
    //静态变量，用来记录当前在线连接数。需要设计成线程安全的。
    private static int onlineCount = 0;

    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
    private static final CopyOnWriteArraySet<WebSocketServer> webSocketSet = new CopyOnWriteArraySet<>();

    //接收sid
    private String sid = "";

    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;

    private Environment webSocketEnvironment;

    @Override
    public void setEnvironment(@NotNull final Environment environment) {
        if (webSocketEnvironment == null) {
            log.info("初始化全局环境变量");
            webSocketEnvironment = environment;
        }
    }

    /**
     * 建立连接成功
     *
     * @param session 可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session, @PathParam("sid") String sid) {
        // 防止发生重复连接
        for (WebSocketServer webSocket : webSocketSet) {
            if (webSocket.sid.equals(sid)) {
                webSocketSet.remove(webSocket);
                subOnlineCount();           //在线数减1
                break;
            }
        }

        this.session = session;
        webSocketSet.add(this);     //加入set中
        addOnlineCount();//在线数加1

        log.info("有新连接，连接名:{},当前WebSocket连接数目为:{}", sid, getOnlineCount());
        this.sid = sid;

    }

    /**
     * 关闭连接
     */
    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        webSocketSet.remove(this);  //从set中删除
        subOnlineCount();           //在线数减1
        log.info("连接关闭{}，当前WebSocket连接数目为:{},关闭原因:{}", sid, getOnlineCount(), closeReason.getReasonPhrase());
    }

    /**
     * 发生错误
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.info("发生错误：" + sid + "，错误内容:" + error.getMessage());
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
        log.info("收到来自:" + sid + "的信息:" + message);
        // 群发消息
        for (WebSocketServer webSocket : webSocketSet) {
            try {
                log.info("推送消息到:" + sid + ",推送内容:" + message);
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
    public static void sendInfo(String message, @PathParam("sid") String sid) {
        log.info("推送消息到窗口" + sid + "，推送内容:" + message);
        for (WebSocketServer item : webSocketSet) {
            try {
                //这里可以设定只推送给这个sid的，为null则全部推送
                if (sid == null || sid.length() == 0) {
                    item.sendMessage(message);
                } else if (item.sid.equals(sid)) {
                    item.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //推送给指定sid
    public static boolean sendInfoBySid(@PathParam("sid") String sid, String message) throws IOException {
        log.info("推送消息到窗口" + sid + "，推送内容:" + message);
        boolean result = false;
        if (webSocketSet.size() == 0) {
            result = false;
        }
        for (WebSocketServer item : webSocketSet) {
            try {
                if (item.sid.equals(sid)) {
                    item.sendMessage(message);
                    log.info("推送消息到:" + sid + "，推送内容:" + message);
                    result = true;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }


    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocketServer.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebSocketServer.onlineCount--;
    }


}

