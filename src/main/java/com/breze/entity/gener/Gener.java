package com.breze.entity.gener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * <p>
 * 代码生成实体类
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-15
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Gener {
    private String[] tableNames;
    private String[] tablePrefix;
    private String packageName;
    private String author;
    private String outputDir;
}
