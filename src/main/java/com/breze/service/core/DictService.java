package com.breze.service.core;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.sys.DictDTO;
import com.breze.entity.pojo.core.Dict;
import com.breze.entity.vo.sys.DictVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
    Page<DictVO> getDictPage(Page<Dict> page, String dictName, String dictType);

    List<DictVO> getOptionSelectList();
    /**
     *  新增或者修改字典信息
     *
     * @Params [dictDTO]
     * @Return java.lang.Boolean
     */

    DictVO getDictById(Long id);
    Boolean insertOrUpdateDict(DictDTO dictDTO);
    /**
     *  通过id删除字典信息
     *
     * @Params [id]
     * @Return java.lang.Boolean
     */
    Boolean deleteDict(Long id);
    /**
     *  导出字典类型
     *
     * @Params [response] 
     * @Return void
     */
    void exportExcel(HttpServletResponse response);
    /**
     *  导入字典类型
     *
     * @Params [file] 
     * @Return java.lang.Boolean
     */
    Boolean importExcel(MultipartFile file);
    /**
     *  下载Excel模板 
     *
     * @Params [response] 
     * @Return void
     */
    void dictTemplateExcel(HttpServletResponse response);


    void refreshCache();
}
