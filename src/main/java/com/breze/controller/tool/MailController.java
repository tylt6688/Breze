package com.breze.controller.tool;

import com.breze.common.rabbit.Produce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import com.breze.common.result.Result;
import com.breze.config.MailConfig;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.tool.Email;
import com.breze.entity.pojo.rbac.User;


@RestController
@RequestMapping("/mail")
public class MailController extends BaseController {


    // 注入TemplateEngine
    @Autowired
    TemplateEngine templateEngine;
    @Autowired
    MailConfig mailConfig;
    @Autowired
    Produce produce;

    @PostMapping("/sendemail")
    public Result commonEmail() {

        String username = (String) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.getByUserName(username);

        // 注意导入的包是org.thymeleaf.context
        Context context = new Context();
        context.setVariable("username", user.getUsername());
        context.setVariable("updated", user.getUpdated());
        context.setVariable("link", "https://blog.csdn.net/tylt6688");
        context.setVariable("image", "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png");

        String content = templateEngine.process("mail.html", context);

        Email email = new Email();
        email.setMailFrom(mailConfig.getUsername());
        email.setMailFromNick("天宇龙腾");
        email.setMailTo(user.getEmail());
        email.setSubject("登录提醒邮件");

//        email.setContent("我要提醒您一下，嘘，看看您后面");

        email.setContent(content);

//        mailService.sendHtmlMailThymeLeaf(email);
      produce.sendMailByMQ(email);

        return Result.createSuccessMessage("邮件发送成功");
    }
}
