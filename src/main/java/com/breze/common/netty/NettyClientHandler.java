package com.breze.common.netty;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.CharsetUtil;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class NettyClientHandler extends ChannelInboundHandlerAdapter {
    /**
     * 通道创建就绪后触发
     *
     * @param ctx 上下文对象
     */
    @Override
    public void channelActive(ChannelHandlerContext ctx) {
        log.debug("client ctx{}", ctx);
//        for (int i = 0; i < 10; i++) {
//            ctx.writeAndFlush(Unpooled.copiedBuffer("Hello, Server!"+i, CharsetUtil.UTF_8));
//        }

    }

    /**
     * 当通道有读取事件时，会触发
     *
     * @param ctx 上下文对象
     * @param msg 收到的消息
     */
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) {
        ByteBuf buf = (ByteBuf) msg;
        System.out.println("服务器回复的消息:" + buf.toString(CharsetUtil.UTF_8));
        System.out.println("服务器的地址： " + ctx.channel().remoteAddress());
    }

    /**
     * 处理异常, 一般是需要关闭通道
     *
     * @param ctx       上下文对象
     * @param throwable 异常
     */
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable throwable) {
        throwable.printStackTrace();
        ctx.close();
        System.out.println("监听到网络断开！");
    }
}
