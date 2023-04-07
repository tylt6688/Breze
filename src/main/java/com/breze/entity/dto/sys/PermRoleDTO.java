package com.breze.entity.dto.sys;

import lombok.Data;

/**
 * @Author tylt6688
 * @Date 2023/4/6 14:54
 * @Description 分配角色 DTO
 * @Copyright(c) 2023 , 青枫网络工作室
 */

@Data
public class PermRoleDTO {

   private Long[] userIds;

   private Long[] roleIds;
}
