package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("sys_role")
@ApiModel(value = "角色对象", description = "")
public class Role implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "角色ID", name = "id", example = "1", notes = "角色ID")
    private Long id;

    @NotBlank(message = "角色身份不能为空")
    @ApiModelProperty(value = "角色名称", name = "name", example = "admin", notes = "角色名称")
    private String name;

    @NotBlank(message = "权限码不能为空")
    @ApiModelProperty(value = "权限码", name = "code", example = "user:list,user:create", notes = "权限码,多个用逗号分隔，如：user:list,user:create)")
    private String code;

    @ApiModelProperty(value = "备注", name = "remark", example = "超级管理员", notes = "备注")
    private String remark;

    @ApiModelProperty(value = "创建时间", name = "created", example = "2020-03-01 12:00:00", notes = "创建时间")
    private LocalDateTime created;

    @ApiModelProperty(value = "更新时间", name = "updated", example = "2020-03-01 12:00:00", notes = "更新时间")
    private LocalDateTime updated;

    @ApiModelProperty(value = "状态", name = "statu", example = "1", notes = "0:禁用 1:启用")
    private Integer statu;

    @TableField(exist = false)
    private List<Long> menuIds = new ArrayList<>();

}
