package com.breze.controller.homecontroller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.homepojo.IndexNews;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-04-16
 */
@RestController
@RequestMapping("/news")
public class IndexNewsController extends BaseController {

    @GetMapping("/select")
    public Result selectAll(){
        Page<IndexNews> pageData = indexNewsService.page(getPage(),new QueryWrapper<IndexNews>().select().orderByDesc("created"));
        return Result.createSuccessMessage("",pageData);
    }

}
