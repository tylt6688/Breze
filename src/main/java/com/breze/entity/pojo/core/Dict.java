package com.breze.entity.pojo.core;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author chenweixi
 * @create 2023-04-20 15:12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@TableName("sys_dict")
@ApiModel(value = "字典表", description = "字典表")
public class Dict extends BaseEntity {

    private static final long serialVersionUID = 4253412733633893263L;

    /**
     * 字典名称
     */
    private String name;

    /**
     * 字典类型
     */
    private String type;

    /**
     * 字典状态
     */
    private Integer state;

    /**
     * 字典描述
     */
    private String remark;

}
