package com.breze.controller.portal;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.tool.OSS;
import com.qiniu.common.QiniuException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;


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
    public Result<Page<ContentIntroduce>> findPage(String titleName, Long parentId) {
        Page<ContentIntroduce> mainContentPage = mainContentService.getContentPage(getPage(),titleName,parentId);
        return Result.createSuccessMessage("分页获取内容信息成功", mainContentPage);
    }

    @ApiOperation("根据id获取内容模块信息")
    @BrezeLog("根据id获取内容模块信息")
    @GetMapping("/info/{id}")
    public Result<ContentIntroduce> getMainInfo(@PathVariable Long id) {
        ContentIntroduce contentIntroduce = mainContentService.getById(id);
        contentIntroduce.setImgUrl(ossFileService.getById(contentIntroduce.getOssId()).getFileUrl());
        return Result.createSuccessMessage("获取内容信息成功", contentIntroduce);
    }

    @ApiOperation("新增内容和修改内容(含图片)")
    @BrezeLog("新增内容和修改内容(含图片)")
    @PostMapping("/insert")
    public Result<String> saveMain(@RequestPart("editData") ContentIntroduce contentIntroduce, @RequestParam("file") MultipartFile file){
       return judgeResult(mainContentService.insertContent(contentIntroduce,file));
    }

    @ApiOperation("更新内容(不含图片)")
    @BrezeLog("更新内容(不含图片)")
    @PostMapping("/update")
    public Result<String> updateMain(@Validated @RequestBody ContentIntroduce contentIntroduce) {
        return judgeResult(mainContentService.updateById(contentIntroduce));
    }

    @ApiOperation("删除内容")
    @BrezeLog("删除内容")
    @PostMapping("/delete")
    public Result<String> delete(@Validated @RequestBody ContentIntroduce contentIntroduce) throws QiniuException {
        return judgeResult(mainContentService.deleteContent(contentIntroduce));
    }

}


