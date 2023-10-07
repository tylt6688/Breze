package com.breze.mapper.portal;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.pojo.portal.ContentIntroduce;
import com.breze.entity.pojo.portal.DetailContent;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * 主体内容表 Mapper 接口
 * </p>
 *
 * @author leochan
 * @since 2022-10-08
 */
@Mapper
public interface DetailContentMapper extends BaseMapper<DetailContent> {

}
