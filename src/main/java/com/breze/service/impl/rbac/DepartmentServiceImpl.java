package com.breze.service.impl.rbac;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.entity.pojo.rbac.Department;
import com.breze.mapper.rbac.DepartmentMapper;
import com.breze.service.rbac.DepartmentService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    private List<Department> buildTreeDepartment(List<Department> departments) {
        List<Department> finalMenus = new ArrayList<>();
        // 先各自寻找到各自的孩子
        for (Department department : departments) {
            // 提取出父节点
            if (department.getParentId() == 0L) {
                finalMenus.add(department);
            }
            for (Department e : departments) {
                if (department.getId().equals(e.getParentId())) {
                    department.getChildren().add(e);
                }
            }
        }
        return finalMenus;
    }

    @Override
    public List<Department> tree() {
        List<Department> departments = this.list();
        return buildTreeDepartment(departments);
    }
}
