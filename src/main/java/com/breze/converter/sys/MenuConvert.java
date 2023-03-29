package com.breze.converter.sys;

import com.breze.entity.dto.sys.MenuDTO;
import com.breze.entity.pojo.rbac.Menu;
import com.breze.entity.vo.sys.MenuVO;
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

    MenuConvert INSTANCE = Mappers.getMapper(MenuConvert.class);

    /**
     * Menu转为TabVO实体
     *
     * @param menu 菜单实体
     * @return TabVO 标签页显示实体
     */
    @Mappings({
            @Mapping(source = "parentTitle", target = "parentTitle")
    })
    TabVO menuToTabVO(Menu menu);

    /**
     * MenuDTO转为Menu实体
     *
     * @param menuDTO 菜单传输实体
     * @return Menu 菜单实体
     */
    @Mappings({})
    Menu menuDTOToMenu(MenuDTO menuDTO);

    /**
     * List<Menu>转为List<MenuVO>实体
     *
     * @param menus 菜单集合
     * @return List<MenuVO> MenuVO集合
     */

    List<MenuVO> menusToMenuVOList(List<Menu> menus);

    /**
     * List<Menu>转为List<MenuDTO>实体
     *
     * @param menus 菜单集合
     * @return List<MenuDTO> MenuDTO集合
     */
    List<MenuDTO> menusToMenuDTOList(List<Menu> menus);



    /**
     * List<Menu>转为List<TabVO>实体
     *
     * @param menus 菜单集合
     * @return List<TabVO> 标签集合
     */
    List<TabVO> menusToTabVOList(List<Menu> menus);

}
