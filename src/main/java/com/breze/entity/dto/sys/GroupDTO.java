package com.breze.entity.dto.sys;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author LGX
 * @Date 2023/3/26 16:34
 * @Description:
 * @Copyright(c) 2023, 清枫网络工作室
 */
@Data
public class GroupDTO implements Serializable {

    private static final long serialVersionUID = -5214999581419103935L;

    private Long parentId;

    private String name;

    private Integer state;

    private String remark;

    private String job;
}
