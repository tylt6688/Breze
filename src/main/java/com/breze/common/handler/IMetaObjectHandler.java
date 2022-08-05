package com.breze.common.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @Name: IMetaObjectHandler.java
 * @Package: com.breze.common.handler
 * @Author LUCIFER-LGX
 * @Date 2022/8/2 14:54
 * @Copyright(c) 2022 , 青枫网络工作室
 * @Description: TODO 启动自动填充功能
 */
@Component
public class IMetaObjectHandler implements MetaObjectHandler {


    @Override
    public void insertFill(MetaObject metaObject) {
        this.strictInsertFill(metaObject, "created", LocalDateTime.class, LocalDateTime.now());
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.strictInsertFill(metaObject, "updated", LocalDateTime.class, LocalDateTime.now());
    }

}
