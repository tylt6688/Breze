package com.breze.entity.pojo.tool;

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
public class OSS extends BaseEntity {

    private static final long serialVersionUID = 4904930249407221901L;
    
    private Long userId;

    private String fileName;

    private String fileUrl;

    private String type;

    private Integer state;

}
