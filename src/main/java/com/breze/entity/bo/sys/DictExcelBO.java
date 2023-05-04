package com.breze.entity.bo.sys;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

/**
 * @author chenweixi
 * @create 2023-04-21 16:05
 */
@Data
public class DictExcelBO {
    @ExcelProperty("字典名称")
    @ColumnWidth(20)
    private String name;

    @ExcelProperty("字典类型")
    @ColumnWidth(20)
    private String type;

    @ExcelProperty("字典状态")
    @ColumnWidth(20)
    private String state;

    @ExcelProperty("字典描述")
    @ColumnWidth(20)
    private String remark;

}
