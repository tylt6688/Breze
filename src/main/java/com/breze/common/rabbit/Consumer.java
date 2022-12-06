package com.breze.common.rabbit;

import cn.hutool.json.JSONUtil;
import com.rabbitmq.client.Channel;
import lombok.extern.log4j.Log4j2;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageProperties;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.breze.config.RabbitMQConfig;
import com.breze.entity.pojo.tool.Email;
import com.breze.service.tool.MailService;

import java.io.IOException;

/**
 * @Author tylt6688
 * @Date 2022/4/24 11:33
 * @Description 队列消息消费者
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Component
public class Consumer {

    @Autowired
    MailService mailService;

    /**
     * 绑定消息落脚点
     */
    @RabbitListener(queues = RabbitMQConfig.QUEUE_A)
    public void consume(Message message, Channel channel) throws IOException {

        String str = new String(message.getBody());
        Email email = JSONUtil.toBean(str, Email.class);

        log.info("收到队列消息:---{}", email.toString());
        MessageProperties properties = message.getMessageProperties();
        long tag = properties.getDeliveryTag();

        boolean success = mailService.sendHtmlMailThymeLeaf(email);
        // 消费确认
        if (success) {
            channel.basicAck(tag, false);
        } else {
            channel.basicNack(tag, false, true);
        }


    }
}
