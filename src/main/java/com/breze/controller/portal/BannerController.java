package com.breze.controller.portal;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.portal.Banner;
import com.breze.service.portal.BannerService;
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
 * @Author tylt6688
 * @Date 2022-04-15
 * @Discription 轮播图前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Api(tags = "门户轮播图管理")
@RestController
@RequestMapping("/breze/portal/banner")
public class BannerController extends BaseController {

    @ApiOperation("通过id获取轮播图")
    @BrezeLog("通过id获取轮播图")
    @GetMapping("/info/{id}")
    public Result<Banner> getBannerInfo(@PathVariable Long id) {
        Banner banner = bannerService.getById(id);
        return Result.createSuccessMessage("获取轮播图信息成功", banner);
    }

    @ApiOperation("获取轮播图排序信息")
    @BrezeLog("获取轮播图排序信息")
    @GetMapping("/select")
    public Result<List<Banner>> select() {
        List<Banner> banners = bannerService.listOrderByDesc();
        return Result.createSuccessMessage("查询轮播图成功", banners);
    }

    @ApiOperation("新增轮播图")
    @BrezeLog("新增轮播图")
    @PostMapping("/insert")
    public Result<String> insert(@Validated @RequestBody Banner banner) {
        return judgeResult(bannerService.save(banner));

    }

    @ApiOperation("修改轮播图")
    @BrezeLog("修改轮播图")
    @PostMapping("/update")
    public Result<String> update(@Validated @RequestBody Banner banner) {
        return judgeResult(bannerService.updateById(banner));
    }
    @ApiOperation("上传轮播图")
    @BrezeLog("上传轮播图")
    @PostMapping("/upload")
    public Result<String> upload(@RequestParam String alt, @RequestParam Integer orderNum, @RequestParam MultipartFile file){
        return judgeResult(bannerService.insertBanner(alt,orderNum,file));
    }

    @ApiOperation("删除轮播图")
    @BrezeLog("删除轮播图")
    @PostMapping("/delete")
    public Result<String> delete(@RequestBody String url) throws QiniuException {
        return judgeResult(bannerService.deleteBanner(url));
    }

}
