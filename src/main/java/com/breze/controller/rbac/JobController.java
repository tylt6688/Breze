package com.breze.controller.rbac;

import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Job;
import io.swagger.annotations.Api;
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

    @GetMapping("/select")
    public Result selectAll(){
        List<Job> jobs = jobService.findAll();
        return Result.createSuccessMessage("",jobs);
    }
    @PostMapping("/select")
    public Result selectJobById(@RequestBody Job job) {
        if (job.getId() != null) {
            Job j = jobService.findByJobId(job.getId());
            return Result.createSuccessMessage("",j);
        } else {
            List<Job> jobs = jobService.findByJobName(job.getName());
            return Result.createSuccessMessage("",jobs);
        }
    }

    @PostMapping("/insert")
    public Result insert(@RequestBody Job job) {
        jobService.insert(job);
        return Result.createSuccessMessage("",job);
    }

    @PostMapping("/update")
    public Result update(@RequestBody Job job) {
        jobService.update(job);
        return Result.createSuccessMessage("",job);
    }

    @DeleteMapping("/delete")
    public Result deleteById(@RequestParam Long id) {
        try {
            jobService.delete(id);
            return Result.createSuccessMessage("删除岗位成功");
        }catch (Exception e) {
            throw new BusinessException(ErrorEnum.FindException);
        }

    }

}
