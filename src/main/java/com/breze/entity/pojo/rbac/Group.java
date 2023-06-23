package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 部门对象
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_group")
@ApiModel(value = "部门表", description="部门表")
public class Group extends BaseEntity {

    private static final long serialVersionUID = 4904930249407221901L;

    @ApiModelProperty(value = "部门根ID", name = "Parent ID", example = "1", notes = "部门根ID")
    private Long parentId;

    @ApiModelProperty(value = "部门名称", name = "Name", example = "技术部", notes = "部门名称")
    private String name;

    @ApiModelProperty(value = "部门状态", name = "State", example = "0", notes = "部门状态")
    private Integer state;

    @ApiModelProperty(value = "部门备注", name = "Remark", example = "xxx", notes = "部门备注")
    private String remark;

    @ApiModelProperty(value = "岗位名称", name = "Job", example = "实习生", notes = "岗位")
    @TableField(exist = false)
    private String job;

    @ApiModelProperty(value = "", name = "", example = "", notes = "")
    @TableField(exist = false)
    private List<Group> children = new ArrayList<>();

}
