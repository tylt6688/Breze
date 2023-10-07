package com.breze.mapper.develop;

import com.breze.entity.pojo.develop.DataBaseTable;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/12/7 23:22
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface DataBaseTableMapper {

    List<String> showDataBases();

    List<DataBaseTable> findDataBaseTable(String dataBaseName);

}
