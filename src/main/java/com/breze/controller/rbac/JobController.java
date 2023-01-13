package com.breze.controller.rbac;

import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Job;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/10 10:45
 * @Description 岗位管理
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(tags = "岗位管理")
@RestController
@RequestMapping("/sys/job")
public class JobController extends BaseController {
    @ApiOperation(value = "查询全部岗位信息", notes = "用于不分页情况下展示")
    @BrezeLog("查询全部岗位信息")
    @GetMapping("/select")
    public Result<List<Job>> selectAll() {
        List<Job> jobs = jobService.findAll();
        return Result.createSuccessMessage("", jobs);
    }

    @ApiOperation(value = "通过JobId查询岗位信息", notes = "单个信息展示")
    @BrezeLog("通过JobId查询岗位信息")
    @GetMapping("/select/{id}")
    public Result<Job> selectJobById(@PathVariable Long id) {
        Job job = jobService.findByJobId(id);
        return Result.createSuccessMessage("查询岗位成功", job);
    }

    @ApiOperation(value = "新增岗位信息", notes = "用于新增岗位信息")
    @BrezeLog("新增岗位信息")
    @PostMapping("/insert")
    public Result<String> insert(@RequestBody Job job) {
        jobService.insert(job);
        return Result.createSuccessMessage("插入岗位成功");
    }

    @ApiOperation(value = "更新岗位信息", notes = "用于更新岗位信息")
    @BrezeLog("更新岗位信息")
    @PutMapping("/update")
    public Result<String> update(@RequestBody Job job) {
        jobService.update(job);
        return Result.createSuccessMessage("更新岗位成功");
    }

    @ApiOperation(value = "删除岗位信息", notes = "用于删除岗位信息")
    @BrezeLog("删除岗位信息")
    @DeleteMapping("/delete")
    public Result<String> deleteById(@RequestParam Long id) {
        try {
            jobService.delete(id);
            return Result.createSuccessMessage("删除岗位成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }

    }

}
