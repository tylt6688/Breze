package com.breze.utils;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;

import java.util.Collections;

/**
 * @Author TYLT
 * @Date 2022/3/8 15:00
 * @Description MyBatis-Plus 本地 main 函数执行代码生成器（备用型）
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class CodeGenerator {


    public static void main(String[] args) {
        /*
         * 数据库配置
         */
        String dataBaseName = "breze";
        String username = "root";
        String password = "123456";

        /*
         * 项目配置
         */
        String localDrive = "E://";
        String author = "Breze";
        String packagePath = "com//breze";
        String localXmlPath = packagePath + "//resource//mapper";

        //        指定生成到项目开发路径
        String projectPath = System.getProperty("user.dir") + "//src//main//java//";
        String projectXmlPath = System.getProperty("user.dir") + "//src//main//resource//mapper";

        String packageName = packagePath.replace("//", ".");
        String[] tablePrefix = {"sys_", "tb_", "log_"};
        String[] tableNames = {"tb_assets_used", "tb_assets_inventory", "tb_assets_handle", "tb_assets_catalog"};


        /*
         * 总执行代码
         */
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/" + dataBaseName + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8", username, password)
                .globalConfig(builder -> {
                    builder.author(author)// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .outputDir(localDrive); // 指定所有文件的输出目录

                })
                .packageConfig(builder -> {
                    builder.parent(packageName)// 设置父包名
//                            .moduleName("system")// 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, localXmlPath)); // 设置mapperXml生成路径
                })
                //实体策略配置
                .strategyConfig(builder -> {
                    builder.entityBuilder()
//                            .superClass(BaseEntity.class)// 设置实体类父类
                            .enableLombok();// 开启Lombok
                })
                //控制类策略配置
                .strategyConfig(builder -> {
                    builder.controllerBuilder()
//                            .superClass(BaseController.class)// 如果没有父类请注释掉
                            .enableRestStyle();
                })
                //服务类策略配置
                .strategyConfig(builder -> {
                    builder.serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImp");
                })
                .strategyConfig(builder -> {
                    // 设置数据库中表名，按其中属性内容进行生成
                    builder.addInclude(tableNames)
                            // 设置过滤表前缀进行生成
                            .addTablePrefix(tablePrefix);
                })

//                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}