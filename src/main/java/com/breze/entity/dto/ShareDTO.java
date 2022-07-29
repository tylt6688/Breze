package com.breze.entity.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ShareDTO {
    private Long id;

    private String filename;

    private String fileurl;

    private LocalDateTime created;

    private Integer status;

    private String truename;
}
