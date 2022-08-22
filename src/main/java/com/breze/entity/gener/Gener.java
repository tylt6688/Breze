package com.breze.entity.gener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;

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
@Accessors(chain = true)
public class Gener implements Serializable {

    private static final long serialVersionUID = 4844981954357208726L;

    private String author;

    private String[] tableNames;

    private String[] tablePrefix;

    private String packageName;

    private String outputDir;
}
