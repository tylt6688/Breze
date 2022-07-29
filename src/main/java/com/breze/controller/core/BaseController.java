package com.breze.controller.core;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.consts.GlobalConstant;
import com.breze.config.JwtConfig;
import com.breze.config.OssConfig;
import com.breze.service.homeservice.*;
import com.breze.service.logservice.HandleLogService;
import com.breze.service.logservice.LoginLogService;
import com.breze.service.rbac.*;
import com.breze.service.tool.MailService;
import com.breze.service.tool.OssfileService;
import com.breze.service.tool.QiNiuService;
import com.breze.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.ServletRequestUtils;

import javax.servlet.http.HttpServletRequest;

/*
 * @Author tylt
 * @Description Controller基类，其它Controller都需继承此类，公共服务组件在此集体注入，方便后续统一调用
 * @Date 2022/3/2 22:08
 **/

public class BaseController {

    // 配置类注入 Start
    @Autowired
    protected OssConfig ossConfig;
    @Autowired
    protected JwtConfig jwtConfig;
    // 配置类注入 End

    /**********************************************************************************************************************************/

    // 工具类注入 Start
    @Autowired
    protected BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    protected RedisUtil redisUtil;

    // 工具类注入 End

    /**********************************************************************************************************************************/


    // 通用型服务注入 Start
    @Autowired
    protected QiNiuService qiNiuService;
    @Autowired
    protected OssfileService ossfileService;
    @Autowired
    protected MailService mailService;
    // 通用型服务注入 End

    /**********************************************************************************************************************************/


    // 日志类业务注入 Start
    @Autowired
    protected LoginLogService loginLogService;
    @Autowired
    protected HandleLogService handleLogService;
    // 日志类业务注入 End

    /**********************************************************************************************************************************/

    // RBAC权限服务注入 Start
    @Autowired
    protected UserService userService;
    @Autowired
    protected RoleService roleService;
    @Autowired
    protected MenuService menuService;
    @Autowired
    protected UserRoleService userRoleService;
    @Autowired
    protected RoleMenuService roleMenuService;
    @Autowired
    protected DepartmentService departmentService;
    // RBAC权限服务注入 End

    /**********************************************************************************************************************************/

    // 业务型服务注入 Start
    @Autowired
    protected BannerService bannerService;
    @Autowired
    protected IndexNewsService indexNewsService;
    @Autowired
    protected IndexNotifyService indexNotifyService;
    @Autowired
    protected IndexPresenceService indexPresenceService;
    @Autowired
    protected IndexThoughtService indexThoughtService;

    // 业务型服务注入 End

    /**********************************************************************************************************************************/

    /**
     * TODO MyBatis-Plus分页方法自定义
     */
    @Autowired
    protected HttpServletRequest request;

    // 自定义泛型分页数据方法
    public <T> Page<T> getPage() {
        // 当前页的页码，默认第一页
        int current = ServletRequestUtils.getIntParameter(request, "current", GlobalConstant.CURRENT);
        // 每页显示的条数，设定每页10条数据
        int size = ServletRequestUtils.getIntParameter(request, "size", GlobalConstant.SIZE);
        return new Page<>(current, size);
    }
}
