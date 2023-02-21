package com.breze.entity.pojo.portal;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * <p>
 * Banner表
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("tb_banner")
@ApiModel(value = "Banner", description = "轮播图对象,tb_banner表")
public class Banner extends BaseEntity {

    private static final long serialVersionUID = -725723282782099951L;
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String url;

    private String alt;

    private Integer orderNum;


}
