package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.time.LocalDateTime;
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
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_role")
@ApiModel(value = "Role角色对象", description = "角色表")
public class Role implements Serializable {


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

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-03-01 12:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-03-01 12:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @TableField(exist = false)
    private List<Long> menuIds = new ArrayList<>();

}
