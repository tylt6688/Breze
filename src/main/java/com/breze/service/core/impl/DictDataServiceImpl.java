package com.breze.service.core.impl;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.read.listener.PageReadListener;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.sys.DictDataConvert;
import com.breze.entity.bo.sys.DictDataExcelBO;
import com.breze.entity.dto.sys.DictDataDTO;
import com.breze.entity.pojo.core.DictData;
import com.breze.entity.vo.sys.DictDataVO;
import com.breze.mapper.core.DictDataMapper;
import com.breze.service.core.DictDataService;
import com.breze.utils.FileUtil;
import com.breze.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.lang3.StringUtils.isNoneBlank;

/**
 * @author chenweixi
 * @create 2023-04-20 15:31
 */
@Service
public class DictDataServiceImpl extends ServiceImpl<DictDataMapper, DictData> implements DictDataService {

    @Autowired
    private DictDataMapper dictDataMapper;

    @Autowired
    private RedisUtil redisUtil;


    @Override
    public Page<DictDataVO> getDictDataPage(Page<DictData> page, Long state, String dictType) {
        Page<DictData> dataPage = dictDataMapper.selectPage(page, new QueryWrapper<DictData>().eq((isNoneBlank(dictType)), "dict_type", dictType).eq(state != null, "state",state).orderByAsc("sort"));
        Page<DictDataVO> dictDataVOPage = DictDataConvert.INSTANCE.dictDataPageToDictDataVoPage(dataPage);
        return dictDataVOPage;
    }

    @Override
    public DictDataVO getDictDataById(Long id) {
        DictData dictData = dictDataMapper.selectById(id);
        DictDataVO dictDataVO = DictDataConvert.INSTANCE.dictDataToDictDataVo(dictData);
        return dictDataVO;
    }

    @Override
    public Boolean deleteDictData(Long id) {
        return dictDataMapper.deleteById(id) > 0;
    }

    @Override
    public Boolean insertOrUpdateDict(DictDataDTO dictDataDTO) {
        DictData dictData = DictDataConvert.INSTANCE.dictDataDTOToDictData(dictDataDTO);
        if (dictData.getId() == null){
            return dictDataMapper.insert(dictData)>0;
        }else{
            return dictDataMapper.updateById(dictData)>0;
        }
    }

    @Override
    public void exportExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            List<DictData> dicts = dictDataMapper.selectList(null);
            List<DictDataExcelBO> dictExcelBOS = DictDataConvert.INSTANCE.dictDataListTODictDataBoList(dicts);
            // 写入数据到Excel中
            EasyExcelFactory.write(response.getOutputStream(), DictDataExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("字典数据").doWrite(dictExcelBOS);
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导出Excel表失败");
        }
    }

    @Override
    public Boolean importExcel(MultipartFile file) {
        File coverFile = FileUtil.multipartFileToFile(file);
        EasyExcelFactory.read(coverFile, DictData.class, new PageReadListener<DictData>(dataList -> {
            for (DictData dict : dataList) {
                try {
                    dictDataMapper.insert(dict);
                } catch (Exception e) {
                    throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导入Excel表失败");
                }
            }
        })).sheet().doRead();
        return true;
    }

    @Override
    public void dictTemplateExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            DictDataExcelBO dictDataExcelBO = new DictDataExcelBO("xxxxx", "xxx", 0, 0,"xxx",0,"xxx");
            EasyExcelFactory.write(response.getOutputStream(), DictDataExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("字典数据").doWrite(Arrays.asList(dictDataExcelBO));
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "导出模板Excel表失败");
        }
    }

    @Override
    public Map<String, List<DictData>> getDictDataByType(List<String> dicts) {
        HashMap<String, List<DictData>> dictListMap = new HashMap<>();
        for (String dict : dicts) {
            if (redisUtil.hasKey(dict)){
//                FIXME 此处转换有问腿  等待修复
//                List<DictData> dataList = (List<DictData>) redisUtil.get(dict);
//                dictListMap.put(dict,dataList);
            }else{
                List<DictData> dataList = dictDataMapper.selectList(new QueryWrapper<DictData>().eq("dict_type", dict));
                dictListMap.put(dict,dataList);
            }
        }
        return dictListMap;
    }
}
