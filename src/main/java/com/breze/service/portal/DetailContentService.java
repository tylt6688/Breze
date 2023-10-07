package com.breze.service.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.portal.ContentDTO;
import com.breze.entity.dto.portal.DetailContentDTO;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.portal.DetailContent;
import com.breze.entity.vo.portal.ContentIntroduceVO;
import com.breze.entity.vo.portal.DetailContentVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * <p>
 * 主体内容表 服务类
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
public interface DetailContentService extends IService<DetailContent> {

    Page<DetailContentVO> getDetailContentPage(Page<DetailContent> page, Long contentId, Long parentId);

    DetailContentVO getContentById(Long id);

    Boolean insertContent(DetailContentDTO detailContentDTO, MultipartFile file);

    Boolean updateContent(DetailContentDTO detailContentDTO);

    Boolean deleteContent(DetailContentDTO detailContentDTO);

    List<DetailContentVO> getInfoByContentId(Long contentId);
}
