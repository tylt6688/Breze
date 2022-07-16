package com.breze.entity.pojo.tool;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-19
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("tb_ossfile")
@ApiModel(value = "Ossfile对象", description = "")

public class Ossfile implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String filename;

    private String fileurl;

    private LocalDateTime created;

    private Long userId;

    private Integer status;

    private String type;

    @TableField(exist = false)
    private String truename;


}
