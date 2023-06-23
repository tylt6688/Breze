package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

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
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_role")
@ApiModel(value = "角色表", description="角色表")
public class Role extends BaseEntity {

    private static final long serialVersionUID = 1902943373792332975L;

    @ApiModelProperty(value = "角色名称", name = "name", example = "Super Admin", notes = "角色名称")
    private String name;

    @ApiModelProperty(value = "Code", name = "Code", example = "1", notes = "Code")
    private String code;

    @ApiModelProperty(value = "备注", name = "Remark", example = "xxx", notes = "备注")
    private String remark;

    @ApiModelProperty(value = "状态", name = "State", example = "1", notes = "状态")
    private Integer state;

    @ApiModelProperty(value = "菜单列表", name = "ID", example = "['Login', 'Register']", notes = "菜单列表")
    @TableField(exist = false)
    private List<Long> menuIds = new ArrayList<>();

}
