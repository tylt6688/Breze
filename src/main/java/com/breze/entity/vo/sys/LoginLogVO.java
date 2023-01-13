package com.breze.entity.vo.sys;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

/**
 * @author chenweixi
 * @create 2022-12-26 13:42
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class LoginLogVO{

    private Long loginCount;

    private String roleName;

    private LocalDateTime createTime;
}