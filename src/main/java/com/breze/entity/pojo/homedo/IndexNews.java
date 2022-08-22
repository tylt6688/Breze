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
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-16
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@TableName("tb_index_news")
@ApiModel(value = "IndexNews对象", description = "")
public class IndexNews implements Serializable {


    private static final long serialVersionUID = 8034689616413072258L;
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String title;

    private String content;

    private LocalDateTime created;


}
