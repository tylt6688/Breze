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
        return Result.createSuccessMessage("查询部门成功",groupService.findAll());
    }

    @GetMapping("/select/{id}")
    public Result selectById(@PathVariable Long id) {
        return Result.createSuccessMessage("查询单个部门成功",groupService.findById(id));
    }

    @PostMapping("/insert")
    public Result insert(@RequestBody Group group) {
        groupService.insert(group);
        return Result.createSuccessMessage("新增部门成功");
    }

    @PostMapping("/update")
    public Result update(@RequestBody Group group) {
        groupService.update(group);
        return Result.createSuccessMessage("更新部门成功");
    }

    @PostMapping("/delete/{id}")
    public Result deleteById(@PathVariable Long id) {
        groupService.delete(id);
        return Result.createSuccessMessage("删除部门成功");
    }

}
