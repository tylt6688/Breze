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
 *  Broker:它提供一种传输服务,它的角色就是维护一条从生产者到消费者的路线，保证数据能按照指定的方式进行传输
 *  Channel:消息通道,包含于客户端的每个连接 Connection里,未避免重复连接耗费资源可建立多个channel.
 *  Exchange：消息交换机,它指定消息按什么规则,路由到哪个队列。可以绑定多个队列
 *  Queue:消息的载体,每个消息都会被投到一个或多个队列。
 *  Binding:绑定，它的作用就是把exchange和queue按照路由规则绑定起来.
 *  Routing Key:路由关键字,exchange根据这个关键字进行消息投递。
 *  vhost:虚拟主机,一个broker里可以有多个vhost，用作不同用户的权限分离。
 *  Producer:生产者,就是投递消息的程序.
 *  Consumer:消费者,就是接受消息的程序.需要对应多个队列才能都收到，因为一个队列里的消息只有一个消费者能收到
 *
 *
 *  功能：流量消峰、应用解耦、异步处理
 *  发送端的主要逻辑 “将消息发送给exchange，然后根据不同的策略分发给对应的queue”
 *  模式：六个模式
 */

@Log4j2
@Configuration
public class RabbitMQConfig {

    //消息队列(Message Queue) FIFO
    public static final String QUEUE_A = "QUEUE_A";
    public static final String QUEUE_B = "QUEUE_B";
    public static final String QUEUE_C = "QUEUE_C";


    //交换机
    public static final String EXCHANGE_A = "my-mq-exchange_A";
    public static final String EXCHANGE_B = "my-mq-exchange_B";
    public static final String EXCHANGE_C = "my-mq-exchange_C";


    //路由键
    public static final String ROUTINGKEY_A = "spring-boot-routingKey_A";
    public static final String ROUTINGKEY_B = "spring-boot-routingKey_B";
    public static final String ROUTINGKEY_C = "spring-boot-routingKey_C";

    @Autowired
    private CachingConnectionFactory connectionFactory;


    @Bean
    public SimpleRabbitListenerContainerFactory rabbitListenerContainerFactory(){
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
                log.info("消息发送到Exchange失败, {}, cause: {}"+correlationData+"---->"+cause);
            }
        });

        return rabbitTemplate;
    }

    /**
     * 针对消费者配置
     * 1. 设置交换机类型
     * 2. 将队列绑定到交换机
     * FanoutExchange: 将消息分发到所有的绑定队列，无routingkey的概念
     * HeadersExchange ：通过添加属性key-value匹配
     * DirectExchange:按照routingkey分发到指定队列
     * TopicExchange:多关键字匹配
     */
    @Bean
    public DirectExchange defaultExchange() {
        return new DirectExchange(EXCHANGE_A);
    }

    /**
     * 获取队列A,队列持久
     */
    // durable:是否持久化,默认是false,持久化队列：会被存储在磁盘上，当消息代理重启时仍然存在，暂存队列：当前连接有效
    // exclusive:默认也是false，只能被当前创建的连接使用，而且当连接关闭后队列即被删除。此参考优先级高于durable
    // autoDelete:是否自动删除，当没有生产者或者消费者使用此队列，该队列会自动删除。

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

    /**
     * 一个交换机可以绑定多个消息队列，也就是消息通过一个交换机，可以分发到不同的队列当中去
     * 绑定  将队列和交换机绑定, 并设置用于匹配键
     */
    @Bean
    public Binding bindingA() {
        return BindingBuilder.bind(queueA()).to(defaultExchange()).with(RabbitMQConfig.ROUTINGKEY_A);
    }

    @Bean
    public Binding bindingB() {
        return BindingBuilder.bind(queueB()).to(defaultExchange()).with(RabbitMQConfig.ROUTINGKEY_B);
    }


}