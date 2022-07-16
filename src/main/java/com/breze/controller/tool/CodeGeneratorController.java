package com.breze.controller.tool;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import com.breze.entity.gener.Gener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.breze.common.result.Result;
import com.breze.config.CodeGeneratorConfig;
import com.breze.controller.core.BaseController;

import java.util.Collections;

@RequestMapping("/codeGenerator")
public class CodeGeneratorController {

    @Autowired
    private CodeGeneratorConfig codeGeneratorConfig;


    @PostMapping("/generate")
    public Result codeGenerator(@RequestBody Gener gener) {

        String drive = "D://";
        String xmlpath = drive + "xyz//resource//mapper";
        String projectPath = System.getProperty("user.dir");


        FastAutoGenerator.create(codeGeneratorConfig.getUrl(), codeGeneratorConfig.getUsername(), codeGeneratorConfig.getPassword())
                .globalConfig(builder -> {
                    builder.author(gener.getAuthor().isEmpty() ? "tylt6688" : gener.getAuthor())// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(drive); // 指定输出目录

                })
                .packageConfig(builder -> {
                    // 设置父包名
                    builder.parent(gener.getPackageName().isEmpty() ? "xyz.tylt" : gener.getPackageName())
//                            .moduleName("system") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml, xmlpath)); // 设置mapperXml生成路径
                })
                // 实体策略配置
                .strategyConfig(builder -> {
                    builder.entityBuilder()
                            // 开启Lombok
                            .enableLombok();
                })
                // 控制类策略配置
                .strategyConfig(builder -> {
                    builder.controllerBuilder()
                            // 如果没有父类请注释掉
                            .superClass(BaseController.class)
                            .enableRestStyle();
                })
                // 服务类策略配置
                .strategyConfig(builder -> {
                    builder.serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImp");
                })
                .strategyConfig(builder -> {
                    // 设置数据库中表名，按其中属性内容进行生成
                    builder.addInclude(gener.getTableNames())
                            // 设置过滤表前缀进行生成
                            .addTablePrefix(gener.getTablePrefix());
                })
                // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .templateEngine(new FreemarkerTemplateEngine())
                .execute();


        return Result.createSuccessMessage("代码生成成功");
    }
}
