package com.breze.utils;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collections;

/**
 * @Author tylt6688
 * @Description MyBatis-Plus代码生成器
 */
public class MyBatisPlusCodeGenerator {

    public static void main(String[] args) {

        String authorName = "AuthorName";

        // 是否将文件下载到本地
        boolean isLocal = false;

        // 是否启用Swagger
        boolean enableSwagger = true;

        // 数据库名称
        String dataBaseName = "breze";

        // 数据库用户名
        String dataBaseUserName = "root";

        // 数据库密码
        String dataBaseUserPassword = "123456";

        // 生成的表名
        String[] tableName = {"tb_volunteer"};

        // 排除的表前缀
        String[] excludeTablePrefix = {"sys_", "tb_", "log_"};

        // 本地生成路径
        String localDrivePath = "D://CodeGeneratorTemplate//";

        String projectPath = System.getProperty("user.dir") + "//src//main//";

        String outPutDirPath = isLocal ? localDrivePath : projectPath;

        String mapperXmlPath = outPutDirPath + "resources//mapper";

        String packageName = MyBatisPlusCodeGenerator.class.getPackage().getName();

        FastAutoGenerator.create("jdbc:mysql://localhost:3306/" + dataBaseName + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8", dataBaseUserName, dataBaseUserPassword)
                // 全局配置
                .globalConfig(builder -> {
                    builder.author(authorName)// 设置作者
                            .outputDir(outPutDirPath + "java//"); // 指定输出目录
                    if (enableSwagger) {
                        builder.enableSwagger(); // 开启 Swagger
                    }

                })

                // 包策略配置
                .packageConfig(builder -> {
                    builder.parent(packageName)
                            .entity("domain")
                            .pathInfo(Collections.singletonMap(OutputFile.xml, mapperXmlPath)); // 设置mapperXml生成路径
                })

                // 实体策略配置
                .strategyConfig(builder -> {
                    builder.entityBuilder()
                            // 开启Lombok
                            .enableLombok()
                            .enableChainModel();
                })

                // 控制类策略配置
                .strategyConfig(builder -> {
                    builder.controllerBuilder()
                            .enableRestStyle();
                })

                // 服务类策略配置
                .strategyConfig(builder -> {
                    builder.serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImp");
                })

                // Mapper 策略配置
                .strategyConfig(builder -> {
                    builder.mapperBuilder()
                            .mapperAnnotation(Mapper.class);
                })

                // 数据表策略配置
                .strategyConfig(builder -> {
                    builder.addInclude(tableName)// 设置数据库中表名，按其中属性内容进行生成
                            .addTablePrefix(excludeTablePrefix); // 设置过滤表前缀进行生成
                })

                .execute();

    }
}