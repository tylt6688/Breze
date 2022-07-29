package com.breze.entity.pojo.homedo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("tb_banner")
@ApiModel(value = "Banner对象", description = "")
public class Banner implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String url;

    private String alt;

    private Integer orderNum;


}
