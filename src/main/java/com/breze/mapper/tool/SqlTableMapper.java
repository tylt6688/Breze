package com.breze.mapper.tool;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.breze.entity.gener.Table;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author LUCIFER-LGX
 * @Date 2022/8/24 10:09
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description:
 */
@Mapper
public interface SqlTableMapper extends BaseMapper<Table> {

    @Select(value = "select table_name ,create_time , engine, table_collation as coding, table_comment as remark from information_schema.tables where table_schema = (select database())order by create_time desc")
    public List<Table> findAll();

}
