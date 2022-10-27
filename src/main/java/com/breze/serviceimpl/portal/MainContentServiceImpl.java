package com.breze.serviceimpl.portal;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import com.breze.entity.pojo.portal.Banner;
import com.breze.entity.pojo.portal.MainContent;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.pojo.tool.OssFile;
import com.breze.mapper.portal.MainContentMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.mapper.tool.OssfileMapper;
import com.breze.service.portal.MainContentService;
import com.breze.service.tool.OssFileService;
import com.breze.service.tool.QiNiuService;
import com.breze.serviceimpl.tool.OssFileServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import sun.applet.Main;

import java.util.Objects;

/**
 * <p>
 * 主体内容表 服务实现类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@DS("portal")
@Transactional
@Service
public class MainContentServiceImpl extends ServiceImpl<MainContentMapper, MainContent> implements MainContentService {

}
