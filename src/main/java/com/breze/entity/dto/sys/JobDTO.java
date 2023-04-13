package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author LGX
 * @Date 2023/3/26 15:57
 * @Description update by tylt6688
 * @Copyright(c) 2023, 清枫网络工作室
 */
@ApiModel(description = "岗位数据传输对象")
@Data
public class JobDTO implements Serializable {

    private static final long serialVersionUID = 7372711195905397509L;

    private Long id;

    private String name;

    private Integer state;

    private String remark;
}

