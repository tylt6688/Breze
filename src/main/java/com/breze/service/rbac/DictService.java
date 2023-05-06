package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.sys.DictDTO;
import com.breze.entity.pojo.rbac.Dict;
import com.breze.entity.vo.sys.DictVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;

/**
 * @author chenweixi
 * @create 2023-04-20 15:31
 */
public interface DictService extends IService<Dict> {
    /**
     *  获取字典分页信息
     *
     * @Params [page, name]
     * @Return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.breze.entity.vo.sys.DictVO>
     */
    Page<DictVO> getDictPage(Page<Dict> page, String name);
    /**
     *  新增或者修改字典信息
     *
     * @Params [dictDTO]
     * @Return java.lang.Boolean
     */
    Boolean insertOrUpdateDict(DictDTO dictDTO);
    /**
     *  通过id删除字典信息
     *
     * @Params [id]
     * @Return java.lang.Boolean
     */
    Boolean deleteDict(Long id);

    void exportExcel(HttpServletResponse response);

    Boolean importExcel(MultipartFile file);
}
