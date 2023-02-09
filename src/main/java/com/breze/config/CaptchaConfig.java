package com.breze.config;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

import static com.google.code.kaptcha.Constants.*;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 谷歌验证码插件配置类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Configuration
public class CaptchaConfig {
    @Bean
    public DefaultKaptcha producer() {
        Properties properties = new Properties();
        //图片边框，合法值 yes，no，默认值yes
        properties.put(KAPTCHA_BORDER, "no");
        //文字间隔，默认值为 2
        properties.put(KAPTCHA_TEXTPRODUCER_CHAR_SPACE, "4");
        //干扰线颜色，合法值： r,g,b 或者 white,black,blue，默认值 black
        properties.put(KAPTCHA_NOISE_COLOR, "black");
        //去除干扰线
        properties.put(KAPTCHA_NOISE_IMPL, "com.google.code.kaptcha.impl.NoNoise");
        //图片宽度，默认值 200
        properties.put(KAPTCHA_IMAGE_WIDTH, "120");
        //图片高度，默认值 50
        properties.put(KAPTCHA_IMAGE_HEIGHT, "40");
        //字体大小，默认值为 40px
        properties.put(KAPTCHA_TEXTPRODUCER_FONT_SIZE, "30");
        //字体颜色，合法值： r,g,b 或者 white,black,blue，默认值 black
        properties.put(KAPTCHA_TEXTPRODUCER_FONT_COLOR, "black");

        Config config = new Config(properties);
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        defaultKaptcha.setConfig(config);

        return defaultKaptcha;
    }
}