package com.breze.entity.mapstruct.portal;

import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.portal.NavbarTitleVo;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @author chenweixi
 * @create 2022-10-18 15:52
 */
@Mapper
public interface NavbarConvert {

    NavbarConvert INSTANCE = Mappers.getMapper(NavbarConvert.class);

    @Mapping(source = "titleName", target = "titleName")
    List<NavbarTitleVo> NavbarListToTitleVo(List<Navbar> navbarList);
}
