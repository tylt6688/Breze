package com.breze.controller.portal;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.portal.MainContent;
import com.breze.entity.pojo.portal.ModeCard;
import com.breze.entity.pojo.portal.Navbar;

import org.apache.commons.lang3.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * <p>
 * 导航连接表 前端控制器
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@RestController
@RequestMapping("/breze/portal/navbar")
public class NavbarController extends BaseController {

    //查询所有内容
    @GetMapping("/select")
    public Result select() {
        List<Navbar> navbars = navbarService.list();
        return Result.createSuccessMessage("查询内容成功", navbars);
    }

    //根据id获取内容模块信息
    @GetMapping("/info/{id}")
    public Result getMainInfo(@PathVariable Long id) {
        Navbar navbar = navbarService.getById(id);
        return Result.createSuccessMessage("获取内容信息成功", navbar);
    }
    //添加
    @PostMapping("/insert")
    public Result saveMain(@Validated @RequestBody Navbar navbar) {
        try {
            navbarService.save(navbar);
            return Result.createSuccessMessage("添加导航成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknowError, "添加内容失败");
        }
    }

    //修改内容
    @PostMapping("/update")
    public Result UpdateMain(@Validated @RequestBody Navbar navbar) {
        try {
            navbarService.updateById(navbar);
            return Result.createSuccessMessage("更新主页内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknowError, "添加内容失败");
        }
    }
    @PostMapping("/delete")
    public Result delete(@RequestBody Long id) {
        navbarService.removeById(id);
        return Result.createSuccessMessage("已删除内容");
    }
    @GetMapping("/page")
    public Result findPage( String titleName){
        QueryWrapper<Navbar> queryWrapper=new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if (!"".equals(titleName)) {
           queryWrapper.like("title_name", titleName);
       }
        Page<Navbar> NavbarPage =navbarService.page(getPage(),queryWrapper);
        //navbarService.page(page);
        return Result.createSuccessMessage("获取内容信息成功", NavbarPage);
    }

}
