package com.breze.controller.homepage;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.homepage.IndexNotify;

import java.time.LocalDateTime;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-16
 */
@RestController
@RequestMapping("/notify")
public class IndexNotifyController extends BaseController {
    @GetMapping("/select")
    public Result selectAll() {
        Page<IndexNotify> pageData = indexNotifyService.page(getPage(), new QueryWrapper<IndexNotify>().select().orderByDesc("created"));
        return Result.createSuccessMessage("", pageData);
    }

    @GetMapping("/selectbyid/{id}")
    public Result selectById(@PathVariable("id") Integer id) {
        IndexNotify indexNotify = indexNotifyService.getById(id);
        return Result.createSuccessMessage("", indexNotify);
    }

    //根据title查询单个
    @GetMapping("/selectbytitle/{title}")
    public Result selectOne(@PathVariable String title) {
        IndexNotify indexNotify = indexNotifyService.getOne(new QueryWrapper<IndexNotify>().eq("title", title));
        return Result.createSuccessMessage("", indexNotify);
    }

    @Transactional
    @PostMapping("/insert")
//    @PreAuthorize("hasAuthority('sys:user:insert')")
    public Result insert(@Validated @RequestBody IndexNotify indexNotify) {
        indexNotify.setCreated(LocalDateTime.now());
        indexNotifyService.save(indexNotify);
        return Result.createSuccessMessage(indexNotify);
    }

    @Transactional
    @PostMapping("/update")
//    @PreAuthorize("hasAuthority('sys:user:update')")
    public Result update(@Validated @RequestBody IndexNotify indexNotify) {

        indexNotifyService.updateById(indexNotify);
        return Result.createSuccessMessage(indexNotify);
    }

    //根据title删除单个
    @Transactional
    @PostMapping("/delete/{title}")
//    @PreAuthorize("hasAuthority('sys:user:delete')")
    public Result delete(@PathVariable String title) {
        indexNotifyService.remove(new QueryWrapper<IndexNotify>().eq("title", title));
        return Result.createSuccessMessage("删除成功");
    }
}
