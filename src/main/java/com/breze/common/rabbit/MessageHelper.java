package com.breze.common.rabbit;

import cn.hutool.json.JSONUtil;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageBuilder;
import org.springframework.amqp.core.MessageDeliveryMode;
import org.springframework.amqp.core.MessageProperties;
/**
 * @Author tylt6688
 * @Date 2022/4/24 11:33
 * @Description 队列消息中介
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class MessageHelper {

    public static Message objToMsg(Object obj) {
        if (null == obj) {
            return null;
        }
        Message message = MessageBuilder.withBody(JSONUtil.toJsonStr(obj).getBytes()).build();
		// 消息持久化        
		message.getMessageProperties().setDeliveryMode(MessageDeliveryMode.PERSISTENT);
        message.getMessageProperties().setContentType(MessageProperties.CONTENT_TYPE_JSON);
        return message;
    }

    public static <T> T msgToObj(Message message, Class<T> clazz) {
        if (null == message || null == clazz) {
            return null;
        }
        String str = new String(message.getBody());
        T obj = JSONUtil.toBean(str, clazz);

        return obj;
    }
}
