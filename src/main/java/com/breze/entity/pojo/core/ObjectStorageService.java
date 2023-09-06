package com.breze.entity.pojo.core;

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
 * 对象存储表
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("tb_oss")
@ApiModel(value = "OSS", description = "OSS,tb_oss对象存储表")
public class ObjectStorageService extends BaseEntity {

    private static final long serialVersionUID = 4904930249407221901L;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 文件名
     */
    private String fileName;

    /**
     * 文件地址
     */
    private String fileUrl;

    /**
     * 文件类型
     */
    private String type;

    /**
     * 文件状态
     */
    private Integer state;

}
