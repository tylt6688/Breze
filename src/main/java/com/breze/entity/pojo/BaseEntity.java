package com.breze.entity.pojo;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Author tylt6688
 * @Date 2023/2/7 9:41
 * @Description 用于继承的实体基类
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@ApiModel(value = "实体基类", description = "用于继承的实体基类")
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键", name = "id", example = "1", notes = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "创建人", name = "createBy", example = "admin", notes = "创建人")
    private String createBy;

    @ApiModelProperty(value = "创建时间", name = "createTime", example = "2022-07-13 00:00:00", notes = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty(value = "更新人", name = "updateBy", example = "admin", notes = "更新人")
    private String updateBy;

    @ApiModelProperty(value = "更新时间", name = "updateTime", example = "2022-07-13 00:00:00", notes = "更新时间")
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "排序号", name = "sort", example = "1", notes = "排序号")
    @OrderBy
    private Integer sort;

    @ApiModelProperty(value = "逻辑删除", name = "deleted", example = "0", notes = "逻辑删除")
    @TableLogic
    private Integer deleted;

    @ApiModelProperty(value = "版本号", name = "version", example = "1", notes = "版本号")
    @Version
    private Integer version;
}
