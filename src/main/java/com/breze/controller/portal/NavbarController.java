package com.breze.controller.portal;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.mapstruct.portal.NavbarConvert;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.portal.NavbarTitleVo;
import io.swagger.annotations.Api;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 导航连接表 前端控制器
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Api(tags = "门户导航管理")
@RestController
@RequestMapping("/breze/portal/navbar")
public class NavbarController extends BaseController {

    @GetMapping("/page")
    public Result findPage(String titleName,Long parentId){
        Page<Navbar> NavbarPage = navbarService.findNavbarPage(getPage(),titleName,parentId);
        return Result.createSuccessMessage("获取内容信息成功", NavbarPage);
    }

    //根据id获取内容模块信息
    @GetMapping("/selectNavbar/{id}")
    public Result selectNavbar(@PathVariable Long id) {
        Navbar navbar = navbarService.getById(id);
        return Result.createSuccessMessage("获取内容信息成功", navbar);
    }
    @GetMapping("/findAllData/{flag}")
    public Result findAllData(@PathVariable Long flag) {
        List<NavbarTitleVo> navbarTitleVos = NavbarConvert.INSTANCE.NavbarListToTitleVo(navbarService.list(new QueryWrapper<Navbar>().eq("flag",flag)));
        return Result.createSuccessMessage("获取内容信息成功", navbarTitleVos);
    }
    @GetMapping("/count")
    public Result count() {
        long count = navbarService.count();
        return Result.createSuccessMessage("获取内容数量成功", count);
    }

    //添加
    @PostMapping("/insert")
    public Result saveMain(@Validated @RequestBody Navbar navbar) {
        try {
            navbarService.save(navbar);
            return Result.createSuccessMessage("添加导航成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknownError, "添加内容失败");
        }
    }

    //修改内容
    @PostMapping("/update")
    public Result updateMain(@Validated @RequestBody Navbar navbar) {
        try {
            navbarService.updateById(navbar);
            return Result.createSuccessMessage("更新内容成功");
        } catch (Exception e) {
            return Result.createFailMessage(ErrorEnum.UnknownError, "添加内容失败");
        }
    }
    @PostMapping("/delete")
    public Result delete(@RequestBody Long id) {
        navbarService.removeById(id);
        return Result.createSuccessMessage("已删除内容");
    }


}
