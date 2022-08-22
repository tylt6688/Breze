package com.breze;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import com.breze.controller.core.BaseController;

import java.util.Collections;

/*
 * MyBatis-Plus代码生成器
 */
public class CodeGenerator {


    public static void main(String[] args) {

        String drive = "D://";
        String xmlpath = drive + "xyz//resource//mapper";
        String projectPath = System.getProperty("user.dir");

        FastAutoGenerator.create("jdbc:mysql://localhost:3306/breze?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8", "root", "123456")
                .globalConfig(builder -> {
                    builder.author("tylt6688")// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(drive); // 指定输出目录

                })
                .packageConfig(builder -> {
                    builder.parent("xyz.tylt") // 设置父包名
//                            .moduleName("system") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml, xmlpath)); // 设置mapperXml生成路径
                })
                //实体策略配置
                .strategyConfig(builder -> {
                    builder.entityBuilder()
                            //开启Lombok
                            .enableLombok();
                })
                //控制类策略配置
                .strategyConfig(builder -> {
                    builder.controllerBuilder()
                            //如果没有父类请注释掉
                            .superClass(BaseController.class)
                            .enableRestStyle();
                })
                //服务类策略配置
                .strategyConfig(builder -> {
                    builder.serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImp");
                })
                .strategyConfig(builder -> {
                    builder.addInclude("sys_user")// 设置数据库中表名，按其中属性内容进行生成

//                            .addInclude("tb_index_presence")
//                            .addInclude("tb_index_thought")
//                            .addInclude("tb_room")
//                            .addInclude("tb_student")
//                            .addInclude("tb_teacher")
//                            .addInclude("sys_role")
//                            .addInclude("sys_user")
//                            .addInclude("sys_role_menu")
//                            .addInclude("sys_user_role")
//                            .addInclude("tb_test")
                            .addTablePrefix("sys_","tb_", "tb_index_", "log_"); // 设置过滤表前缀进行生成
                })


                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}