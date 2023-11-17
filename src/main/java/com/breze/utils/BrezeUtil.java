package com.breze.utils;

import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.lang.reflect.Type;

/**
 * @Author tylt6688
 * @Date 2023/10/26 13:38
 * @Description 框架级工具类
 * @Copyright(c) 2023 , 青枫网络工作室
 */

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
        // 得到类对象
        Class<?> clazz = object.getClass();
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
                log.info("属性类型：{},属性名：{},属性值：{}", fieldType, fieldName, fieldValue);
            } catch (IllegalArgumentException | IllegalAccessException e) {
                log.error(e.getMessage(), e);
            }
            // 只要有一个属性值不为 null 就返回 false 表示对象不为 null
            if (fieldValue != null) {
                flag = false;
                break;
            }
        }

        return flag;
    }

    /**
     * 根据对象获取字段名数组
     */
    public static String[] getFiledName(Object object) {
        Field[] fields = object.getClass().getDeclaredFields();
        String[] fieldNames = new String[fields.length];
        for (int i = 0; i < fields.length; i++) {
            fieldNames[i] = fields[i].getName();
        }
        return fieldNames;
    }

    /**
     * 根据字段名获取字段值
     */
    public static Object getFieldValueByName(String fieldName, Object object) {
        try {
            //根据字段名得到字段
            Field field = object.getClass().getDeclaredField(fieldName);
            //设置字段可访问
            field.setAccessible(true);
            //返回字段值
            return field.get(object);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            return null;
        }
    }

    /**
     * 获取HttpServletRequest
     */
    public static HttpServletRequest getHttpServletRequest() {
        ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        assert servletRequestAttributes != null;
        return servletRequestAttributes.getRequest();
    }


}
