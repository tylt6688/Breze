package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
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
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_group")
@ApiModel(value = "Group", description = "部门对象,sys_group部门表")
public class Group extends BaseEntity {

    private static final long serialVersionUID = 4904930249407221901L;
    @ApiModelProperty(value = "部门ID", name = "groupId", example = "1", notes = "部门ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long parentId;

    private String name;

    private Integer state;

    private String remark;

    @TableField(exist = false)
    private String job;

    @TableField(exist = false)
    private List<Group> children = new ArrayList<>();




}
