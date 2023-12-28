package com.breze.entity.dto.app;

import com.breze.entity.dto.BaseDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "AppConfigDTO对象")
@Data
public class AppConfigDTO extends BaseDTO {

    private static final long serialVersionUID = 8765939750370592237L;
    @ApiModelProperty("软件名称")
    private String appName;

    @ApiModelProperty("软件版本号")
    private String appVersion;

    @ApiModelProperty("备注")
    private String remark;
}
