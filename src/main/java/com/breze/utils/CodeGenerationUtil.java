package com.breze.utils;


import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.fill.Column;
import com.baomidou.mybatisplus.generator.fill.Property;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.develop.CodeGeneration;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import java.util.Collections;

/**
 * @Author tylt6688
 * @Date 2023/8/31 15:34
 * @Description MyBatis代码生成工具类
 * @Copyright(c) 2023 , 青枫网络工作室
 * @Remark 详细配置 <a>https://baomidou.com/pages/981406/#%E5%9F%BA%E7%A1%80%E9%85%8D%E7%BD%AE<a/>
 */
@Log4j2
@UtilityClass
public class CodeGenerationUtil {

    public static void codeGenerator(CodeGeneration codeGeneration) {

        String packagePath = codeGeneration.getPackageName().replace(".", "//");
        String localXmlPath = codeGeneration.getOutputDir() + packagePath + "//resource//mapper";


        // 指定生成到项目开发路径
        String projectPath = System.getProperty("user.dir") + "//src//main//java//";
        String projectXmlPath = System.getProperty("user.dir") + "//src//main//resource//mapper";

        codeGeneration.setUrl("jdbc:mysql://localhost:3306/" + codeGeneration.getDataBaseName() + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8");
        codeGeneration.setUsername(codeGeneration.getUsername());
        codeGeneration.setPassword(codeGeneration.getPassword());

        /*
         * 全局配置(GlobalConfig)
         */
        FastAutoGenerator.create(codeGeneration.getUrl(), codeGeneration.getUsername(), codeGeneration.getPassword())
                .globalConfig(builder -> builder
                        .author(codeGeneration.getAuthor()) // 设置作者
                        .commentDate("yyyy/MM/dd HH:mm") // 设置注释日期
                        .enableSwagger() // 开启 swagger 模式
                        .outputDir(Boolean.TRUE.equals(codeGeneration.getIsLocal()) ? codeGeneration.getOutputDir() : projectPath) // 指定输出目录
                        .disableOpenDir()) // 生成完成后不弹出文件夹
                /*
                 * 包配置(PackageConfig)
                 */
                .packageConfig(builder -> builder
                        .parent(codeGeneration.getPackageName()) // 设置父包名
                        .serviceImpl("service.impl") // 设置 Service 实现类包名
                        .pathInfo(Collections.singletonMap(OutputFile.xml, Boolean.TRUE.equals(codeGeneration.getIsLocal()) ? localXmlPath : projectXmlPath)) // 设置mapperXml生成路径
                )
                /*
                 * 策略配置(StrategyConfig)
                 */
                .strategyConfig(builder -> builder
                        .addInclude(codeGeneration.getTableNames())
                        .addTablePrefix(codeGeneration.getTablePrefix()) // 设置过滤表前缀进行生成

                        // 实体类策略配置
                        .entityBuilder()
                        .enableLombok() // 开启 Lombok
                        .enableChainModel() // 开启链式模型
                        .idType(IdType.AUTO) // 设置主键类型
                        .enableRemoveIsPrefix() // 开启 Boolean 类型字段移除 is 前缀
                        .enableTableFieldAnnotation() // 开启生成实体时生成字段注解
                        .addTableFills(new Column("create_time", FieldFill.INSERT))
                        .addTableFills(new Property("update_time", FieldFill.INSERT_UPDATE))
                        // 控制类策略配置
                        .controllerBuilder()
                        .superClass(BaseController.class)
                        .enableRestStyle() // 开启生成 @RestController 控制器
                        // 服务类策略配置
                        .serviceBuilder()
                        .formatServiceFileName("%sService")
                        .formatServiceImplFileName("%sServiceImp")

                        .enableFileOverride()) // 覆盖已生成文件
                // .templateEngine(new FreemarkerTemplateEngine()) // 选择使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();
    }
}
