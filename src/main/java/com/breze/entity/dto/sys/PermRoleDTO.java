package com.breze.entity.dto.sys;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @Author tylt6688
 * @Date 2023/4/6 14:54
 * @Description 分配角色 DTO
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@ApiModel(description = "分配角色数据传输对象")
@Data
public class PermRoleDTO {

   private Long[] userIds;

   private Long[] roleIds;
}
