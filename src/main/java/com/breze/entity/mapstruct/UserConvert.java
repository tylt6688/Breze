package com.breze.entity.mapstruct;

import com.breze.entity.dto.UserDTO;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.pojo.rbac.UserGroupJob;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/9/16 14:50
 * @Description 用户转换器
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper(componentModel = "spring")
public interface UserConvert {

    UserConvert INSTANCE = Mappers.getMapper(UserConvert.class);

    @Mappings({})
    User from(UserDTO userDTO);

    @Mappings({})
    UserDTO from(User user);

    @Mappings({
            @Mapping(target = "id", ignore = true),
            @Mapping(source = "id", target = "userId"),
            @Mapping(source = "jobId", target = "jobId")
    })
    UserGroupJob UJfrom(UserDTO userDTO);

    @Mappings({
            @Mapping(target = "id", ignore = true),
            @Mapping(source = "groupId", target = "groupId"),
            @Mapping(source = "jobId", target = "jobId")
    })
    GroupJob GJfrom(UserDTO userDTO);
}
