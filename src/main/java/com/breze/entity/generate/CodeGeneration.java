package com.breze.entity.generate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class CodeGeneration implements Serializable {

    private static final long serialVersionUID = 4844981954357208726L;

    private String url;

    private String username;

    private String password;

    private String dataBaseName;

    private String author;

    private String[] tableNames;

    private String[] tablePrefix;

    private String packageName;

    private String outputDir;
}
