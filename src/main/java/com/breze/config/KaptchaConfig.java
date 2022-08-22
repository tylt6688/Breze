package com.breze.config;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 谷歌验证码插件配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Configuration
public class KaptchaConfig {
    @Bean
    public DefaultKaptcha producer() {
        Properties properties = new Properties();
        //图片边框，合法值 yes，no，默认值yes
        properties.put("kaptcha.border", "no");
        //文字间隔，默认值为 2
        properties.put("kaptcha.textproducer.char.space", "4");
        //干扰线颜色，合法值： r,g,b 或者 white,black,blue，默认值 black
        properties.put("kaptcha.noise.color", "black");
        //去除干扰线
        properties.put("kaptcha.noise.impl", "com.google.code.kaptcha.impl.NoNoise");
        //图片宽度，默认值 200
        properties.put("kaptcha.image.width", "120");
        //图片高度，默认值 50
        properties.put("kaptcha.image.height", "40");
        //字体大小，默认值为 40px
        properties.put("kaptcha.textproducer.font.size", "30");
        //字体颜色，合法值： r,g,b 或者 white,black,blue，默认值 black
        properties.put("kaptcha.textproducer.font.color", "black");

        Config config = new Config(properties);
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        defaultKaptcha.setConfig(config);

        return defaultKaptcha;
    }
}