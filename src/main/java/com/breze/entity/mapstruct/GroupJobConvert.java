package com.breze.entity.mapstruct;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface GroupJobConvert {

    GroupJobConvert INSTANCE = Mappers.getMapper(GroupJobConvert.class);
}