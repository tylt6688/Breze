package com.breze.common.netty;

//public class NettyClient {
//
//    private Channel channel;
//
//    public void connect(final String host, final int port) {
//        EventLoopGroup group = new NioEventLoopGroup();
//        try {
//            Bootstrap bootstrap = new Bootstrap();
//            bootstrap.group(group)
//                    .channel(NioSocketChannel.class)
//                    .option(ChannelOption.TCP_NODELAY, true)
//                    .option(ChannelOption.CONNECT_TIMEOUT_MILLIS, 5000)
//                    .handler(new ChannelInitializer<SocketChannel>() {
//                        @Override
//                        protected void initChannel(SocketChannel ch) throws Exception {
//                            ch.pipeline().addLast(new NettyClientHandler());
//                        }
//                    });
//
//            ChannelFuture channelFuture = bootstrap.connect(host, port).sync();
//            channel = channelFuture.channel();
//            channel.closeFuture().sync();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            group.shutdownGracefully();
//        }
//    }
//
//    public void sendMessage(String message) {
//        if (channel != null && channel.isActive()) {
//            channel.writeAndFlush(Unpooled.copiedBuffer(message, CharsetUtil.UTF_8));
//        } else {
//            System.out.println("Channel is not active. Cannot send message.");
//        }
//    }
//
//
//}

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.util.CharsetUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

//public class NettyClient {
//
//    private Channel channel;
//
//    public void connect(String host, int port) {
//        EventLoopGroup group = new NioEventLoopGroup();
//        try {
//            Bootstrap bootstrap = new Bootstrap();
//            bootstrap.group(group)
//                    .channel(NioSocketChannel.class)
//                    .handler(new ChannelInitializer<SocketChannel>() {
//                        @Override
//                        protected void initChannel(SocketChannel ch) throws Exception {
//                            ch.pipeline().addLast(new NettyClientHandler());
//                        }
//                    });
//
//            ChannelFuture channelFuture = bootstrap.connect(host, port).sync();
//            channel = channelFuture.channel();
//            channel.closeFuture().sync();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            group.shutdownGracefully();
//        }
//    }
//
//    public void sendMessage(String message) {
//        if (channel != null && channel.isActive()) {
//            channel.writeAndFlush(Unpooled.copiedBuffer(message, CharsetUtil.UTF_8));
//        } else {
//            System.out.println("Channel is not active. Cannot send message.");
//        }
//    }
//
//
//}

@Slf4j
@Component
public class NettyClient {
    private  String host = "192.168.31.117";
    private int port = 8088;

    private EventLoopGroup group;
    private Channel channel;

    @PostConstruct
    public void start() {
        group = new NioEventLoopGroup();
        try {
            Bootstrap bootstrap = new Bootstrap();
            bootstrap.group(group)
                    .channel(NioSocketChannel.class)
                    .handler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception {
                            ch.pipeline().addLast(new NettyClientHandler());
                        }
                    });

            ChannelFuture channelFuture = bootstrap.connect(host, port).sync();
            channel = channelFuture.channel();
            log.debug("Connected to server: {}:{}", host, port);
        } catch (Exception e) {
            log.error("Failed to connect to server", e);
        }
    }

    public void sendMessage(String message) {
        if (channel != null && channel.isActive()) {
            channel.writeAndFlush(Unpooled.copiedBuffer(message, CharsetUtil.UTF_8));
        } else {
            log.warn("Channel is not active. Cannot send message.");
        }
    }

    @PreDestroy
    public void stop() {
        if (group != null) {
            group.shutdownGracefully();
        }
    }

    public static void main(String[] args) {

        NettyClient client = new NettyClient();
        client.start();
        // 等待连接建立后发送自定义消息
        client.sendMessage("Custom message to server");
    }
}
