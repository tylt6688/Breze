package com.breze.controller.portal;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.portal.Banner;
import com.breze.entity.pojo.portal.MainContent;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.service.portal.MainContentService;
import com.qiniu.common.QiniuException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
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
@RestController
@RequestMapping("/breze/portal/mainContent")
public class MainContentController extends BaseController {

    //根据id获取内容模块信息
    @GetMapping("/info/{id}")
    public Result getMainInfo(@PathVariable Long id) {
        MainContent mainContent = mainContentService.getById(id);
        return Result.createSuccessMessage("获取内容信息成功", mainContent);
    }

    //查询所有内容
    @GetMapping("/select")
    public Result select() {
        List<MainContent> mainContents = mainContentService.list();
        return Result.createSuccessMessage("查询内容成功", mainContents);
    }

    //添加
    @PostMapping("/insert")
    public Result saveMain(@Validated @RequestBody MainContent mainContent) {
        try {
            mainContentService.save(mainContent);
            return Result.createSuccessMessage("添加主页内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknowError, "添加内容失败");
        }
    }

    //修改内容
    @PostMapping("/update")
    public Result UpdateMain(@Validated @RequestBody MainContent mainContent) {
        try {
            mainContentService.updateById(mainContent);
            return Result.createSuccessMessage("更新主页内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknowError, "添加内容失败");
        }
    }
    @PostMapping("/delete")
    public Result delete(@RequestBody Long id) {
        mainContentService.removeById(id);
        return Result.createSuccessMessage("已删除内容");
    }

    @GetMapping("/page")
    public Result findPage( String titleName){
        QueryWrapper<MainContent> queryWrapper=new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if (!"".equals(titleName)) {
            queryWrapper.like("title_name", titleName);
        }
        Page<MainContent> mainContentPage =mainContentService.page(getPage(),queryWrapper);

        //navbarService.page(page);
        return Result.createSuccessMessage("获取内容信息成功", mainContentPage);
    }


}


