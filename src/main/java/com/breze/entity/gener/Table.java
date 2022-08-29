package com.breze.entity.gener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:06
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Table implements Serializable {

    private static final long serialVersionUID = 4844981954357208726L;

    /** 表名称 */
    private String tableName;

    /** 创建日期 */
    private LocalDateTime createTime;

    /** 数据库引擎 */
    private String engine;

    /** 编码集 */
    private String coding;

    /** 备注 */
    private String remark;
}