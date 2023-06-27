package com.breze.controller.portal;


import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.portal.BannerDTO;
import com.breze.entity.vo.portal.BannerVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

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
    public Result<BannerVO> getBannerInfo(@PathVariable Long id) {
        BannerVO bannerVO = bannerService.getBannerById(id);
        return Result.createSuccessMessage("获取轮播图信息成功", bannerVO);
    }

    @ApiOperation("获取轮播图排序信息")
    @BrezeLog("获取轮播图排序信息")
    @GetMapping("/select")
    public Result<List<BannerVO>> select() {
        List<BannerVO> bannerVOList = bannerService.listOrderByDesc();
        return Result.createSuccessMessage("查询轮播图成功", bannerVOList);
    }

    @ApiOperation("修改轮播图")
    @BrezeLog("修改轮播图")
    @PostMapping("/update")
    public Result<String> update(@Validated @RequestBody BannerDTO bannerDTO) {
        return brezeJudgeResult(bannerService.updateBanner(bannerDTO));
    }
    @ApiOperation("上传轮播图")
    @BrezeLog("上传轮播图")
    @PostMapping("/upload")
    public Result<String> upload(@RequestParam String alt, @RequestParam Integer orderNum, @RequestParam MultipartFile file){
        return brezeJudgeResult(bannerService.insertBanner(alt,orderNum,file));
    }

    @ApiOperation("删除轮播图")
    @BrezeLog("删除轮播图")
    @PostMapping("/delete")
    public Result<String> delete(@RequestBody String url) {
        return brezeJudgeResult(bannerService.deleteBanner(url));
    }

}
