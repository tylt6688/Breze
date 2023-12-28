package com.breze.entity.vo.sys;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "ConfigVO对象", description = "系统参数配置表")
@Data
public class ConfigVO extends BaseVO {

    private static final long serialVersionUID = -6351879854856005546L;

    @ApiModelProperty("主键ID")
    private Integer id;

    @ApiModelProperty("配置项中文名")
    private String name;

    @ApiModelProperty("配置项键")
    private String key;

    @ApiModelProperty("配置项值")
    private String value;

    @ApiModelProperty("状态（开关）")
    private Integer state;

    @ApiModelProperty("创建人")
    private String createBy;

    @ApiModelProperty("创建时间")
    private LocalDateTime createTime;

    @ApiModelProperty("更新时间")
    private LocalDateTime updateTime;

    @ApiModelProperty("备注")
    private String remark;
}
