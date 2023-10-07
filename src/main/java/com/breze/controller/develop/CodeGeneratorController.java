package com.breze.controller.develop;

import com.breze.common.result.Result;
import com.breze.config.CodeGeneratorConfig;
import com.breze.entity.pojo.develop.CodeGeneration;
import com.breze.service.develop.DataBaseTableService;
import com.breze.utils.CodeGenerationUtil;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 代码生成前端控制器
 * 详情配置地址: [<a href="https://baomidou.com/pages/981406/#%E6%95%B0%E6%8D%AE%E5%BA%93%E9%85%8D%E7%BD%AE-datasourceconfig">...</a>]
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
    private CodeGeneratorConfig codeGeneratorConfig;

    @Autowired
    private DataBaseTableService dataBaseTableService;

    @GetMapping("/show_databases")
    public Result<Object> showDatabases() {
        return Result.createSuccessMessage("获取数据库成功", dataBaseTableService.showDataBases());
    }

    @GetMapping("/get_tables")
    public Result<Object> findAllTableNames(@RequestParam String dataBaseName) {
        return Result.createSuccessMessage("获取数据表成功", dataBaseTableService.listDataBaseTables(dataBaseName));
    }

    @PostMapping("/generate")
    public Result<Object> codeGenerator(@RequestBody CodeGeneration codeGeneration) {

        codeGeneration.setUsername(codeGeneratorConfig.getUsername());
        codeGeneration.setPassword(codeGeneratorConfig.getPassword());

        CodeGenerationUtil.codeGenerator(codeGeneration);
        return Result.createSuccessMessage("代码生成成功");
    }

}
