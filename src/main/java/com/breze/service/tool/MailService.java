package com.breze.service.tool;

import com.breze.entity.pojo.tool.Email;
/*
 * @Author tylt
 * @Description //TODO 邮件服务类
 * @Date 2022/4/1 17:56
 **/

public interface MailService {

    Boolean sendSimpleMail(Email email);

    Boolean sendMailWithAttachments(Email email);

    Boolean sendMailWithImage(Email email);

    Boolean sendHtmlMailThymeLeaf(Email email);


}