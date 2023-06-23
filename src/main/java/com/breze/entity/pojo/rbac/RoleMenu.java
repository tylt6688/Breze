package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_role_menu")
@ApiModel(value = "角色菜单表", description="角色菜单表")
public class RoleMenu implements Serializable {

    private static final long serialVersionUID = 342723982250723899L;

    @ApiModelProperty(value = "ID", name = "ID", example = "1", notes = "ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "角色ID", name = "Role ID", example = "1", notes = "用户名称")
    private Long roleId;

    @ApiModelProperty(value = "菜单ID", name = "Menu ID", example = "1", notes = "用户名称")
    private Long menuId;

}
