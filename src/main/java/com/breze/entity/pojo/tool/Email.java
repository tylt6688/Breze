package com.breze.entity.pojo.tool;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.File;
import java.io.Serializable;
import java.util.List;
/*
 * @param msgId        消息id用于mq消息落盘唯一标识
 * @param mailFrom     发件人邮箱
 * @param mailFromNick 发件人昵称
 * @param mailTo       收件人邮箱
 * @param cc           抄送人邮箱(可为空，方法内部处理)
 * @param subject      主题
 * @param content      内容
 * @param files        附件
 * @param imagePaths   图片
 * @param imageId
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class Email implements Serializable {

    private static final long serialVersionUID = 4904930249407221901L;

    private String msgId;

    private String mailFrom;

    private String mailFromNick;

    private String mailTo;

    private String cc;

    private String subject;

    private String content;

    private String[] imagePaths;

    private String[] imageId;

    private List<File> files;
}
