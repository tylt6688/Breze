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
@TableName("sys_user_role")
@ApiModel(value = "用户角色对象", description = "")
public class UserRole implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "用户角色ID", name = "id", example = "1", notes = "用户角色ID")
    private Long id;

    @ApiModelProperty(value = "用户ID", name = "userId", example = "1", notes = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "角色ID", name = "roleId", example = "1", notes = "角色ID")
    private Long roleId;

}
