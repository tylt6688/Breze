package com.breze.service.tool.impl;

import com.breze.entity.pojo.tool.DataBaseTable;
import com.breze.mapper.tool.DataBaseTableMapper;
import com.breze.service.tool.DataBaseTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:12
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description
 */
@Service
public class DataBaseTableServiceImpl implements DataBaseTableService {

    @Autowired
    private DataBaseTableMapper dataBaseTableMapper;

    @Override
    public List showDatabases() {
        return dataBaseTableMapper.showDataBases();
    }

    @Override
    public List<DataBaseTable> findDatabaseTable() {
        return dataBaseTableMapper.findDatabaseTable();
    }
}
