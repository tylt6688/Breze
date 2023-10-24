package com.breze.utils;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;

import java.util.Collections;

/**
 * @Author tylt6688
 * @Date 2022/3/8 15:00
 * @Description MyBatis-Plus 本地 main 函数执行代码生成器（本地版备用型）
 * @Copyright(c) 2022 , 青枫网络工作室
 */
public class CodeGenerator {


    public static void main(String[] args) {
        /*
         * 数据库配置
         */
        String dataBaseName = "breze"; // 数据库名称
        String username = "root"; // 数据库用户名
        String password = "123456"; // 数据库密码

        /*
         * 项目配置
         */

        String author = "Breze"; // 作者
        String packageName = "com.breze"; // 包名
        Boolean isLocal = true; // 是否生成到本地磁盘

        // 指定生成到项本地磁盘绝对路径
        String localDrive = "E://"; // 指定生成到本地磁盘绝对路径
        String packagePath = packageName.replace(".", "//");
        String localXmlPath = packagePath + "//resource//mapper"; // MapperXml生成路径

        // 指定生成到项目开发相对路径
        String projectPath = System.getProperty("user.dir") + "//src//main//java//";
        String projectXmlPath = System.getProperty("user.dir") + "//src//main//resource//mapper";

        // 过滤表前缀
        String[] tablePrefix = {"sys_", "tb_", "log_"};
        // 指定要生成的数据表名
        String[] tableNames = {
                "tb_assets_used",
                "tb_assets_inventory",
                "tb_assets_handle",
                "tb_assets_catalog"
        };


        /*
         * 总执行代码
         */
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/" + dataBaseName + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8", username, password).globalConfig(builder -> {
                    builder.author(author)// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .outputDir(isLocal ? localDrive : projectPath); // 指定所有文件的输出目录

                }).packageConfig(builder -> {
                    builder.parent(packageName)// 设置父包名
//                            .moduleName("system")// 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, isLocal ? localXmlPath : projectXmlPath)); // 设置mapperXml生成路径
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
                    builder.serviceBuilder().formatServiceFileName("%sService").formatServiceImplFileName("%sServiceImp");
                }).strategyConfig(builder -> {
                    // 设置数据库中表名，按其中属性内容进行生成
                    builder.addInclude(tableNames)
                            // 设置过滤表前缀进行生成
                            .addTablePrefix(tablePrefix);
                })

//                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}