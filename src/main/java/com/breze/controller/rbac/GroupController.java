package com.breze.controller.rbac;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.converter.sys.GroupConvert;
import com.breze.entity.dto.sys.GroupDTO;
import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.vo.sys.ParentGroupVO;
import io.swagger.annotations.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022-03-25
 * @Discription 部门团队前端控制器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Api(value = "部门团队", tags = "部门团队管理")
@RestController
@RequestMapping("/sys/group")
public class GroupController extends BaseController {

    @ApiOperation(value = "获取全部部门列表")
    @ApiImplicitParam(name = "name", value = "部门名称", required = true, dataType = "String", dataTypeClass = String.class)
    @BrezeLog("获取全部部门列表")
    @GetMapping("/select")
    public Result<List<Group>> selectAll(@ApiParam("部门名称") @RequestParam String name) {
        return Result.createSuccessMessage("查询部门成功", groupService.findAll(name));
    }

    @ApiOperation(value = "获取所有父节点")
    @BrezeLog("获取所有父节点")
    @GetMapping("/getGroupParent")
    public Result<List<ParentGroupVO>> getGroupParent() {
        return Result.createSuccessMessage("查询成功", groupService.getGroupParent());
    }

    @ApiOperation(value = "获取单个部门信息")
    @ApiImplicitParam(name = "ID", value = "部门ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("获取单个部门信息")
    @GetMapping("/select/{id}")
    public Result<Group> selectById(@ApiParam("部门ID") @PathVariable Long id) {
        return Result.createSuccessMessage("查询单个部门成功", groupService.findById(id));
    }

    @ApiOperation(value = "新增部门", notes = "新增部门", httpMethod = "POST")
    @ApiResponses({
            @ApiResponse(code = 200, message = "OK丨新增部门成功"),
            @ApiResponse(code = 500, message = "ERROR丨新增部门失败")
    })
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", value = "新增部门名称", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "parentId", value = "新增部门名称", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "state", value = "状态", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "remark", value = "备注", required = false, dataType = "String",dataTypeClass = String.class)
    })
    @BrezeLog("新增部门")
    @PostMapping("/insert")
    public Result<String> insert(@RequestBody GroupDTO groupDTO) {
        Group group = GroupConvert.INSTANCE.groupDTOToGroup(groupDTO);
        group.setId(groupDTO.getId());
        if (groupService.insert(group)) {
            return Result.createSuccessMessage("新增部门成功");
        }
        return Result.createSuccessMessage("部门名称重复");
    }

    @ApiOperation(value = "更新部门", notes = "更新部门")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", value = "新增部门名称", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "parentId", value = "新增部门名称", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "state", value = "状态", required = true, dataType = "String",dataTypeClass = String.class),
            @ApiImplicitParam(name = "remark", value = "备注", required = false, dataType = "String",dataTypeClass = String.class)
    })
    @BrezeLog("更新部门")
    @PutMapping("/update")
    public Result<String> update(@RequestBody GroupDTO groupDTO) {
        Group group = GroupConvert.INSTANCE.groupDTOToGroup(groupDTO);
        if (groupService.update(group)) {
            return Result.createSuccessMessage("更新部门成功");
        }
        return Result.createSuccessMessage("部门已存在");
    }

    @ApiOperation(value = "删除部门", notes = "删除部门")
    @ApiImplicitParam(name = "ID", value = "部门ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    @BrezeLog("删除部门")
    @DeleteMapping("/delete")
    public Result<String> deleteById(@RequestParam Long id) {
        if (0 < groupJobService.count(new QueryWrapper<GroupJob>().eq("group_id", id))) {
            return Result.createSuccessMessage("删除部门失败--");
        }
        if (0 < groupService.count(new QueryWrapper<Group>().eq("parent_id", id))) {
            return Result.createSuccessMessage("删除部门失败, 子部门存在");
        }
        groupService.delete(id);
        return Result.createSuccessMessage("删除部门成功");
    }

    @ApiOperation(value = "关联岗位", notes = "用于关联岗位")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupId", value = "部门ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "jobId", value = "岗位ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    })
    @BrezeLog("关联岗位")
    @PostMapping("/bind/insert")
    public Result<String> bindJob(@RequestBody GroupJob groupjob){
        if (groupJobService.insert(groupjob)) {
            return Result.createSuccessMessage("关联部门成功");
        }
        return Result.createSuccessMessage("关联部门失败");
    }

    @ApiOperation(value = "解除关联", notes = "用于解除关联岗位")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupId", value = "部门ID", required = true, dataType = "Long", dataTypeClass = Long.class),
            @ApiImplicitParam(name = "jobId", value = "岗位ID", required = true, dataType = "Long", dataTypeClass = Long.class)
    })
    @BrezeLog("解除关联")
    @DeleteMapping("/bind/delete")
    public Result<String> unbindJob(@RequestBody GroupJob groupjob){
        if (groupJobService.delete(groupjob)) {
            return Result.createSuccessMessage("解除关联成功");
        }
        return Result.createSuccessMessage("解除关联失败");
    }

}
