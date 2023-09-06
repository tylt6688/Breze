package com.breze.controller.rbac;

import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.converter.sys.JobConvert;
import com.breze.entity.dto.sys.JobDTO;
import com.breze.entity.pojo.rbac.Job;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
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
    @ApiImplicitParam(name = "name", value = "岗位名称", required = true, dataType = "String", dataTypeClass = String.class)
    @BrezeLog("查询全部岗位信息")
    @GetMapping("/select")
    public Result<List<Job>> selectAll(@ApiParam("部门名称") @RequestParam String name) {
        return Result.createSuccessMessage("", jobService.findAll(name));
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
    public Result<String> insert(@RequestBody JobDTO jobDTO) {
        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
        return brezeJudgeResult(jobService.insert(job), "新增岗位成功", "新增岗位失败");
    }

    @ApiOperation(value = "更新岗位信息", notes = "用于更新岗位信息")
    @BrezeLog("更新岗位信息")
    @PutMapping("/update")
    public Result<String> update(@RequestBody JobDTO jobDTO) {
        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
        return brezeJudgeResult(jobService.update(job), "更新岗位成功", "更新岗位失败");
    }

    @ApiOperation(value = "删除岗位信息", notes = "用于删除岗位信息")
    @BrezeLog("删除岗位信息")
    @DeleteMapping("/delete")
    public Result<String> deleteById(@RequestParam Long id) {
        return brezeJudgeResult(jobService.delete(id), "删除岗位成功", "删除岗位失败");

    }

}
