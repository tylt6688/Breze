package com.breze.utils;

import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Objects;

@Log4j2
@UtilityClass
public class BrezeUtil {

    /**
     * 判断对象是否完全为空
     *
     * @param object 对象
     * @return boolean
     */
    public static boolean objectCheckIsNull(Object object) {
        //定义返回结果，默认为 true
        boolean flag = true;

        if (Objects.isNull(object)) {
            flag = true;
        } else {
            // 得到类对象
            Class<? extends Object> clazz = object.getClass();
            // 得到所有属性
            Field[] fields = clazz.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                Object fieldValue = null;
                try {
                    // 得到属性值
                    fieldValue = field.get(object);
                    // 得到属性类型
                    Type fieldType = field.getGenericType();
                    // 得到属性名
                    String fieldName = field.getName();
                    log.info("属性类型：" + fieldType + ",属性名：" + fieldName + ",属性值：" + fieldValue);
                } catch (IllegalArgumentException | IllegalAccessException e) {
                    log.error(e.getMessage(), e);
                }
                // 只要有一个属性值不为 null 就返回 false 表示对象不为 null
                if (fieldValue != null) {
                    flag = false;
                    break;
                }
            }
        }

        return flag;
    }

}
