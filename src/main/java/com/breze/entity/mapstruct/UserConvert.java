package com.breze.entity.mapstruct;

import com.breze.entity.dto.UserDTO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.UserInfoVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

@Mapper
public interface UserConvert {

    UserConvert INSTANCE = Mappers.getMapper(UserConvert.class);


    @Mappings({
            @Mapping(source = "username", target = "username")
    })
    UserInfoVO userToUserInfoVo(User user);

    @Mappings({})
    User userDTOToUser(UserDTO userDTO);




}
