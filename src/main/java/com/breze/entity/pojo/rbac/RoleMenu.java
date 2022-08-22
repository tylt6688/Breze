package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;

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
@Accessors(chain = true)
@TableName("sys_role_menu")
@ApiModel(value = "角色菜单对象", description = "")
public class RoleMenu implements Serializable {

    private static final long serialVersionUID = 342723982250723899L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "角色菜单ID", name = "id", example = "1", notes = "角色菜单ID")
    private Long id;

    @ApiModelProperty(value = "角色ID", name = "roleId", example = "1", notes = "角色ID")
    private Long roleId;

    @ApiModelProperty(value = "菜单ID", name = "menuId", example = "1", notes = "菜单ID")
    private Long menuId;

}
