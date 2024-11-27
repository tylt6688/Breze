package com.breze.common.netty;

//public class NettyClient {
//
//    private Channel channel;
//
//    public void connect(final String ip, final int port) {
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
//            ChannelFuture channelFuture = bootstrap.connect(ip, port).sync();
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

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;


@Slf4j
public class NettyClient {
    private String ip;
    private int port;

    private EventLoopGroup group;
    private Channel channel;


    public NettyClient(String ip, int port) {
        this.ip = ip;
        this.port = port;
    }

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

            ChannelFuture channelFuture = bootstrap.connect(ip, port).sync();
            channel = channelFuture.channel();
            log.debug("Connected to server: {}:{}", ip, port);
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

        NettyClient client = new NettyClient("192.168.1.112", 8008);
        client.start();
        // 连接建立后发送自定义消息
        client.sendMessage("Custom message to server");
    }
}
