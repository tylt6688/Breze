package com.breze.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class ShareDTO implements Serializable {

    private static final long serialVersionUID = 488774199890378202L;

    private Long id;

    private String filename;

    private String fileurl;

    private LocalDateTime created;

    private Integer status;

    private String truename;
}
