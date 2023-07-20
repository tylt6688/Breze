package com.breze.entity.vo.sys;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/12/16 14:36
 * @Description 角色信息 VO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "角色展示对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleVO extends BaseVO {

    private static final long serialVersionUID = 7099645733115709911L;

    @ApiModelProperty(value = "角色ID", name = "id", example = "1", notes = "角色ID")
    private Long id;

    @ApiModelProperty(value = "角色名称", name = "name", example = "admin", notes = "角色名称")
    private String name;

    @ApiModelProperty(value = "权限码", name = "code", example = "user:list,user:create", notes = "权限码,多个用逗号分隔，如：user:list,user:create)")
    private String code;

    @ApiModelProperty(value = "备注", name = "remark", example = "超级管理员", notes = "备注")
    private String remark;

    @ApiModelProperty(value = "状态", name = "state", example = "1", notes = "0:禁用 1:启用")
    private Integer state;

    @ApiModelProperty(value = "菜单列表", name = "ID", example = "['Login', 'Register']", notes = "菜单列表")
    private List<Long> menuIds = new ArrayList<>();
}
