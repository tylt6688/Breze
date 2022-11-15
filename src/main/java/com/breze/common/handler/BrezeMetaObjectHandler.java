package com.breze.common.handler;


import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @Author tylt6688
 * @Date 2022/8/2 14:54
 * @Description 开启 MybatisPlus 实体字段自动填充功能
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Component
public class BrezeMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("start insert fill ....");
        this.fillStrategy(metaObject, "createTime", LocalDateTime.now());
        this.fillStrategy(metaObject, "updateTime", LocalDateTime.now());
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("start update fill ....");
        this.fillStrategy(metaObject, "updateTime", LocalDateTime.now());
    }


}
