package com.breze.controller.app;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.annotation.BrezeLog;
import com.breze.common.result.Result;
import com.breze.controller.BaseController;
import com.breze.entity.dto.app.AppConfigDTO;
import com.breze.entity.pojo.app.AppConfig;
import com.breze.entity.vo.app.AppConfigVO;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2023/12/12 14:08
 */
@RestController
@RequestMapping("/breze/app/config")
public class APPConfigController extends BaseController {

    @ApiOperation("新增App配置信息")
    @BrezeLog("新增App配置信息")
    @PostMapping("/insert")
    @PreAuthorize("hasAuthority('app:admin:insert')")
    public Result<String> insert(@Validated @RequestBody AppConfigDTO appConfigDTO) {
        return brezeJudgeResult(appConfigService.insert(appConfigDTO),"新增App配置成功","新增App配置失败");
    }

    @ApiOperation("删除App配置信息")
    @BrezeLog("删除App配置")
    @DeleteMapping("/delete")
    @PreAuthorize("hasAuthority('app:admin:delete')")
    public Result<String> delete(@RequestBody List<AppConfigDTO> appConfigDTOList) {
        return brezeJudgeResult(appConfigService.delete(appConfigDTOList),"删除App配置成功","删除App配置失败");
    }

    @ApiOperation("更新App配置信息")
    @BrezeLog("更新App配置信息")
    @PutMapping("/update")
    @PreAuthorize("hasAuthority('app:admin:update')")
    public Result<String> update(@Validated @RequestBody AppConfigDTO appConfigDTO) {
        return brezeJudgeResult(appConfigService.update(appConfigDTO),"App配置信息更新成功","App配置信息更新失败");
    }

    @ApiOperation("获取全部App配置列表，可多条件联合查询，实体属性值为空则显示全部")
    @BrezeLog("获取全部App配置列表")
    @PostMapping("/select")
//    @PreAuthorize("hasAuthority('app:admin:select')")
    public Result<List<AppConfig>> select(@RequestBody AppConfigDTO appConfigDTO) {
        Page<AppConfigVO> appConfigPage = appConfigService.getAppConfigPage(getPage(), appConfigDTO);
        return Result.createSuccessMessage("获取App配置列表成功", appConfigService.list());

    }

}
