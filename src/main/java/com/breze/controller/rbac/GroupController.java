package com.breze.controller.rbac;


import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.pojo.rbac.Group;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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

    @ApiOperation(value = "获取全部部门列表")
    @BrezeLog("获取全部部门列表")
    @GetMapping("/select")
    public Result<List<Group>> selectAll() {
        return Result.createSuccessMessage("查询部门成功", groupService.findAll());
    }

    @ApiOperation(value = "获取单个部门信息")
    @BrezeLog("获取单个部门信息")
    @GetMapping("/select/{id}")
    public Result<Group> selectById(@PathVariable Long id) {
        return Result.createSuccessMessage("查询单个部门成功", groupService.findById(id));
    }

    @ApiOperation(value = "新增部门", notes = "新增部门")
    @BrezeLog("新增部门")
    @PostMapping("/insert")
    public Result<String> insert(@RequestBody Group group) {
        groupService.insert(group);
        return Result.createSuccessMessage("新增部门成功");
    }

    @ApiOperation(value = "更新部门", notes = "更新部门")
    @BrezeLog("更新部门")
    @PutMapping("/update")
    public Result<String> update(@RequestBody Group group) {
        groupService.update(group);
        return Result.createSuccessMessage("更新部门成功");
    }

    @ApiOperation(value = "删除部门", notes = "删除部门")
    @BrezeLog("删除部门")
    @DeleteMapping("/delete")
    public Result<String> deleteById(@RequestParam Long id) {
        groupService.delete(id);
        return Result.createSuccessMessage("删除部门成功");
    }

}
