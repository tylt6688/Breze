package com.breze.mapper.rbac;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.bo.sys.UserGroupJobBO;
import com.breze.entity.pojo.rbac.UserGroupJob;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/9/25 9:22
 * @Description 用户岗位关联表
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface UserGroupJobMapper extends BaseMapper<UserGroupJob> {

    List<UserGroupJobBO> listUserGroupJobBOs(Long userId);

}
