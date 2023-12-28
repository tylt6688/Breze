package com.breze.entity.pojo.app;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * <p>
 *
 * </p>
 *
 * @author tylt6688
 * @since 2023/12/12 14:08
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("app_config")
@ApiModel(value = "AppConfig对象", description = "AppConfig对象，app_config表")
public class AppConfig extends BaseEntity {

    private static final long serialVersionUID = -7452156873640234107L;

    /**
     * App名称
     */
    private String appName;

    /**
     * App版本号，用于版本同步更新
     */
    private String appVersion;

    /**
     * 备注信息
     */
    private String remark;

}
