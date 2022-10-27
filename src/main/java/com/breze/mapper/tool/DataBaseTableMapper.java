package com.breze.mapper.tool;

import com.breze.entity.pojo.tool.DataBaseTable;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:09
 * @Description
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Mapper
public interface DataBaseTableMapper {

    @Select(value = "SHOW DATABASES")
    List<String> showDataBases();

    @Select(value = "SELECT table_name ,create_time , engine, table_collation AS coding, table_comment AS remark FROM information_schema.tables WHERE table_schema = (SELECT database())ORDER BY create_time DESC")
    List<DataBaseTable> findDatabaseTable();

}
