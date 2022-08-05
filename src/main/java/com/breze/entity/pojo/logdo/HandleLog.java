package com.breze.entity.pojo.logdo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Name: Log.java
 * @Package: xyz.tylt.entity.pojo.rbac
 * @Author LUCIFER-LGX
 * @Date 2022/7/11 8:54
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("log_handle")
@ApiModel(value = "日志对象", description = "")
public class HandleLog implements Serializable {

    private static final long serialVersionUID = 506856700098163790L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "ID", name = "id", example = "1")
    private Integer id;

    @ApiModelProperty(value = "日志名称", name = "title", example = "新增日志")
    private String title;

    @ApiModelProperty(value = "操作类型", name = "type", example = "新增")
    private String type;

    @ApiModelProperty(value = "请求IP", name = "ip", example = "127.0.0.1")
    private String requestIp;

    @ApiModelProperty(value = "请求路径", name = "url", example = "/sys/user")
    private String requestPath;

    @ApiModelProperty(value = "请求方式", name = "method", example = "POST")
    private String method;

    @ApiModelProperty(value = "用户代理", name = "ua", example = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36")
    private String browser;

    @ApiModelProperty(value = "请求参数", name = "params", example = "{\"name\":\"admin\",\"password\":\"123456\"}")
    private String params;

    @ApiModelProperty(value = "请求时间", name = "createTime", example = "2022-07-11 08:54:00")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "请求异常", name = "exception", example = "IOException")
    private String exception;

    @ApiModelProperty(value = "请求用时", name = "time", example = "7ms")
    private String time;

}
