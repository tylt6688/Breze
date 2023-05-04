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
import com.breze.entity.pojo.rbac.User;
import com.breze.entity.vo.sys.DictVO;
import com.breze.mapper.rbac.DictMapper;
import com.breze.service.rbac.DictService;
import com.breze.utils.FileUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/**
 * @author chenweixi
 * @create 2023-04-20 15:31
 */
@Service
public class DictServiceImpl extends ServiceImpl<DictMapper, Dict> implements DictService{

    @Autowired
    private DictMapper dictMapper;

    @Override
    public Page<DictVO> getDictPage(Page<Dict> page, String name) {
        Page<Dict> dictPage = dictMapper.selectPage(page, new QueryWrapper<Dict>().like(StringUtils.isNoneBlank(name), "name", name));
        Page<DictVO> dictVOPage = DictConvert.INSTANCE.dictPageToDictVOPage(dictPage);
        return dictVOPage;
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
        return dictMapper.deleteById(id)>0;
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
}
