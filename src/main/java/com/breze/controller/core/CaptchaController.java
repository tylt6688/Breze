package com.breze.controller.core;

import cn.hutool.core.codec.Base64Encoder;
import cn.hutool.core.map.MapUtil;
import com.breze.common.consts.CacheConstant;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.DevelopConstant;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/**
 * @Author tylt6688
 * @Date 2022/3/4 10:46
 * @Description 验证码控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@RestController
public class CaptchaController extends BaseController {
    /**
     * 获取登录图片验证码
     */
    @GetMapping("/captcha")
    public Result<Map<Object, Object>> captcha() throws IOException {

        String key = UUID.randomUUID().toString();
        String code = producer.createText();
        long time = 60L;

        // 开发环境下可暂时停止随机验证码
        if (Boolean.TRUE.equals(brezeConfig.getCaptchaDevEnabled())) {
            key = DevelopConstant.CAPTCHA_KEY;
            code = DevelopConstant.CAPTCHA_VALUE;
        }

        log.info("当前登录验证码：|-key:---{} |-code:---{}", key, code);

        BufferedImage image = producer.createImage(code);
        @Cleanup ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ImageIO.write(image, CharsetConstant.PNG, outputStream);

        String base64Img = CharsetConstant.BASE_64 + Base64Encoder.encode(outputStream.toByteArray());

        // 将生成的验证码存储到 Redis中，验证码有效期为 2分钟
        redisUtil.hashSet(CacheConstant.CAPTCHA_KEY, key, code, time);

        Map<Object, Object> map = MapUtil.builder()
                .put("key", key)
                .put("base64Img", base64Img)
                .build();

        return Result.createSuccessMessage("获取登录图片验证码成功", map);
    }
}
