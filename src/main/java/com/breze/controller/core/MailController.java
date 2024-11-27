package com.breze.controller.core;

import com.breze.common.rabbit.Produce;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import com.breze.common.result.Result;
import com.breze.config.MailConfig;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.core.Email;
import com.breze.entity.pojo.rbac.User;



/**
 * @author tylt6688
 * @Date 2022-03-01 14:17
 * @Description 邮件发送前端控制器
 * @Copyright(c) 2022, 青枫网络工作室
 */

@Api(tags = "邮件管理")
@RestController
@RequestMapping("/mail")
public class MailController extends BaseController {

    @Autowired
    MailConfig mailConfig;

    // 注入 TemplateEngine
    @Autowired
    TemplateEngine templateEngine;

    @Autowired
    Produce produce;

    @PostMapping("/sendmail")
    public Result<String> commonEmail() {

        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.getUserByUserName(username);

        // 注意导入的包是 org.thymeleaf.context
        Context context = new Context();
        context.setVariable("username", user.getUsername());
        context.setVariable("updated", user.getUpdateTime());
        context.setVariable("link", "https://blog.csdn.net/tylt6688");
        context.setVariable("image", "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png");

        String content = templateEngine.process("email.html", context);

        Email email = new Email();
        email.setMailFrom(mailConfig.getUsername());
        email.setMailFromNick(brezeConfig.getProjectName());
        email.setMailTo(user.getEmail());
        email.setSubject("登录提醒邮件");
        email.setContent(content);

        produce.sendMailByMQ(email);
        return Result.createSuccessMessage("邮件发送成功");
    }
}
