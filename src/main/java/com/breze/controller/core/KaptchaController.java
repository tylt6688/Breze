package com.breze.controller.core;

import cn.hutool.core.codec.Base64Encoder;
import cn.hutool.core.map.MapUtil;
import com.breze.common.constant.Const;
import com.google.code.kaptcha.Producer;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;

/*
 * @Author tylt
 * @Description //TODO 验证码
 * @Date 2022/3/4 10:46
 **/
@Log4j2
@RestController
public class KaptchaController extends BaseController {
    @Autowired
    private Producer producer;

    /**
     * 获取图片验证码
     */
    @GetMapping("/kaptcha")
    public Result kaptcha(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String key = UUID.randomUUID().toString();
        String code = producer.createText();

//      测试暂时停止随机验证码
//        key = "tylt";
//        code = "12345";

        BufferedImage image = producer.createImage(code);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ImageIO.write(image, "jpg", outputStream);

        String prefix = "data:image/jpeg;base64,";
        String base64Img = prefix + Base64Encoder.encode(outputStream.toByteArray());

        outputStream.flush();
        outputStream.close();

        // 将生成的验证码存储到redis中
        redisUtil.hashSet(Const.KAPTCHA_KEY, key, code, 120);

//        log.info("当前验证码：|--key:{} |--code: {}", key, code);

        return Result.createSuccessMessage(MapUtil.builder()
                .put("key", key)
                .put("base64Img", base64Img)
                .build());
    }
}
