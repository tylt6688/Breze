package com.breze.entity.pojo.tool;

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

    /**
     * 代码生成数据库连接地址
     */
    private String url;

    /**
     * 数据库连接用户名
     */
    private String username;

    /**
     * 数据库连接密码
     */
    private String password;

    /**
     * 数据库名称
     */
    private String dataBaseName;

    /**
     * 作者
     */
    private String author;

    /**
     * 生成代码的表名
     */
    private String[] tableNames;

    /**
     * 生成代码的表前缀
     */
    private String[] tablePrefix;

    /**
     * 生成代码的包名
     */
    private String packageName;

    /**
     * 代码生成的输出目录
     */
    private String outputDir;
}
