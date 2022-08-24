package com.breze.entity.gener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:06
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Table {

    /** 表名称 */
    private Object tableName;

    /** 创建日期 */
    private Object createTime;

    /** 数据库引擎 */
    private Object engine;

    /** 编码集 */
    private Object coding;

    /** 备注 */
    private Object remark;
}