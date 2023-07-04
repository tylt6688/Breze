package com.breze.controller.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.converter.sys.JobConvert;
import com.breze.entity.dto.sys.JobDTO;
import com.breze.entity.pojo.rbac.GroupJob;
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


//    // TODO 新增接口 模糊搜索 [抄送人: LGX 待办人: ChenWX 2023-03-23]
//    // DESC: id\name\stats\remark 有一个属性不为空即可搜索成功 [修改后请删除该行]
//    @ApiOperation(value = "模糊搜索岗位", notes = "用于不分页情况下展示")
//    @BrezeLog("模糊搜索岗位")
//    @PostMapping("/searchOr")
//    public Result<List<Job>> searchOr(@RequestBody JobDTO jobDTO) {
//        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
//        List<Job> jobs = jobService.searchOr(job);
//        return Result.createSuccessMessage("查询岗位成功", jobs);
//    }
//
//    // TODO 新增接口 精确搜索 [抄送人: LGX 待办人: ChenWX 2023-03-23]
//    // DESC: id\name\stats\remark 四种属性 全! 不! 为! 空! 即可搜索成功 [修改后请删除该行]
//    @ApiOperation(value = "精确搜索岗位", notes = "用于不分页情况下展示")
//    @BrezeLog("精确搜索岗位")
//    @PostMapping("/searchAnd")
//    public Result<List<Job>> searchAnd(@RequestBody JobDTO jobDTO) {
//        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
//        List<Job> jobs = jobService.searchAnd(job);
//        return Result.createSuccessMessage("查询岗位成功", jobs);
//    }

    @ApiOperation(value = "新增岗位信息", notes = "用于新增岗位信息")
    @BrezeLog("新增岗位信息")
    @PostMapping("/insert")
    public Result<String> insert(@RequestBody JobDTO jobDTO) {
        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
        if (jobService.insert(job)) {
            return Result.createSuccessMessage("插入岗位成功");
        }
        // TODO ERROR替换 [抄送人: LGX 待办人: tylt6688 2023-03-23]
        return Result.createSuccessMessage("岗位名称重复");
    }

    @ApiOperation(value = "更新岗位信息", notes = "用于更新岗位信息")
    @BrezeLog("更新岗位信息")
    @PutMapping("/update")
    public Result<String> update(@RequestBody JobDTO jobDTO) {
        Job job = JobConvert.INSTANCE.jobDTOToJob(jobDTO);
        if (jobService.update(job)) {
            return Result.createSuccessMessage("更新岗位成功");
        }
        // TODO ERROR替换 [抄送人: LGX 待办人: tylt6688 2023-03-23]
        return Result.createSuccessMessage("岗位已存在");
    }

    @ApiOperation(value = "删除岗位信息", notes = "用于删除岗位信息")
    @BrezeLog("删除岗位信息")
    @DeleteMapping("/delete")
    public Result<String> deleteById(@RequestParam Long id) {
        if (0 < groupJobService.count(new QueryWrapper<GroupJob>().eq("job_id", id))) {
            // TODO ERROR替换 [抄送人: LGX 待办人: tylt6688 2023-03-26]
            return Result.createSuccessMessage("删除岗位失败");
        }
        try {
            jobService.delete(id);
            return Result.createSuccessMessage("删除岗位成功");
        } catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }

    }

}
