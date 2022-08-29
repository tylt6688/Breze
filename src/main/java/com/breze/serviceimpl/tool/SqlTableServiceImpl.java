package com.breze.serviceimpl.tool;

import com.breze.entity.gener.Table;
import com.breze.mapper.tool.SqlTableMapper;
import com.breze.service.tool.SqlTableService;
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
public class SqlTableServiceImpl implements SqlTableService {

    @Autowired
    private SqlTableMapper mapper;

    @Override
    public List<Table> findDatabaseTable() {
        return mapper.findDatabaseTable();
    }
}
