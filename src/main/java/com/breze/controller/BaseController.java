package com.breze.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.consts.GlobalConstant;
import com.breze.config.OssConfig;
import com.breze.service.portal.BannerService;
import com.breze.service.portal.MainContentService;
import com.breze.service.portal.ModeCardService;
import com.breze.service.portal.NavbarService;
import com.breze.service.rbac.*;
import com.breze.service.syslog.HandleLogService;
import com.breze.service.syslog.LoginLogService;
import com.breze.service.tool.MailService;
import com.breze.service.tool.OssFileService;
import com.breze.service.tool.QiNiuService;
import com.breze.utils.RedisUtil;
import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.ServletRequestUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author tylt6688
 * @Date 2022/3/2 22:08
 * @Description Controller基类，其它 Controller都需继承此类，公共服务组件在此集体注入，方便后续统一调用
 * @Copyright(c) 2022 , 青枫网络工作室
 */

public class BaseController {

    /**
     * 配置类注入
     */
    @Autowired
    protected OssConfig ossConfig;

    //===============================Breze=================================//

    /**
     * 工具类注入
     */
    @Autowired
    protected BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    protected RedisUtil redisUtil;

    //===============================Breze=================================//

    /**
     * RabbitMQ 队列服务注入
     */

    @Autowired
    protected Producer producer;

    //===============================Breze=================================//

    /**
     * 通用型服务注入
     */
    @Autowired
    protected QiNiuService qiNiuService;
    @Autowired
    protected OssFileService ossFileService;
    @Autowired
    protected MailService mailService;

    //===============================Breze=================================//

    /**
     * 系统日志类注入
     */
    @Autowired
    protected LoginLogService loginLogService;
    @Autowired
    protected HandleLogService handleLogService;

    //===============================Breze=================================//
    /**
     * RBAC权限服务注入
     */

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
    protected GroupService groupService;
    @Autowired
    protected JobService jobService;
    @Autowired
    protected GroupJobService groupJobService;
    @Autowired
    protected UserGroupJobService userGroupJobService;

    //===============================Breze=================================//

    /**
     * Portal门户服务注入
     */
    @Autowired
    protected BannerService bannerService;
    @Autowired
    protected NavbarService navbarService;
    @Autowired
    protected MainContentService mainContentService;
    @Autowired
    protected ModeCardService modeCardService;

    //===============================Breze=================================//

    /**
     * MyBatis-Plus分页方法自定义
     */
    @Autowired
    HttpServletRequest request;

    /**
     * 自定义泛型分页数据方法,用于Get方式查询显示
     */
    public <T> Page<T> getPage() {
        // 当前页的页码，默认第 1 页
        int current = ServletRequestUtils.getIntParameter(request, "current", GlobalConstant.CURRENT);
        // 每页显示的条数，默认每页 10 条数据
        int size = ServletRequestUtils.getIntParameter(request, "size", GlobalConstant.SIZE);

        return new Page<>(current, size);
    }

}

//===============================Breze=================================//