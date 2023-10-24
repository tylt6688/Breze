package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 部门对象
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_group")
public class Group extends BaseEntity {

    private static final long serialVersionUID = 4904930249407221901L;

    /**
     * 部门父id
     */
    private Long parentId;

    /**
     * 部门名称
     */
    private String name;

    /**
     * 部门状态
     */
    private Integer state;

    /**
     * 部门备注
     */
    private String remark;

    @TableField(exist = false)
    private String job;

    @TableField(exist = false)
    private List<Group> children = new ArrayList<>();

}
