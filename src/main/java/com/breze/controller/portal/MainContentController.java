package com.breze.controller.portal;

import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.portal.MainContent;
import com.breze.entity.pojo.tool.OSS;
import com.qiniu.common.QiniuException;
import io.swagger.annotations.Api;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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
    public Result findPage(String titleName){
        Page<MainContent> mainContentPage =mainContentService.page(getPage(),new QueryWrapper<MainContent>().like("title_name", titleName).orderByAsc("order_num"));
        mainContentPage.getRecords().forEach(mainContent -> mainContent.setImgUrl(ossFileService.getById(mainContent.getOssId()).getFileUrl()));
        return Result.createSuccessMessage("获取内容信息成功", mainContentPage);
    }

    //根据id获取内容模块信息
    @GetMapping("/info/{id}")
    public Result getMainInfo(@PathVariable Long id) {
        MainContent mainContent = mainContentService.getById(id);
        mainContent.setImgUrl(ossFileService.getById(mainContent.getOssId()).getFileUrl());
        return Result.createSuccessMessage("获取内容信息成功", mainContent);
    }


    //添加
    @PostMapping("/insert")
    public Result saveMain(@RequestPart("editData") MainContent mainContent, @RequestParam("file") MultipartFile file) throws IOException  {

        if (!Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.PNG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPG) && !Objects.requireNonNull(file.getOriginalFilename()).endsWith(CharsetConstant.JPEG)) {
            return Result.createFailMessage(ErrorEnum.FindException, "文件必须为PNG或JPG格式");
        }
        String path = qiNiuService.uploadFile(file);
        String fileName = path.substring(25,path.lastIndexOf("."));

        OSS OSS = new OSS();
        OSS.setFileName(fileName);
        OSS.setFileUrl(path);

        if((mainContent.getId() != null)){
            // 删除原来的图片
            qiNiuService.deleteFile(mainContent.getImgUrl());
            // 修改oss表图片存储链接
            OSS.setId(mainContent.getOssId());
            ossFileService.updateById(OSS);
            // 修改内容
            mainContentService.updateById(mainContent);
            return Result.createSuccessMessage("编辑数据成功");
        }else {
            String ossId = IdUtil.simpleUUID();
            OSS.setId(ossId);
            mainContent.setOssId(ossId);
            ossFileService.save(OSS);
            mainContentService.save(mainContent);
            return Result.createSuccessMessage("添加数据成功");
        }
    }

    //修改内容
    @PostMapping("/update")
    public Result updateMain(@Validated @RequestBody MainContent mainContent) {

        try {
            mainContentService.updateById(mainContent);
            return Result.createSuccessMessage("更新内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknownError, "更新内容失败");
        }
    }
    @PostMapping("/delete")
    public Result delete(@Validated @RequestBody MainContent mainContent) throws QiniuException {
        qiNiuService.deleteFile(mainContent.getImgUrl());
        ossFileService.removeById(mainContent.getOssId());
        mainContentService.removeById(mainContent);
        return Result.createSuccessMessage("已删除内容");
    }

}


