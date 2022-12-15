package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;
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
public class Group implements Serializable {

    private static final long serialVersionUID = 4904930249407221901L;
    @ApiModelProperty(value = "部门ID", name = "groupId", example = "1", notes = "部门ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long parentId;

    private String name;

    private Integer state;

    private String remark;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @TableField(exist = false)
    private String job;

    @TableField(exist = false)
    private List<Group> children = new ArrayList<>();




}
