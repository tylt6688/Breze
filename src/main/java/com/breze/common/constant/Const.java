package com.breze.common.constant;

/*
 * @Author tylt
 * @Description //TODO 全局通用常数类
 * @Date 2022/2/5 11:57
 **/
public class Const {



   // 状态常量 ---> 0正常 1禁止 2准备
    public static final Integer STATUS_ON = 0;
    public static final Integer STATUS_OFF = 1;
    public static final Integer STATUS_READY = 2;

    // 类型常量 ---> 根据使用情景来自行判定
    public static final Integer TYPE_ZERO = 0;
    public static final Integer TYPE_ONE = 1;
    public static final Integer TYPE_TWO = 2;

    // 分页常量 ---> 当前页码 1 每页数据条数 10
    public static final Integer CURRENT = 1;
    public static final Integer SIZE = 10;


    // 账号操作常量
    public static final String DEFAULT_PASSWORD = "123456";
    public static final String DEFAULT_AVATAR = "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png";

}
