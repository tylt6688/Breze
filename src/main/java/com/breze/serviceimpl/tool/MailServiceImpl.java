package com.breze.serviceimpl.tool;

import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.StringUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import com.breze.entity.pojo.tool.Email;
import com.breze.service.tool.MailService;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.File;

@Log4j2
@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    /**
     * JavaMailSender是Spring Boot在MailSenderPropertiesConfiguration 类中配直好的，该类在 Mail
     * 自动配置类 MailSenderAutoConfiguration 中导入 因此这里注入 JavaMailSender 就可以使用了
     */
    @Autowired
    private JavaMailSender mailSender;


    /**
     * 1、发送普通文本邮件
     *
     * @return
     */
    @Override
    public Boolean sendSimpleMail(Email email) {
        try {
            // 多个收件人之间用英文逗号分隔
            String[] mailToArr = email.getMailTo().split(",");
            for (String address : mailToArr) {
                // 简单邮件信息类
                MimeMessage mimeMessage = mailSender.createMimeMessage();
                // HTML邮件信息类
                // 一定要设置utf-8编码，否则邮件会有乱码
                MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
                // 昵称
                mimeMessageHelper.setFrom(new InternetAddress(email.getMailFromNick() + " <" + email.getMailFrom() + ">"));
                mimeMessageHelper.setTo(address);
                if (!StringUtils.isEmpty(email.getCc())) {
                    mimeMessageHelper.setCc(email.getCc());
                }
                mimeMessageHelper.setSubject(email.getSubject());
                mimeMessageHelper.setText(email.getContent());
                mailSender.send(mimeMessage);
            }
        } catch (Exception e) {
            log.error("发送邮件失败：", e);
        }
        return true;
    }

    /**
     * 2、发送带附件的邮件
     *
     * @return
     */
    @Override
    public Boolean sendMailWithAttachments(Email email) {

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            /*
            第二个参数true表示构造一个multipart message类型的邮件，multipart message类型的邮件包含多个正文、附件以及内嵌资源，
            邮件的表现形式更丰富
             */
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            mimeMessageHelper.setFrom(new InternetAddress(email.getMailFromNick() + " <" + email.getMailFrom() + ">"));
            mimeMessageHelper.setSubject(email.getSubject());
            mimeMessageHelper.setText(email.getContent());

            // 设置多个收件人
            String[] toAddress = email.getMailTo().split(",");
            mimeMessageHelper.setTo(toAddress);
            if (!StringUtils.isEmpty(email.getCc())) {
                mimeMessageHelper.setCc(email.getCc());
            }
            // 添加附件
            if (null != email.getFiles()) {
                for (File file : email.getFiles()) {
                    // 通过addAttachment方法添加附件
                    mimeMessageHelper.addAttachment(file.getName(), file);
                }
            }
        } catch (MessagingException e) {
            e.printStackTrace();
            log.error("发送邮件失败：", e);
        }
        //发送邮件
        mailSender.send(mimeMessage);

        return true;
    }

    /**
     * 3、正文内容带图片
     *
     * @return
     */
    @Override
    public Boolean sendMailWithImage(Email email) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            mimeMessageHelper.setFrom(new InternetAddress(email.getMailFromNick() + " <" + email.getMailFrom() + ">"));
            // 设置多个收件人
            String[] toAddress = email.getMailTo().split(",");
            mimeMessageHelper.setTo(toAddress);
            if (!StringUtils.isEmpty(email.getCc())) {
                mimeMessageHelper.setCc(email.getCc());
            }
            mimeMessageHelper.setSubject(email.getSubject());
            // 第二个参数为true表示邮件正文是html格式的，默认是false
            mimeMessageHelper.setText(email.getContent(), true);

            // 添加图片
            String[] imagePaths = email.getImagePaths();
            String[] imageId = email.getImageId();
            if (imagePaths != null && imagePaths.length != 0) {
                for (int i = 0; i < email.getImagePaths().length; i++) {
                    // 通过FileSystemResource构造静态资源

                    FileSystemResource fileSystemResource = new FileSystemResource(imagePaths[i]);
                    // 调用addInline方法将资源加入邮件对象中
                    mimeMessageHelper.addInline(imageId[i], fileSystemResource);
                }
            }

            mailSender.send(mimeMessage);

        } catch (MessagingException e) {
            log.error("发送邮件失败：", e);
        }
        return true;
    }


    /**
     * 4、使用Themeleaf构建邮件模板。需额外加spring-boot-starter-thymeleaf依赖
     */
    @Override
    public Boolean sendHtmlMailThymeLeaf(Email email) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            mimeMessageHelper.setFrom(new InternetAddress(email.getMailFromNick() + " <" + email.getMailFrom() + ">"));
            // 设置多个收件人
            String[] toAddress = email.getMailTo().split(",");
            mimeMessageHelper.setTo(toAddress);
            if (!StringUtils.isEmpty(email.getCc())) {
                mimeMessageHelper.setCc(email.getCc());
            }
            mimeMessageHelper.setSubject(email.getSubject());
            // 第二个参数为true表示邮件正文是html格式的，默认是false
            mimeMessageHelper.setText(email.getContent(), true);

            mailSender.send(mimeMessage);

        } catch (MessagingException e) {
            log.error("发送邮件失败：", e);
        }
        return true;
    }
}