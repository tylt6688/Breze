package com.breze.entity.bo.sys;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author chenweixi
 * @create 2023-04-21 16:05
 */
@Data
@NoArgsConstructor
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

    public DictExcelBO(String name, String type, String state, String remark) {
        this.name = name;
        this.type = type;
        this.state = state;
        this.remark = remark;
    }
}
