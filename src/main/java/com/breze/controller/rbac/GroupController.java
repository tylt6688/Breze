package com.breze.controller.rbac;


import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Group;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@Api(tags = "部门管理")
@RestController
@RequestMapping("/sys/group")
public class GroupController extends BaseController {

    @GetMapping("/select")
    public Result selectAll(){
        List<Group> tree = groupService.tree();
        return Result.createSuccessMessage(tree);
    }


}
