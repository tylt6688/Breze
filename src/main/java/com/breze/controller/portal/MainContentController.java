package com.breze.controller.portal;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import com.breze.entity.vo.portal.ContentSelectVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


/**
 * @Author leochan
 * @Date 2022-10-08
 * @Discription 主体内容前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@Api(tags = "门户内容管理")
@RestController
@RequestMapping("/breze/portal/mainContent")
public class MainContentController extends BaseController {

    @ApiOperation("分页获取内容信息")
    @BrezeLog("分页获取内容信息")
    @GetMapping("/page")
    public Result<Page<ContentIntroduceVO>> findPage(String titleName, Long parentId) {
        Page<ContentIntroduceVO> contentIntroduceVoPage = mainContentService.getContentPage(getPage(),titleName,parentId);
        return Result.createSuccessMessage("分页获取内容信息成功", contentIntroduceVoPage);
    }

    @ApiOperation("分页获取内容信息")
    @BrezeLog("分页获取内容信息")
    @GetMapping("/findAllData")
    public Result<List<ContentIntroduceVO>> findAllData(String titleName, Long parentId) {
        List<ContentIntroduceVO> contentIntroduceVOList = mainContentService.selectAllDataList(titleName,parentId);
        return Result.createSuccessMessage("分页获取内容信息成功", contentIntroduceVOList);
    }

    @ApiOperation("根据id获取内容模块信息")
    @BrezeLog("根据id获取内容模块信息")
    @GetMapping("/info/{id}")
    public Result<ContentIntroduceVO> getContentById(@PathVariable Long id) {
        ContentIntroduceVO contentIntroduceVo = mainContentService.getContentById(id);
        return Result.createSuccessMessage("获取内容信息成功", contentIntroduceVo);
    }

    @ApiOperation("获取搜索框选项")
    @BrezeLog("获取搜索框选项")
    @GetMapping("/get_select_option")
    public Result<List<ContentSelectVO>> getSelectOption() {
        List<ContentSelectVO> contentSelectVOS = mainContentService.getSelectOption();
        return Result.createSuccessMessage("获取内容信息成功", contentSelectVOS);
    }

    @ApiOperation("新增内容和修改内容(含图片)")
    @BrezeLog("新增内容和修改内容(含图片)")
    @PostMapping("/insert")
    public Result<String> insertContent(@RequestPart("editData") ContentDTO contentDTO, @RequestParam("file") MultipartFile file){
       return brezeJudgeResult(mainContentService.insertContent(contentDTO,file));
    }

    @ApiOperation("更新内容(不含图片)")
    @BrezeLog("更新内容(不含图片)")
    @PostMapping("/update")
    public Result<String> updateContent(@Validated @RequestBody ContentDTO contentDTO) {
        return brezeJudgeResult(mainContentService.updateContent(contentDTO));
    }

    @ApiOperation("删除内容")
    @BrezeLog("删除内容")
    @PostMapping("/delete")
    public Result<String> deleteContent(@Validated @RequestBody ContentDTO contentDTO){
        return brezeJudgeResult(mainContentService.deleteContent(contentDTO));
    }

}


