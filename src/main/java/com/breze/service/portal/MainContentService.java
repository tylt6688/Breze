package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.pojo.portal.ContentIntroduce;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 * 主体内容表 服务类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
public interface MainContentService extends IService<ContentIntroduce> {

    Page<ContentIntroduce> getContentPage(Page<ContentIntroduce> getPage,String titleName, Long parentId);

    Boolean insertContent(ContentIntroduce contentIntroduce, MultipartFile file);

    Boolean deleteContent(ContentIntroduce contentIntroduce);
}
