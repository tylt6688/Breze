package com.breze.entity.mapstruct;

import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.UserInfoVo;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface UserInfoConvert {

    UserInfoConvert INSTANCE = Mappers.getMapper(UserInfoConvert.class);

    @Mapping(source = "username", target = "username")
    UserInfoVo userToUserInfoVo(User user);

}
