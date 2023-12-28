package com.breze.entity.vo.app;

import com.breze.entity.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "AppConfigVO对象", description = "APP参数配置表")
@Data
public class AppConfigVO extends BaseVO {

    private static final long serialVersionUID = 8765939750370592237L;
    @ApiModelProperty("软件名称")
    private String appName;

    @ApiModelProperty("软件版本号")
    private String appVersion;

    @ApiModelProperty("备注")
    private String remark;
}
