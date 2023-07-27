package com.breze.entity.pojo.core;

import com.baomidou.mybatisplus.annotation.TableName;
import com.breze.entity.pojo.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author chenweixi
 * @create 2023-07-04 19:42
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@TableName("sys_dict_data")
public class DictData extends BaseEntity {

    private static final long serialVersionUID = -6461030754234589431L;
    /**
     * 字典类型
     */
    private String dictType;

    /**
     * 字典数据键
     */
    private String dictKey;

    /**
     * 字典数据值
     */
    private Integer dictValue;

    /**
     * 字典数据状态
     */
    private Integer state;

    /**
     * 字典数据描述
     */
    private String remark;

    /**
     * 对应tag标签class名
     */
    private String valueClass;
}
