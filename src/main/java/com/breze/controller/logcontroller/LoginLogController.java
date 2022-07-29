package com.breze.controller.logcontroller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.pojo.logdo.LoginLog;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@RestController
@RequestMapping("/loginlog")
public class LoginLogController extends BaseController {

    @RequestMapping("/list")
    public Result list() {
        Page<LoginLog> pageData = loginLogService.page(getPage(),new QueryWrapper<LoginLog>().orderByDesc("create_time"));
        pageData.getRecords().forEach(loginLog -> {
            loginLog.setUserName(userService.getById(loginLog.getUserId()).getUsername());
            loginLog.setTrueName(userService.getById(loginLog.getUserId()).getTruename());
        });
        return Result.createSuccessMessage(pageData);
    }

}
