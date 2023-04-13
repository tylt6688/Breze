package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:07
 * @Description 岗位对象
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_job")
public class Job extends BaseEntity {

    private static final long serialVersionUID = -3858488919858333072L;

    private String name;

    private Integer state;

    private String remark;


}
