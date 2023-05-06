package com.breze.entity.pojo.rbac;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 菜单对象
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@TableName("sys_menu")
public class Menu extends BaseEntity {

    private static final long serialVersionUID = 51460849181143467L;

    private Long parentId;

    private String title;

    private String name;

    private String icon;

    private String path;

    private String perms;

    private String component;

    private Integer type;

    private Integer sort;

    private Integer state;

    @TableField(exist = false)
    private List<Menu> children = new ArrayList<>();

    @TableField(exist = false)
    private String parentTitle;

}
