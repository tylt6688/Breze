package com.breze.entity.bo.sys;

import lombok.Data;
/**
 * @Author tylt6688
 * @Date 2023/4/13 14:35
 * @Description 用户团队岗位业务传输对象
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Data
public class UserGroupJobBO {

    private Long userId;


    private Long groupId;


    private Long jobId;
}
