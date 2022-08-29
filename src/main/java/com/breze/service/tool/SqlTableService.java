package com.breze.service.tool;

import com.breze.entity.gener.Table;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:11
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description 数据库表操作服务
 */
public interface SqlTableService {

    List<Table> findDatabaseTable();

}
