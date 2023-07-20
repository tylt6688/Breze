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
     * MenuDTO转为Menu实体
     *
     * @param menuDTO 菜单传输实体
     * @return Menu
     */

    Menu menuDTOToMenu(MenuDTO menuDTO);

    /**
     * Menu 转为 MenuVO实体
     *
     * @param menu 菜单实体
     * @return MenuVO
     */
    MenuVO menuToMenuVO(Menu menu);

    /**
     * List<Menu>转为List<MenuVO>实体
     *
     * @param menus 菜单集合
     * @return List<MenuVO>
     */

    List<MenuVO> menuToMenuVO(List<Menu> menus);

    /**
     * List<Menu>转为List<MenuDTO>实体
     *
     * @param menus 菜单集合
     * @return List<MenuDTO>
     */
    List<MenuDTO> menuToMenuDTO(List<Menu> menus);


    /**
     * List<Menu>转为List<TabVO>实体
     *
     * @param menus 菜单集合
     * @return List<TabVO>
     */
    List<TabVO> menuToTabVO(List<Menu> menus);


    /**
     * MenuVO转为TabVO实体
     *
     * @param menuVO 菜单展示实体
     * @return TabVO
     */
    @Mappings({
            @Mapping(source = "parentTitle", target = "parentTitle")
    })
    TabVO menuVOToTabVO(MenuVO menuVO);

    /**
     * List<MenuVO>转为List<TabVO>实体
     *
     * @param menuVOList 菜单集合
     * @return List<TabVO>
     */
    List<TabVO> menuVOToTabVO(List<MenuVO> menuVOList);


}
