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

    /**
     * User 转为 UserVO
     *
     * @param user User实体
     * @return UserVO UserVO实体
     */
    @Mappings({})
    UserVO userToUserVO(User user);

    /**
     * Page<User> 转为 Page<UserVO>
     *
     * @param userPage Page<User>对象
     * @return Page<UserVO> Page<UserVO>对象
     */
    @Mappings({})
    Page<UserVO> userPageToUserVOPage(Page<User> userPage);

    /**
     * User 转为 UserInfoVO
     *
     * @param user User实体
     * @return UserInfoVO UserInfoVO实体
     */
    @Mappings({
            @Mapping(source = "username", target = "username")
    })
    UserInfoVO userToUserInfoVo(User user);

    /**
     * UserDTO 转为 User
     *
     * @param userDTO UserDTO实体
     * @return User User实体
     */
    @Mappings({})
    User userDTOToUser(UserDTO userDTO);


}
