package com.breze.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
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
    public static String[] getAttributeNames(Object object) {
        // CGLIB代理类的字段相关，必须再向上获取一层
        Class<?> clazz = object.getClass().getSuperclass();
        Field[] fields = clazz.getDeclaredFields();
        String[] attributeNames = new String[fields.length];

        for (int i = 0; i < fields.length; i++) {
            attributeNames[i] = fields[i].getName();
        }

        return attributeNames;
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

    /**
     * 判断传入的对象是否为 null
     *
     * @param object 对象
     */
    public static boolean isNull(Object object) {
        return object == null;
    }

    /**
     * 判断传入的对象是否不为 null
     */
    public static boolean isNotNull(Object object) {
        return object != null;
    }


    /**
     * 基于 MyBatisPlus 根据对象属性进行模糊搜索
     *
     * @param entity 实体对象
     * @param <T>    实体类型
     * @return QueryWrapper查询条件对象
     */
    public static <T> QueryWrapper<T> createQueryWrapperByLike(T entity) {
        QueryWrapper<T> queryWrapper = new QueryWrapper<>();
        try {
            // 遍历对象属性并构建查询条件
            Field[] fields = entity.getClass().getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                // 排除 serialVersionUID 属性
                if (field.getName().equals("serialVersionUID")) {
                    continue;
                }
                Object value = field.get(entity);
                // 将属性名转换为表中的列下划线命名
                String fieldName = StringUtils.camelToUnderline(field.getName());
                log.info("组成条件===>列名：{}，列值：{}", fieldName, value);

                if (value instanceof Integer) {
                    queryWrapper.eq(fieldName, value);
                } else if (value instanceof String && (!String.valueOf(value).isEmpty())) {
                        queryWrapper.like(fieldName, String.valueOf(value).replace("%", "\\%"));
                }

            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException("反射访问属性失败", e);
        }

        return queryWrapper;
    }


}
