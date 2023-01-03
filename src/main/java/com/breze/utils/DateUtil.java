package com.breze.utils;

import lombok.experimental.UtilityClass;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author chenweixi
 * @create 2022-12-27 14:39
 */
@UtilityClass
public class DateUtil {

    /**
     * @Author: chenweixi
     * @Date: 2022/12/27 14:54
     * @Description: 获取当前时间的前后几天的时间
     * @Params  获取前多少天的天数
     * @Return
     */
    public static String getDateByCurrentTime(int day){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.DATE, day);
        Date date = calendar.getTime();
        String dayTime = format.format(date);
        return dayTime;
    }
}
