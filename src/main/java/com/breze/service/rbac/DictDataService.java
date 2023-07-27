package com.breze.service.rbac;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.breze.entity.dto.sys.DictDataDTO;
import com.breze.entity.pojo.core.DictData;
import com.breze.entity.vo.sys.DictDataVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * @author chenweixi
 * @create 2023-04-20 15:31
 */
public interface DictDataService extends IService<DictData> {
    
    /**
     *  分页获取字典数据信息 
     *
     * @Params [page, state, dictType] 
     * @Return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.breze.entity.vo.sys.DictDataVO>
     */
    Page<DictDataVO> getDictDataPage(Page<DictData> page, Long state, String dictType);
    /**
     *  通过ID获取信息 
     *
     * @Params [id] 
     * @Return com.breze.entity.vo.sys.DictDataVO
     */
    DictDataVO getDictDataById(Long id);
    /**
     *  通过id删除字典信息 
     *
     * @Params [id] 
     * @Return java.lang.Boolean
     */
    Boolean deleteDictData(Long id);
    /**
     *  新增或修改字典数据信息 
     *
     * @Params [dictDataDTO] 
     * @Return java.lang.Boolean
     */
    Boolean insertOrUpdateDict(DictDataDTO dictDataDTO);
    /**
     *  导出字典数据 
     *
     * @Params [response] 
     * @Return void
     */
    void exportExcel(HttpServletResponse response);
    /**
     *  导入字典数据 
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

    Map<String, List<DictData>> getDictDataByType(List<String> dicts);
}
