package com.breze.entity.pojo.tool;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.File;
import java.io.Serializable;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/8/24 10:06
 * @Description 邮件实体类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class Email implements Serializable {

    private static final long serialVersionUID = 4904930249407221901L;

    /**
     * 消息id用于mq消息落盘唯一标识
     */
    private String msgId;

    /**
     * 发件人邮箱
     */
    private String mailFrom;

    /**
     * 发件人昵称
     */
    private String mailFromNick;
    /**
     * 收件人邮箱
     */
    private String mailTo;

    /**
     * 抄送人邮箱(可为空，方法内部处理)
     */
    private String cc;

    /**
     * 主题
     */
    private String subject;
    /**
     * 内容
     */
    private String content;

    /**
     * 图片路径
     */
    private String[] imagePaths;

    /**
     * 图片id
     */
    private String[] imageId;

    /**
     * 附件
     */
    private List<File> files;
}
