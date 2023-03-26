package com.breze.entity.dto.sys;

import lombok.Data;

import java.io.Serializable;

/**
 * @Author LGX
 * @Date 2023/3/26 15:57
 * @Description:
 * @Copyright(c) 2023, 清枫网络工作室
 */
@Data
public class JobDTO implements Serializable {

    private static final long serialVersionUID = 7372711195905397509L;

    private Long id;

    private String name;

    private Integer state;

    private String remark;
}

