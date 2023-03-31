package com.breze.controller.portal;

import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.tool.OSS;
import com.qiniu.common.QiniuException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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

@Api(tags = "门户内容管理")
@RestController
@RequestMapping("/breze/portal/mainContent")
public class MainContentController extends BaseController {

    @ApiOperation(value = "分页获取内容信息", notes = "分页获取内容信息")
    @GetMapping("/page")
    public Result<Page<ContentIntroduce>> findPage(String titleName, Long parentId) {
        Page<ContentIntroduce> mainContentPage = mainContentService.page(getPage(), new QueryWrapper<ContentIntroduce>().like("main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        mainContentPage.getRecords().forEach(contentIntroduce -> {
            contentIntroduce.setChildren(mainContentService.list(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId()).orderByAsc("order_num")));
            contentIntroduce.getChildren().forEach(content -> content.setImgUrl(ossFileService.getById(content.getOssId()).getFileUrl()));
        });
        return Result.createSuccessMessage("分页获取内容信息成功", mainContentPage);
    }

    @ApiOperation(value = "获取内容信息成功", notes = "获取内容信息")
    @GetMapping("/findAllData")
    public Result<List<ContentIntroduce>> findAllData(String titleName, Long parentId) {
        List<ContentIntroduce> introduceList = mainContentService.list(new QueryWrapper<ContentIntroduce>().like("main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        introduceList.forEach(contentIntroduce -> {
            contentIntroduce.setChildren(mainContentService.list(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId())));
            contentIntroduce.getChildren().forEach(content -> content.setImgUrl(ossFileService.getById(content.getOssId()).getFileUrl()));
        });
        return Result.createSuccessMessage("获取内容信息成功", introduceList);
    }

    @ApiOperation(value = "获取内容", notes = "根据id获取内容模块信息")
    @GetMapping("/info/{id}")
    public Result<ContentIntroduce> getMainInfo(@PathVariable Long id) {
        ContentIntroduce contentIntroduce = mainContentService.getById(id);
        contentIntroduce.setImgUrl(ossFileService.getById(contentIntroduce.getOssId()).getFileUrl());
        return Result.createSuccessMessage("获取内容信息成功", contentIntroduce);
    }


    @ApiOperation(value = "新增内容", notes = "新增内容")
    @PostMapping("/insert")
    public Result<String> saveMain(@RequestPart("editData") ContentIntroduce contentIntroduce, @RequestParam("file") MultipartFile file) throws IOException {

        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            return Result.createFailMessage(ErrorEnum.FindException, "文件必须为PNG或JPG格式");
        }
        String path = qiNiuService.uploadFile(file);
        String fileName = path.substring(25, path.lastIndexOf("."));

        OSS oss = new OSS();
        oss.setFileName(fileName);
        oss.setFileUrl(path);

        if ((contentIntroduce.getId() != null)) {
            // 删除原来的图片
            qiNiuService.deleteFile(contentIntroduce.getImgUrl());
            // 修改oss表图片存储链接
            oss.setId(contentIntroduce.getOssId());
            ossFileService.updateById(oss);
            // 修改内容
            mainContentService.updateById(contentIntroduce);
            return Result.createSuccessMessage("编辑数据成功");
        } else {
            String ossId = IdUtil.simpleUUID();
            oss.setId(ossId);
            contentIntroduce.setOssId(ossId);
            ossFileService.save(oss);
            mainContentService.save(contentIntroduce);
            return Result.createSuccessMessage("添加数据成功");
        }
    }

    @ApiOperation(value = "更新内容", notes = "更新内容")
    @PostMapping("/update")
    public Result<String> updateMain(@Validated @RequestBody ContentIntroduce contentIntroduce) {

        try {
            mainContentService.updateById(contentIntroduce);
            return Result.createSuccessMessage("更新内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknownError, "更新内容失败");
        }
    }

    @ApiOperation(value = "删除内容", notes = "删除内容")
    @PostMapping("/delete")
    public Result<String> delete(@Validated @RequestBody ContentIntroduce contentIntroduce) throws QiniuException {
        qiNiuService.deleteFile(contentIntroduce.getImgUrl());
        ossFileService.removeById(contentIntroduce.getOssId());
        mainContentService.removeById(contentIntroduce);
        return Result.createSuccessMessage("已删除内容");
    }

}


