package com.breze.converter.sys;

import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.vo.sys.TabVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2023/1/12 17:02
 * @Description MenuConvert实体转化
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface MenuConvert {

    MenuConvert INSTANT = Mappers.getMapper(MenuConvert.class);

    @Mappings({
            @Mapping(source = "parentTitle", target = "parentTitle")
    })
    TabVO menuToTabVO(Menu menu);

    @Mappings({})
    Menu menuDTOToMenu(MenuDTO menuDTO);

    List<TabVO> menusTotabVOList(List<Menu> menus);

}
