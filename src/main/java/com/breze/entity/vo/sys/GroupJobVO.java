package com.breze.entity.vo.sys;

import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 登录信息VO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@ApiModel(description = "团队岗位展示对象")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class GroupJobVO {

    private String groupName;

    private String jobName;
}
