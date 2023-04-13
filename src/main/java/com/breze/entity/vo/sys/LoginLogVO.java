package com.breze.entity.vo.sys;

import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

/**
 * @Author chenweixi
 * @Date 2022-12-26 13:42
 * @Description 登录日志信息VO
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@ApiModel(description = "登录日志展示对象")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class LoginLogVO{

    private Long loginCount;

    private String roleName;

    private LocalDateTime createTime;
}