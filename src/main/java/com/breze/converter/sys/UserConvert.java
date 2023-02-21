package com.breze.converter.sys;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * @Author tylt6688
 * @Date 2023/1/12 17:02
 * @Description UserConvert实体转化
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface UserConvert {

    UserConvert INSTANCE = Mappers.getMapper(UserConvert.class);

    @Mappings({})
    UserVO userToUserVO(User user);

    @Mappings({})
    Page<UserVO> userPageToUserVOPage(Page<User> userPage);

    @Mappings({
            @Mapping(source = "username", target = "username")
    })
    UserInfoVO userToUserInfoVo(User user);

    @Mappings({})
    User userDTOToUser(UserDTO userDTO);




}
