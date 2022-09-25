package com.breze.mapper.rbac;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.pojo.rbac.UserGroup;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Author tylt6688
 * @Date 2022/9/25 9:22
 * @Description 用户部门关联表
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface UserGroupMapper extends BaseMapper<UserGroup> {

}
