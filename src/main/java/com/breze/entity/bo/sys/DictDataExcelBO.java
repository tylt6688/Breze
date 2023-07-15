package com.breze.entity.bo.sys;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author chenweixi
 * @create 2023-04-21 16:05
 */
@Data
@NoArgsConstructor
public class DictDataExcelBO {

    @ExcelProperty("字典类型")
    @ColumnWidth(20)
    private String dictType;

    @ExcelProperty("字典数据键")
    @ColumnWidth(20)
    private String dictKey;

    @ExcelProperty("字典数据值")
    @ColumnWidth(20)
    private Integer dictValue;

    @ExcelProperty("字典数据状态")
    @ColumnWidth(20)
    private Integer state;

    @ExcelProperty("字典数据描述")
    @ColumnWidth(20)
    private String remark;

    @ExcelProperty("排序号")
    @ColumnWidth(20)
    private Integer sort;

    @ExcelProperty("tag标签样式")
    @ColumnWidth(20)
    private String valueClass;

    public DictDataExcelBO(String dictType, String dictKey, Integer dictValue, Integer state, String remark, Integer sort, String valueClass) {
        this.dictType = dictType;
        this.dictKey = dictKey;
        this.dictValue = dictValue;
        this.state = state;
        this.remark = remark;
        this.sort = sort;
        this.valueClass = valueClass;
    }
}
