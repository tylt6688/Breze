package com.breze.converter.sys;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.bo.sys.UserExcelBO;
import com.breze.entity.dto.sys.UserDTO;
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.UserInfoVO;
import com.breze.entity.vo.sys.UserVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2023/1/12 17:02
 * @Description UserConvert 实体转化
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Mapper
public interface UserConvert {

    UserConvert INSTANCE = Mappers.getMapper(UserConvert.class);

    /**
     * User 转为 UserVO
     *
     * @param user User实体
     * @return UserVO
     */
    UserVO userToUserVO(User user);

    /**
     * Page<User> 转为 Page<UserVO>
     *
     * @param userPage Page<User>对象
     * @return Page<UserVO>
     */
    Page<UserVO> userToUserVO(Page<User> userPage);

    /**
     * User 转为 UserInfoVO
     *
     * @param user User实体
     * @return UserInfoVO
     */
    @Mappings({
            @Mapping(source = "username", target = "username"),
    })
    UserInfoVO userToUserInfoVo(User user);

    /**
     * UserDTO 转为 User
     *
     * @param userDTO UserDTO实体
     * @return User
     */
    User userDTOToUser(UserDTO userDTO);

    /**
     * List<UserDTO> 转为 List<User>
     *
     * @param userDTO List<UserDTO>
     * @return List<User>
     */
    List<User> userDTOToUser(List<UserDTO> userDTO);

    /**
     * List<User> 转为 List<UserExcelBO>
     *
     * @param list List<User>
     * @return List<UserExcelBO>
     */
    List<UserExcelBO> userListToUserExcelBOLost(List<User> list);

}
