package com.breze.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
public class MenuDTO implements Serializable {

    private Long id;

    private String name;

    private String title;

    private String icon;

    private String path;

    private String component;

    private List<MenuDTO> children = new ArrayList<>();

}
