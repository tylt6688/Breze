package com.breze.controller.portal;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.portal.ModeCard;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 模块展示表 前端控制器
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Log4j2
@Api(tags = "门户卡片管理")
@RestController
@RequestMapping("/breze/portal/modeCard")
public class ModeCardController extends BaseController {

    @ApiOperation("获取全部信息")
    @BrezeLog("获取全部信息")
    @GetMapping("/select")
    public Result select() {
        List<ModeCard> list = modeCardService.list();
        return Result.createSuccessMessage("查询模块信息成功", list);
    }

//    @Log("获取模块信息")
    @ApiOperation(value = "获取模块分页信息")
    @BrezeLog("获取模块分页信息")
    @ApiImplicitParam(name = "modeTitle", value = "模块标题", dataType = "String", dataTypeClass = String.class)
    @GetMapping("/findModeCardInfo")
    public Result findModeCardInfo(String modeTitle) {
        Page<ModeCard> modeCardPage = modeCardService.page(getPage(),new QueryWrapper<ModeCard>().eq(StrUtil.isNotBlank(modeTitle), "mode_title", modeTitle));
        return Result.createSuccessMessage("查询模块信息成功", modeCardPage);
    }
    @ApiOperation(value = "通过id查询")
    @BrezeLog("通过id查询")
    @GetMapping("/findDataById/{id}")
    public Result findDataById(@PathVariable Long id) {
        return Result.createSuccessMessage("查询成功",modeCardService.getById(id));
    }
    @ApiOperation(value = "新增模块")
    @BrezeLog("新增模块")
    @PostMapping("/insert")
    public Result insert(@Validated @RequestBody ModeCard modeCard) {
            return judgeResult(modeCardService.save(modeCard));
    }
    @ApiOperation(value = "编辑模块")
    @BrezeLog("编辑模块")
    @PostMapping("/update")
    public Result update(@Validated @RequestBody ModeCard modeCard) {
       return judgeResult( modeCardService.updateById(modeCard));
    }

    @ApiOperation(value = "删除模块")
    @BrezeLog("删除模块")
    @DeleteMapping("/deleteById/{id}")
    public Result deleteModeCard(@PathVariable Long id) {
       return judgeResult(modeCardService.removeById(id));
    }
}
