package com.breze.entity.pojo.develop;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
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
@ToString
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
     * 作者署名
     */
    @NotBlank(message = "作者署名不能为空")
    @Size(min = 0, max = 30, message = "作者署名不能超过30个字符")
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

    /**
     * 是否生成到本地磁盘还是项目开发目录
     */
    private Boolean isLocal;
}
