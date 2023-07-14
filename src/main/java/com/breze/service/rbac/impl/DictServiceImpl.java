package com.breze.service.rbac.impl;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.read.listener.PageReadListener;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.consts.CharsetConstant;
import com.breze.common.consts.GlobalConstant;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.sys.DictConvert;
import com.breze.entity.bo.sys.DictExcelBO;
import com.breze.entity.bo.sys.UserExcelBO;
import com.breze.entity.dto.sys.DictDTO;
import com.breze.entity.pojo.rbac.Dict;
import com.breze.entity.pojo.rbac.DictData;
import com.breze.entity.vo.sys.DictVO;
import com.breze.mapper.rbac.DictDataMapper;
import com.breze.mapper.rbac.DictMapper;
import com.breze.service.rbac.DictService;
import com.breze.utils.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import static org.apache.commons.lang3.StringUtils.isNoneBlank;

/**
 * @author chenweixi
 * @create 2023-04-20 15:31
 */
@Service
public class DictServiceImpl extends ServiceImpl<DictMapper, Dict> implements DictService{

    @Autowired
    private DictMapper dictMapper;

    @Autowired
    private DictDataMapper dictDataMapper;

    @Override
    public Page<DictVO> getDictPage(Page<Dict> page, String dictName, String dictType) {
        Page<Dict> dictPage = dictMapper.selectPage(page, new QueryWrapper<Dict>().like(isNoneBlank(dictName), "name", dictName).eq(isNoneBlank(dictType),"type", dictType));
        Page<DictVO> dictVOPage = DictConvert.INSTANCE.dictPageToDictVOPage(dictPage);
        return dictVOPage;
    }

    @Override
    public List<DictVO> getOptionSelectList() {
        List<Dict> dicts = dictMapper.selectList(null);
        List<DictVO> dictVOList = DictConvert.INSTANCE.dictListTODictVOList(dicts);
        return dictVOList;
    }

    @Override
    public DictVO getDictById(Long id) {
        Dict dict = dictMapper.selectById(id);
        DictVO dictVO = DictConvert.INSTANCE.dictToDictVO(dict);
        return dictVO;
    }

    @Override
    @Transactional
    public Boolean insertOrUpdateDict(DictDTO dictDTO) {
        Dict dict = DictConvert.INSTANCE.dictDTOToDict(dictDTO);
        if (dict.getId() == null){
            Dict dictType = dictMapper.selectOne(new QueryWrapper<Dict>().eq("type", dict.getType()));
            if (!Objects.isNull(dictType)){
                throw new BusinessException(ErrorEnum.FindException, "字典类型已被使用");
            }
            return dictMapper.insert(dict)>0;
        }else{
            return dictMapper.updateById(dict)>0;
        }
    }

    @Override
    public Boolean deleteDict(Long id) {
        Dict dict = dictMapper.selectById(id);
        System.out.println(dict.getType());
        List<DictData> dictDataList = dictDataMapper.selectList(new QueryWrapper<DictData>().eq("dict_type", dict.getType()));
        System.out.println(dictDataList);

        if (dictDataList.size() == 0){
            return dictMapper.deleteById(id) > 0;
        }else {

            throw new BusinessException(ErrorEnum.FindException, "该字典类型下存在子节点，请删除数据在尝试");
        }
    }

    @Override
    public void exportExcel(HttpServletResponse response) {
        try {
            response.setContentType(CharsetConstant.EXCEL_TYPE);
            response.setCharacterEncoding(CharsetConstant.UTF_8);
            List<Dict> dicts = dictMapper.selectList(null);
            List<DictExcelBO> dictExcelBOS = DictConvert.INSTANCE.dictListTODictBoList(dicts);
            // 写入数据到Excel中
            EasyExcelFactory.write(response.getOutputStream(), DictExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("数据字典").doWrite(dictExcelBOS);
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出Excel表失败");
        }
    }

    @Override
    @Transactional
    public Boolean importExcel(MultipartFile file) {
        File coverFile = FileUtil.multipartFileToFile(file);
        EasyExcelFactory.read(coverFile, Dict.class, new PageReadListener<Dict>(dataList -> {
            for (Dict dict : dataList) {
                try {
                    Dict dictType = dictMapper.selectOne(new QueryWrapper<Dict>().eq("type", dict.getType()));
                    if (!Objects.isNull(dictType)){
                        throw new BusinessException(ErrorEnum.FindException, "字典类型已被使用");
                    }
                    dictMapper.insert(dict);
                } catch (Exception e) {
                    throw new BusinessException(ErrorEnum.FindException, "导入Excel表失败");
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
            DictExcelBO dictExcelBO = new DictExcelBO("xxxxx", "xxx", "xxxxxxx", "xxxxx");
            EasyExcelFactory.write(response.getOutputStream(), DictExcelBO.class).autoCloseStream(Boolean.FALSE).useDefaultStyle(false).sheet("数据字典").doWrite(Arrays.asList(dictExcelBO));
        } catch (Exception e) {
            response.reset();
            throw new BusinessException(ErrorEnum.FindException, "导出模板Excel表失败");
        }
    }
}
