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
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 主体内容表 前端控制器
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Api(tags = "门户内容管理")
@RestController
@RequestMapping("/breze/portal/mainContent")
public class MainContentController extends BaseController {

    @GetMapping("/page")
    public Result findPage(String titleName,Long parentId){
        Page<ContentIntroduce> mainContentPage =mainContentService.page(getPage(),new QueryWrapper<ContentIntroduce>().like("main_title", titleName).eq("parent_id",parentId).orderByAsc("order_num"));
        mainContentPage.getRecords().forEach(contentIntroduce -> {
                contentIntroduce.setChildren(mainContentService.list(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId()).orderByAsc("order_num")));
                contentIntroduce.getChildren().forEach(content -> content.setImgUrl(ossFileService.getById(content.getOssId()).getFileUrl()));
        });
        return Result.createSuccessMessage("获取内容信息成功", mainContentPage);
    }
    @GetMapping("/findAllData")
    public Result findAllData(String titleName,Long parentId){
        List<ContentIntroduce> introduceList = mainContentService.list(new QueryWrapper<ContentIntroduce>().like("main_title", titleName).eq("parent_id", parentId).orderByAsc("order_num"));
        introduceList.forEach(contentIntroduce -> {
                contentIntroduce.setChildren(mainContentService.list(new QueryWrapper<ContentIntroduce>().eq("parent_id", contentIntroduce.getId())));
                contentIntroduce.getChildren().forEach(content -> content.setImgUrl(ossFileService.getById(content.getOssId()).getFileUrl()));
        });
        return Result.createSuccessMessage("获取内容信息成功", introduceList);
    }

    //根据id获取内容模块信息
    @GetMapping("/info/{id}")
    public Result getMainInfo(@PathVariable Long id) {
        ContentIntroduce contentIntroduce = mainContentService.getById(id);
        contentIntroduce.setImgUrl(ossFileService.getById(contentIntroduce.getOssId()).getFileUrl());
        return Result.createSuccessMessage("获取内容信息成功", contentIntroduce);
    }


    //添加
    @PostMapping("/insert")
    public Result saveMain(@RequestPart("editData") ContentIntroduce contentIntroduce, @RequestParam("file") MultipartFile file) throws IOException  {

        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            return Result.createFailMessage(ErrorEnum.FindException, "文件必须为PNG或JPG格式");
        }
        String path = qiNiuService.uploadFile(file);
        String fileName = path.substring(25,path.lastIndexOf("."));

        OSS OSS = new OSS();
        OSS.setFileName(fileName);
        OSS.setFileUrl(path);

        if((contentIntroduce.getId() != null)){
            // 删除原来的图片
            qiNiuService.deleteFile(contentIntroduce.getImgUrl());
            // 修改oss表图片存储链接
            OSS.setId(contentIntroduce.getOssId());
            ossFileService.updateById(OSS);
            // 修改内容
            mainContentService.updateById(contentIntroduce);
            return Result.createSuccessMessage("编辑数据成功");
        }else {
            String ossId = IdUtil.simpleUUID();
            OSS.setId(ossId);
            contentIntroduce.setOssId(ossId);
            ossFileService.save(OSS);
            mainContentService.save(contentIntroduce);
            return Result.createSuccessMessage("添加数据成功");
        }
    }

    //修改内容
    @PostMapping("/update")
    public Result updateMain(@Validated @RequestBody ContentIntroduce contentIntroduce) {

        try {
            mainContentService.updateById(contentIntroduce);
            return Result.createSuccessMessage("更新内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknownError, "更新内容失败");
        }
    }
    @PostMapping("/delete")
    public Result delete(@Validated @RequestBody ContentIntroduce contentIntroduce) throws QiniuException {
        qiNiuService.deleteFile(contentIntroduce.getImgUrl());
        ossFileService.removeById(contentIntroduce.getOssId());
        mainContentService.removeById(contentIntroduce);
        return Result.createSuccessMessage("已删除内容");
    }

}


