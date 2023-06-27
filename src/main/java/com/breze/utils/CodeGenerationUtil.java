package com.breze.utils;


import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.fill.Column;
import com.baomidou.mybatisplus.generator.fill.Property;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.tool.CodeGeneration;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import java.util.Collections;

@Log4j2
@UtilityClass
public class CodeGenerationUtil {

    public static void codeGenerator(CodeGeneration codeGeneration) {

        String localDrive = "E://";
        String packagePath = "com//breze";
        String localXmlPath = localDrive + packagePath + "//resource//mapper";

        String packageName = packagePath.replace("//",".");
        String author = "tylt6688";


        String projectPath = System.getProperty("user.dir") + "//src//main//java//";
        String projectXmlPath = System.getProperty("user.dir") + "//src//main//resource//mapper";

        codeGeneration.setUrl("jdbc:mysql://localhost:3306/" + codeGeneration.getDataBaseName() + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8");
        codeGeneration.setUsername(codeGeneration.getUsername());
        codeGeneration.setPassword(codeGeneration.getPassword());
        /*
         * 全局配置(GlobalConfig)
         */
        FastAutoGenerator.create(codeGeneration.getUrl(), codeGeneration.getUsername(), codeGeneration.getPassword())
                .globalConfig(builder -> {
                    builder.author(codeGeneration.getAuthor().isEmpty() ? author : codeGeneration.getAuthor())// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .outputDir(localDrive); // 指定输出目录

                })
                /*
                 * 包配置(PackageConfig)
                 */
                .packageConfig(builder -> {
                    builder
                            // 设置父包名
                            .parent(codeGeneration.getPackageName().isEmpty() ? packageName : codeGeneration.getPackageName())
                            // .moduleName("system") // 设置父包模块名
                            .serviceImpl("service.impl") // 设置 Service 实现类包名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, localXmlPath)); // 设置mapperXml生成路径
                })
                // 实体策略配置
                .strategyConfig(builder -> builder
                        .addInclude(codeGeneration.getTableNames())
                        // 设置过滤表前缀进行生成
                        .addTablePrefix(codeGeneration.getTablePrefix())
                        // 实体类策略配置
                        .entityBuilder()
                        .enableLombok() // 开启 Lombok
                        .enableChainModel() // 开启链式模型
                        .idType(IdType.AUTO)
                        .addTableFills(new Column("create_time", FieldFill.INSERT))
                        .addTableFills(new Property("update_time", FieldFill.INSERT_UPDATE))
                        // 控制类策略配置
                        .controllerBuilder()
                        // 如果没有父类请注释掉
                        .superClass(BaseController.class)
                        .enableRestStyle()
                        // 服务类策略配置
                        .serviceBuilder()
                        .formatServiceFileName("%sService")
                        .formatServiceImplFileName("%sServiceImp")
                        // 覆盖已生成文件
                        .enableFileOverride())
                // 可选择使用Freemarker引擎模板，默认的是Velocity引擎模板
                // .templateEngine(new FreemarkerTemplateEngine())
                .execute();


    }
}
