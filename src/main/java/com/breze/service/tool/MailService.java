package com.breze.service.tool;

import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.tool.Email;
/**
 * <p>
 * 邮件服务类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */

public interface MailService {

    Boolean sendSimpleMail(Email email);

    Boolean sendMailWithAttachments(Email email);

    Boolean sendMailWithImage(Email email);

    Boolean sendHtmlMailThymeLeaf(Email email);

    Boolean sendRemindEmail(User user);


}