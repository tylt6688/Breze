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

import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 角色对象
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_role")
@ApiModel(value = "Role", description = "角色对象,sys_role角色表")
public class Role extends BaseEntity {

    private static final long serialVersionUID = 1902943373792332975L;

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

    @ApiModelProperty(value = "状态", name = "state", example = "1", notes = "0:禁用 1:启用")
    private Integer state;

    @TableField(exist = false)
    private List<Long> menuIds = new ArrayList<>();

}
