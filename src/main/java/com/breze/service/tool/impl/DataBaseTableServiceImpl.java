package com.breze.service.tool.impl;

import com.breze.entity.pojo.tool.DataBaseTable;
import com.breze.mapper.tool.DataBaseTableMapper;
import com.breze.service.tool.DataBaseTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:12
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description 数据库表操作服务实现类
 */
@Service
public class DataBaseTableServiceImpl implements DataBaseTableService {

    @Autowired
    private DataBaseTableMapper dataBaseTableMapper;

    @Override
    public List<String> showDataBases() {
        List<String> list = dataBaseTableMapper.showDataBases();
        list.removeIf(dataBase -> Objects.equals(dataBase, "mysql") || Objects.equals(dataBase, "sys") || Objects.equals(dataBase, "information_schema") || Objects.equals(dataBase, "performance_schema"));
        return list;
    }


    @Override
    public List<DataBaseTable> listDataBaseTables(String dataBaseName) {
        return dataBaseTableMapper.findDataBaseTable(dataBaseName);
    }
}
