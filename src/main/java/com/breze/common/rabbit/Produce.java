package com.breze.common.rabbit;

import lombok.extern.log4j.Log4j2;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.breze.config.RabbitMQConfig;
import com.breze.entity.pojo.core.Email;

import java.util.UUID;


/**
 * @Author tylt6688
 * @Date 2022/4/24 11:30
 * @Description 队列消息生产者
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Component
public class Produce {

    @Autowired
    private RabbitTemplate rabbitTemplate;


    public Boolean sendMailByMQ(Email email) {
        // 实现异步确认接口，根据消息的唯一id，来判断，消息是否被投递成功，如若未投递成功可以维护一个消息唯一id和消息体的map映射，开启一个线程，决定是否继续投递。
        // 将消息放入RabbitMQ中，并设置消息的唯一id,避免消息重复生产
        String msgId = UUID.randomUUID().toString().replaceAll("-", "");
        email.setMsgId(msgId);
        CorrelationData correlationData = new CorrelationData(msgId);
        log.info("队列消息生成成功{}", msgId);
        //消息生产
        rabbitTemplate.convertAndSend(RabbitMQConfig.EXCHANGE_A, RabbitMQConfig.ROUTINGKEY_A, MessageHelper.objToMsg(email), correlationData);

        return true;

    }
}
