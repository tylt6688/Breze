package com.breze.config;

import lombok.extern.log4j.Log4j2;
import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description RabbitMQ配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Configuration
public class RabbitMQConfig {

    public static final String QUEUE_A = "QUEUE_A";
    public static final String QUEUE_B = "QUEUE_B";
    public static final String QUEUE_C = "QUEUE_C";

    public static final String EXCHANGE_A = "Exchange_A";
    public static final String EXCHANGE_B = "Exchange_B";
    public static final String EXCHANGE_C = "Exchange_C";

    public static final String ROUTING_KEY_A = "Routing_Key_A";
    public static final String ROUTING_KEY_B = "Routing_Key_B";
    public static final String ROUTING_KEY_C = "Routing_Key_C";

    private final CachingConnectionFactory connectionFactory;

    @Autowired
    public RabbitMQConfig(CachingConnectionFactory connectionFactory) {
        this.connectionFactory = connectionFactory;
    }


    @Bean
    public SimpleRabbitListenerContainerFactory rabbitListenerContainerFactory() {
        SimpleRabbitListenerContainerFactory factory = new SimpleRabbitListenerContainerFactory();
        // 在配置序列化json消息转换器的时候出现了覆盖。所以配置文件中的手动ack配置被SimpleRabbitListenerContainerFactory中的配置所覆盖，而rabbitmq默认使用的auto ack。当然是用默认自动ack并不意味这channel.basicAck(deliveryTag, false)就不能用了。于是乎出现：消息被消费后自动确认后，又执行到手动channel.basicAck(deliveryTag, false)，导致最终出现了两次ack。所以就有了#method<channel.close>(reply-code=406, reply-text=PRECONDITION_FAILED - unknown delivery tag 1, class-id=60, method-id=80)的报错。
        factory.setAcknowledgeMode(AcknowledgeMode.MANUAL);
        factory.setConnectionFactory(connectionFactory);
        factory.setMessageConverter(new Jackson2JsonMessageConverter());
        return factory;
    }

    @Bean
    public RabbitTemplate rabbitTemplate() {
        RabbitTemplate rabbitTemplate = new RabbitTemplate(connectionFactory);
        rabbitTemplate.setMessageConverter(new Jackson2JsonMessageConverter());

        // 进行回调判断消息是否成功发送到Exchange
        rabbitTemplate.setConfirmCallback((correlationData, ack, cause) -> {
            if (ack) {
                log.info("消息成功发送到Exchange");
            } else {
                log.info("消息发送到Exchange失败, {}, cause: {}", correlationData, cause);
            }
        });

        return rabbitTemplate;
    }


    @Bean
    public DirectExchange defaultExchange() {
        return new DirectExchange(EXCHANGE_A);
    }

    /**
     * 获取队列A,队列持久
     */

    @Bean
    public Queue queueA() {
        return new Queue(QUEUE_A, true);
    }

    /**
     * 获取队列B,队列持久
     */
    @Bean
    public Queue queueB() {
        return new Queue(QUEUE_B, true);
    }


    @Bean
    public Binding bindingA() {
        return BindingBuilder.bind(queueA()).to(defaultExchange()).with(RabbitMQConfig.ROUTING_KEY_A);
    }

    @Bean
    public Binding bindingB() {
        return BindingBuilder.bind(queueB()).to(defaultExchange()).with(RabbitMQConfig.ROUTING_KEY_B);
    }


}