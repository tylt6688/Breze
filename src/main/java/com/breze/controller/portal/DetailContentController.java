package com.breze.controller.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.dto.portal.DetailContentDTO;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import com.breze.entity.vo.portal.DetailContentVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author chenweixi
 * @create 2023-09-05 14:44
 * @Description 详细内容控制器
 * @Copyright(c) 2023, 青枫网络工作室
 */
@Log4j2
@Api(tags = "门户详细内容管理")
@RestController
@RequestMapping("/breze/portal/detailContent")
public class DetailContentController extends BaseController {

    @ApiOperation("分页获取详细内容信息")
    @BrezeLog("分页获取详细内容信息")
    @GetMapping("/page")
    public Result<Page<DetailContentVO>> findPage(Long parentId, Long contentId) {
        Page<DetailContentVO> contentIntroduceVoPage = detailContentService.getDetailContentPage(getPage(),contentId,parentId);
        return Result.createSuccessMessage("分页获取内容信息成功", contentIntroduceVoPage);
    }

    @ApiOperation("根据id获取内容模块信息")
    @BrezeLog("根据id获取内容模块信息")
    @GetMapping("/info/{id}")
    public Result<DetailContentVO> getContentById(@PathVariable Long id) {
        DetailContentVO detailContentVO = detailContentService.getContentById(id);
        return Result.createSuccessMessage("获取内容信息成功", detailContentVO);
    }

    @ApiOperation("根据ContentId获取内容模块信息")
    @BrezeLog("根据ContentId获取内容模块信息")
    @GetMapping("/get_content_by_id/{contentId}")
    public Result<List<DetailContentVO>> getInfoByContentId(@PathVariable Long contentId) {
        List<DetailContentVO> detailContentVOS = detailContentService.getInfoByContentId(contentId);
        return Result.createSuccessMessage("获取内容信息成功", detailContentVOS);
    }
    @ApiOperation("新增内容和修改内容(含图片)")
    @BrezeLog("新增内容和修改内容(含图片)")
    @PostMapping("/insert")
    public Result<String> insertContent(@RequestPart("editData") DetailContentDTO detailContentDTO, @RequestParam("file") MultipartFile file){
        return brezeJudgeResult(detailContentService.insertContent(detailContentDTO,file));
    }

    @ApiOperation("更新内容(不含图片)")
    @BrezeLog("更新内容(不含图片)")
    @PostMapping("/update")
    public Result<String> updateContent(@Validated @RequestBody DetailContentDTO detailContentDTO) {
        return brezeJudgeResult(detailContentService.updateContent(detailContentDTO));
    }

    @ApiOperation("删除内容")
    @BrezeLog("删除内容")
    @PostMapping("/delete")
    public Result<String> deleteContent(@Validated @RequestBody DetailContentDTO detailContentDTO){
        return brezeJudgeResult(detailContentService.deleteContent(detailContentDTO));
    }

}
