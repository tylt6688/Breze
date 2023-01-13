package com.breze.entity.dto.sys;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/9/16 14:36
 * @Description 菜单信息DTO
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MenuDTO implements Serializable {

    private static final long serialVersionUID = 8275860509489827862L;

    private Long id;

    private String name;

    private String title;

    private String icon;

    private String path;

    private String component;

    private List<MenuDTO> children;

}
