package com.breze.entity.mapstruct;

import com.breze.entity.dto.UserDTO;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.rbac.UserGroupJob;
import com.breze.entity.vo.UserInfoVo;
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
    UserInfoVo userToUserInfoVo(User user);


    @Mappings({})
    User userDTOToUser(UserDTO userDTO);

    @Mappings({
            @Mapping(target = "id", ignore = true),
            @Mapping(source = "id", target = "userId"),
            @Mapping(source = "jobId", target = "jobId")
    })
    UserGroupJob userDTOToUserGroupJob(UserDTO userDTO);

    @Mappings({
            @Mapping(target = "id", ignore = true),
            @Mapping(source = "groupId", target = "groupId"),
            @Mapping(source = "jobId", target = "jobId")
    })
    GroupJob userDTOToGroupJob(UserDTO userDTO);

}
