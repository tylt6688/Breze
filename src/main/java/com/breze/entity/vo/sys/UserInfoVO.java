package com.breze.entity.vo.sys;

import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.Role;
import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2023/2/21 16:30
 * @Description 用于前端展示用户信息VO实体类
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@ApiModel(description = "用户信息展示对象")
public class UserInfoVO extends BaseVO {

    private static final long serialVersionUID = 7890603648150338910L;

    @ApiModelProperty(value = "用户ID", name = "id", example = "1", notes = "用户ID")
    private Long id;

    @ApiModelProperty(value = "用户头像", name = "avatar", example = "https://www.baidu.com/img/bd_logo1.png", notes = "用户头像")
    private String avatar;

    @ApiModelProperty(value = "用户名", name = "username", example = "admin", notes = "用户名")
    private String username;

    @ApiModelProperty(value = "真实姓名", name = "trueName", example = "张三", notes = "真实姓名")
    private String trueName;

    @ApiModelProperty(value = "邮箱", name = "email", example = "13888888888@qq.com", notes = "邮箱")
    private String email;

    @ApiModelProperty(value = "手机号", name = "phone", example = "13888888888", notes = "手机号")
    private String phone;

    @ApiModelProperty(value = "状态", name = "state", example = "1", notes = "状态:1正常,0禁用")
    private Integer state;

    @ApiModelProperty(value = "籍贯", name = "city", example = "湖北武汉", notes = "籍贯")
    private String city;

    @ApiModelProperty(value = "最后一次登录时间", name = "loginTime", example = "2022-03-01 12:00:00", notes = "最近登录时间")
    private LocalDateTime loginTime;

    @ApiModelProperty(value = "登录提醒", name = "loginWarn", example = "1", notes = "登录提醒")
    private Integer loginWarn;

    @ApiModelProperty(value = "角色信息", name = "roles", example = "ROLE_admin", notes = "角色信息")
    private List<Role> roles;

    @ApiModelProperty(value = "团队岗位信息", name = "groupJob", example = "技术部-技术部经理", notes = "团队岗位信息")
    private List<Group> groupJob;


}
