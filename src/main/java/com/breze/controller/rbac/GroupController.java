package com.breze.controller.rbac;


import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Group;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 前端控制器
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
    public Result selectAll() {
        return Result.createSuccessMessage(groupService.findAll());
    }

    @GetMapping("/select/{id}")
    public Result selectById(@PathVariable Long id) {
        // 2022/9/23 15:23 TODO: Should Be ReWrite UP BY LUCIFER-LGX
        return Result.createSuccessMessage(groupService.findById(id));
    }

    @PostMapping("/insert")
    public Result insert(@RequestBody Group group) {
        groupService.insert(group);
        return Result.createSuccessMessage(group);
    }

    @PostMapping("/update")
    public Result update(@RequestBody Group group) {
        groupService.update(group);
        return Result.createSuccessMessage(group);
    }

    @PostMapping("/delete/{id}")
    public Result deleteById(@PathVariable Long id) {
        groupService.delete(id);
        return Result.createSuccessMessage("删除部门成功");
    }

}
