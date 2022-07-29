package com.breze.controller.logcontroller;


import com.breze.entity.pojo.logdo.HandleLog;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-06-23
 */
@RestController
@RequestMapping("/handlelog")
public class HandleLogController extends BaseController {

    @RequestMapping("/list")
    public Result list() {
        List<HandleLog> list = handleLogService.list();
        return Result.createSuccessMessage(list);
    }

}
