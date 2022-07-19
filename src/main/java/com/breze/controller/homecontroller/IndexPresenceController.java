package com.breze.controller.homecontroller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.homepojo.IndexPresence;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-16
 */
@RestController
@RequestMapping("/presence")
public class IndexPresenceController extends BaseController {
    @GetMapping("/select")
    public Result selectAll(){
        Page<IndexPresence> pageData = indexPresenceService.page(getPage(),new QueryWrapper<IndexPresence>().select().orderByDesc("created"));
        return Result.createSuccessMessage("",pageData);
    }
}
