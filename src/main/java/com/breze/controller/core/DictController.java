package com.breze.controller.core;

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
import java.util.List;

/**
 * @author chenweixi
 * @create 2023-07-14 14:17
 * @Description 字典类型控制器
 * @Copyright(c) 2023, 青枫网络工作室
 */
@Log4j2
@Api(tags = "字典管理")
@RestController
@RequestMapping("/sys/dict")
public class DictController extends BaseController {

    @ApiOperation("获取字典分页信息")
    @BrezeLog("获取字典分页信息")
    @GetMapping("/get_dict_page")
    public Result<Page<DictVO>> getDictPage(String dictName, String dictType) {
        Page<DictVO> dictVOPage = dictService.getDictPage(getPage(), dictName, dictType);
        return Result.createSuccessMessage("获取字典信息成功", dictVOPage);
    }

    @ApiOperation("通过id获取单个信息")
    @BrezeLog("通过id获取单个信息")
    @GetMapping("/get_dict_by_id/{id}")
    public Result<DictVO> getDictById(@PathVariable Long id) {
        DictVO dictVo = dictService.getDictById(id);
        return Result.createSuccessMessage("获取字典信息成功", dictVo);
    }

    @ApiOperation("获取下拉选择菜单")
    @BrezeLog("获取下拉选择菜单")
    @GetMapping("/get_option_select")
    public Result<List<DictVO>> getOptionSelect() {
        List<DictVO> dictVOList = dictService.getOptionSelectList();
        return Result.createSuccessMessage("获取字典信息成功", dictVOList);
    }

    @ApiOperation("新增或修改字典信息")
    @BrezeLog("新增或修改字典信息")
    @PostMapping("/insert_or_update")
    public Result<String> insertOrUpdate(@RequestBody DictDTO dictDTO) {
        return brezeJudgeResult(dictService.insertOrUpdateDict(dictDTO));
    }

    @ApiOperation("删除字典信息")
    @BrezeLog("删除字典信息")
    @DeleteMapping("/delete_dict/{id}")
    public Result<String> deleteDict(@PathVariable Long id) {
        return brezeJudgeResult(dictService.deleteDict(id));
    }

    @ApiOperation("导出字典到Excel")
    @BrezeLog("导出字典到Excel")
    @GetMapping("/export_excel")
    public void exportExcel(HttpServletResponse response) {
        dictService.exportExcel(response);
    }

    @ApiOperation("导入Excel")
    @BrezeLog("导入Excel")
    @PostMapping("/import_excel")
    public Result<String> importExcel(@RequestParam MultipartFile file) {
        return brezeJudgeResult(dictService.importExcel(file));
    }

    @ApiOperation("下载字典表Excel模板")
    @BrezeLog("下载字典表Excel模板")
    @GetMapping("/dict_template_excel")
    public void dictTemplateExcel(HttpServletResponse response) {
        dictService.dictTemplateExcel(response);
    }

    @ApiOperation("刷新缓存")
    @BrezeLog("刷新缓存")
    @GetMapping("/refresh_cache")
    public void refreshCache() {
        dictService.refreshCache();
    }
}
