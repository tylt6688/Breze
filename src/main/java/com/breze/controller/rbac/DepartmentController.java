package com.breze.controller.rbac;


import com.breze.common.result.Result;
import com.breze.controller.core.BaseController;
import com.breze.entity.pojo.rbac.Department;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@RestController
@RequestMapping("/department")
public class DepartmentController extends BaseController {

    @GetMapping("/select")
    public Result selectAll(){
        List<Department> tree = departmentService.tree();
        return Result.createSuccessMessage(tree);
    }


}
