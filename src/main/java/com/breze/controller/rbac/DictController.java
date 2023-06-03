package com.breze.controller.rbac;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.sys.DictDTO;
import com.breze.entity.vo.sys.DictVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;

/**
 * @author chenweixi
 * @create 2023-04-20 15:26
 */
@Log4j2
@Api(tags = "字典管理")
@RestController
@RequestMapping("/sys/dict")
public class DictController extends BaseController {

    @ApiOperation("获取字典分页信息")
    @BrezeLog("获取字典分页信息")
    @GetMapping("/get_dict_page")
    public Result<Page<DictVO>> getDictPage(String name){
        Page<DictVO> dictVOPage = dictService.getDictPage(getPage(),name);
        return Result.createSuccessMessage("获取字典信息成功",dictVOPage);
    }

    @ApiOperation("新增或修改字典信息")
    @BrezeLog("新增或修改字典信息")
    @PostMapping("/insert_or_update")
    public Result<String> insertOrUpdate(@RequestBody DictDTO dictDTO){
        return judgeResult(dictService.insertOrUpdateDict(dictDTO));
    }

    @ApiOperation("删除字典信息")
    @BrezeLog("删除字典信息")
    @DeleteMapping("/delete_dict/{id}")
    public Result<String> deleteDict(@PathVariable Long id){
        return judgeResult(dictService.deleteDict(id));
    }

    @ApiOperation("导出字典到Excel")
    @BrezeLog("导出字典到Excel")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response){
        dictService.exportExcel(response);
    }

    @ApiOperation("导入Excel")
    @BrezeLog("导入Excel")
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file){
        return judgeResult(dictService.importExcel(file));
    }
}
