package com.breze.config;

import com.alibaba.fastjson.support.spring.FastJsonRedisSerializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

/*
 * @Author tylt
 * @Description //TODO Redis配置类
 * @Date 2022/2/5 11:57
 **/
@Configuration
public class RedisConfig {

	@Bean
 	public RedisTemplate<Object, Object> redisTemplate(RedisConnectionFactory redisConnectionFactory) {

		RedisTemplate<Object, Object> redisTemplate = new RedisTemplate<>();
		redisTemplate.setConnectionFactory(redisConnectionFactory);

		FastJsonRedisSerializer serializer = new FastJsonRedisSerializer(Object.class);

		redisTemplate.setKeySerializer(new StringRedisSerializer());
		redisTemplate.setValueSerializer(serializer);

		redisTemplate.setHashKeySerializer(new StringRedisSerializer());
		redisTemplate.setHashValueSerializer(serializer);

		redisTemplate.afterPropertiesSet();

		return redisTemplate;

	}

}
