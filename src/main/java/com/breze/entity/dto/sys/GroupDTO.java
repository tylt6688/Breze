package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author LGX
 * @Date 2023/3/26 16:34
 * @Description update by tylt6688
 * @Copyright(c) 2023, 清枫网络工作室
 */
@ApiModel(description = "团队数据传输对象")
@Data
public class GroupDTO implements Serializable {

    private static final long serialVersionUID = -5214999581419103935L;

    private Long id;

    private Long parentId;

    private String name;

    private Integer state;

    private String remark;

    private String job;
}
