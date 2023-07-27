package com.breze.controller.core;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.sys.DictDataDTO;
import com.breze.entity.pojo.core.DictData;
import com.breze.entity.vo.sys.DictDataVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * @author chenweixi
 * @Date 2023-07-14 14:17
 * @Description 字典数据控制器
 * @Copyright(c) 2023, 青枫网络工作室
 */
@Log4j2
@Api(tags = "字典数据管理")
@RestController
@RequestMapping("/sys/dict/data")
public class DictDataController extends BaseController {

    @ApiOperation("通过字典类型分页获取字典数据")
    @BrezeLog("通过字典类型分页获取字典数据")
    @GetMapping("/get_dict_data_page")
    public Result<Page<DictDataVO>> getDictDataPage(Long state, String dictType) {
        Page<DictDataVO> dictDataVOPage = dictDataService.getDictDataPage(getPage(), state, dictType);
        return Result.createSuccessMessage("获取字典数据信息成功", dictDataVOPage);
    }

    @ApiOperation("通过id获取单个信息")
    @BrezeLog("通过id获取单个信息")
    @GetMapping("/get_dict_data_by_id/{id}")
    public Result<DictDataVO> getDictDataById(@PathVariable Long id) {
        DictDataVO dictDataVO = dictDataService.getDictDataById(id);
        return Result.createSuccessMessage("获取字典信息成功", dictDataVO);
    }


    @ApiOperation("新增或修改字典信息")
    @BrezeLog("新增或修改字典信息")
    @PostMapping("/insert_or_update")
    public Result<String> insertOrUpdate(@RequestBody DictDataDTO dictDataDTO) {
        return brezeJudgeResult(dictDataService.insertOrUpdateDict(dictDataDTO));
    }

    @ApiOperation("删除字典信息")
    @BrezeLog("删除字典信息")
    @DeleteMapping("/delete_dict_data/{id}")
    public Result<String> deleteDictData(@PathVariable Long id) {
        return brezeJudgeResult(dictDataService.deleteDictData(id));
    }

    @ApiOperation("导出字典到Excel")
    @BrezeLog("导出字典到Excel")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response) {
        dictDataService.exportExcel(response);
    }

    @ApiOperation("导入Excel")
    @BrezeLog("导入Excel")
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file) {
        return brezeJudgeResult(dictDataService.importExcel(file));
    }

    @ApiOperation("下载字典表Excel模板")
    @BrezeLog("下载字典表Excel模板")
    @GetMapping("/dict_template_excel")
    public void dictTemplateExcel(HttpServletResponse response) {
        dictDataService.dictTemplateExcel(response);
    }

    @ApiOperation("删除字典信息")
    @BrezeLog("删除字典信息")
    @GetMapping("/get_dict_data_by_type")
    public Result<Map<String,List<DictData>>> getDictDataByType(@RequestParam("dicts") List<String> dicts) {
        Map<String,List<DictData>> listMap = dictDataService.getDictDataByType(dicts);
        return Result.createSuccessMessage("获取字典数据信息成功", listMap);
    }
}
