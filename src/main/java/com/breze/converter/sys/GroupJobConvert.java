package com.breze.converter.sys;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author tylt6688
 * @Date 2023/1/12 17:02
 * @Description GroupJobConvert实体转化
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface GroupJobConvert {
    GroupJobConvert INSTANCE = Mappers.getMapper(GroupJobConvert.class);
}
