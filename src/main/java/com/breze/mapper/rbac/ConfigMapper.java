package com.breze.mapper.rbac;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.pojo.core.Config;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * 系统参数配置表 Mapper 接口
 * </p>
 *
 * @author tylt6688
 * @since 2023-06-07
 */
@Mapper
public interface ConfigMapper extends BaseMapper<Config> {

}
