package com.breze.controller.core;

import cn.hutool.core.codec.Base64Encoder;
import cn.hutool.core.map.MapUtil;
import com.breze.common.consts.CacheConstant;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.result.Result;
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
 * @Description 验证码
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@RestController
public class KaptchaController extends BaseController {


    /**
     * 获取图片验证码
     */
    @GetMapping("/kaptcha")
    public Result kaptcha() throws IOException {

        String key = UUID.randomUUID().toString();
        String code = producer.createText();

        // FIXME 开发环境暂时停止随机验证码
        key = "tylt";
        code = "12345";

        BufferedImage image = producer.createImage(code);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ImageIO.write(image, CharsetConstant.JPG, outputStream);

        String prefix = CharsetConstant.Base_64;
        String base64Img = prefix + Base64Encoder.encode(outputStream.toByteArray());
        outputStream.flush();
        outputStream.close();

        // 将生成的验证码存储到redis中
        redisUtil.hashSet(CacheConstant.KAPTCHA_KEY, key, code, 120);

        Map<Object, Object> map = MapUtil.builder()
                .put("key", key)
                .put("base64Img", base64Img)
                .build();
        log.info("当前验证码：|--key:{} |--code: {}", key, code);
        return Result.createSuccessMessage("",map);
    }
}
