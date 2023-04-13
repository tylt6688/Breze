package com.breze.entity.bo.sys;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

/**
 * @Author tylt6688
 * @Date 2023/4/13 14:32
 * @Description 用户信息 Excel 业务层对象
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Data
public class UserExcelBO {

    @ExcelProperty("用户名")
    @ColumnWidth(20)
    private String username;

    @ExcelProperty("真实姓名")
    @ColumnWidth(20)
    private String trueName;

    @ExcelProperty("手机号")
    @ColumnWidth(20)
    private String phone;

    @ExcelProperty("邮箱")
    @ColumnWidth(20)
    private String email;

    @ExcelProperty("籍贯")
    @ColumnWidth(20)
    private String city;

    public UserExcelBO(String username, String trueName, String phone, String email, String city) {
        this.username = username;
        this.trueName = trueName;
        this.phone = phone;
        this.email = email;
        this.city = city;
    }
}
