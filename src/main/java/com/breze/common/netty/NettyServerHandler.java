package com.breze.common.netty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.util.CharsetUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class NettyServerHandler extends ChannelInboundHandlerAdapter {
    /**
     * 读取客户端发送的消息
     *
     * @param ctx 上下文对象
     * @param msg 客户端发送的数据
     */
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) {
        Channel channel = ctx.channel();
        // 将 msg 转成一个 ByteBuf，ByteBuf 是 Netty 提供的，不是 NIO 的 ByteBuffer.
        ByteBuf buf = (ByteBuf) msg;
        System.out.println("收到的消息"+buf.toString(CharsetUtil.UTF_8));

        log.debug("上下文{},客户端地址: {},消息:{}", ctx, channel.remoteAddress(), buf.toString(CharsetUtil.UTF_8));
    }

    /**
     * 读取完毕，回复
     *
     * @param ctx 上下文对象
     */
    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) {
        // writeAndFlush 是 write + flush 将数据写入到缓存，并刷新
        ctx.writeAndFlush(Unpooled.copiedBuffer("Hello, Client!", CharsetUtil.UTF_8));
    }

    /**
     * 处理异常, 一般是需要关闭通道
     *
     * @param ctx   上下文对象
     * @param cause 异常原因
     */
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) {
        ctx.close();
    }
}
