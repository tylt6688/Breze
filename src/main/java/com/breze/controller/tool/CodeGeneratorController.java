package com.breze.controller.tool;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.fill.Column;
import com.baomidou.mybatisplus.generator.fill.Property;
import com.breze.common.result.Result;
import com.breze.config.CodeGenerationConfig;
import com.breze.controller.core.BaseController;
import com.breze.entity.generate.CodeGeneration;
import com.breze.service.tool.DataBaseTableService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;

/**
 * <p>
 * 代码生成前端控制器
 * 详情配置地址: [https://baomidou.com/pages/981406/#%E6%95%B0%E6%8D%AE%E5%BA%93%E9%85%8D%E7%BD%AE-datasourceconfig]
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-01
 */
@Api(tags = "代码生成器")
@RestController
@RequestMapping("/tool/code")
public class CodeGeneratorController {

    @Autowired
    private CodeGenerationConfig codeGenerationConfig;

    @Autowired
    private DataBaseTableService dataBaseTableService;

    @GetMapping("/show_databases")
    public Result showDatabases() {
        return Result.createSuccessMessage("获取数据库成功", dataBaseTableService.showDataBases());
    }

    @GetMapping("/tables")
    private Result findAllTableNames(@RequestParam String dataBaseName) {

        return Result.createSuccessMessage("",dataBaseTableService.listDataBaseTables(dataBaseName));
    }

    @PostMapping("/generate")
    public Result codeGenerator(@RequestBody CodeGeneration codeGeneration) {

        String drive = "E://";
        String xmlpath = drive + "xyz//resource//mapper";


        String projectPath = System.getProperty("user.dir") + "//src//main//java//";
        String projectXmlPath = System.getProperty("user.dir") + "//src//main//resource//mapper";

        codeGeneration.setUrl("jdbc:mysql://localhost:3306/" + codeGeneration.getDataBaseName() + "?useSSl=ture&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8");
        codeGeneration.setUsername(codeGenerationConfig.getUsername());
        codeGeneration.setPassword(codeGenerationConfig.getPassword());
        /*
         * 全局配置(GlobalConfig)
         */
        FastAutoGenerator.create(codeGeneration.getUrl(), codeGeneration.getUsername(), codeGeneration.getPassword())
                .globalConfig(builder -> {
                    builder.author(codeGeneration.getAuthor().isEmpty() ? "tylt6688" : codeGeneration.getAuthor())// 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(drive); // 指定输出目录

                })
                /*
                 * 包配置(PackageConfig)
                 */
                .packageConfig(builder -> {
                    // 设置父包名
                    builder.parent(codeGeneration.getPackageName().isEmpty() ? "xyz.tylt" : codeGeneration.getPackageName())
                         // .moduleName("system") // 设置父包模块名
                            .serviceImpl("service.impl") // 设置 Service 实现类包名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, xmlpath)); // 设置mapperXml生成路径
                })
                // 实体策略配置
                .strategyConfig(builder -> {
                    builder.entityBuilder()
                            .enableLombok() // 开启 Lombok
                            .enableChainModel() // 开启链式模型
                            .idType(IdType.AUTO)
                            .addTableFills(new Column("create_time", FieldFill.INSERT))
                            .addTableFills(new Property("update_time", FieldFill.INSERT_UPDATE))

                    ;

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
                    builder.addInclude(codeGeneration.getTableNames())
                            // 设置过滤表前缀进行生成
                            .addTablePrefix(codeGeneration.getTablePrefix());
                })
                // 可选择使用Freemarker引擎模板，默认的是Velocity引擎模板
                // .templateEngine(new FreemarkerTemplateEngine())
                .execute();


        return Result.createSuccessMessage("代码生成成功");
    }

}
