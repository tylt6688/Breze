package com.breze.converter.portal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.breze.entity.dto.portal.NavbarDTO;
import com.breze.entity.pojo.portal.Navbar;
import com.breze.entity.vo.portal.NavbarTitleVO;
import com.breze.entity.vo.portal.NavbarVO;
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
    List<NavbarTitleVO> navbarListToTitleVoList(List<Navbar> navbarList);

    Page<NavbarVO> navbarPageToNavarPageVo(Page<Navbar> navbarPage);

    List<NavbarVO>  navbarListToNavbarVoList(List<Navbar> navbarList);

    Navbar navbarDTOToNavbar(NavbarDTO navbarDTO);

}
