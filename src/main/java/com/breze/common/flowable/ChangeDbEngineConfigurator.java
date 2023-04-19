package com.breze.common.flowable;

import lombok.extern.log4j.Log4j2;
import org.flowable.common.engine.impl.AbstractEngineConfiguration;
import org.flowable.common.engine.impl.EngineConfigurator;

import java.util.concurrent.atomic.AtomicBoolean;

@Log4j2
public class ChangeDbEngineConfigurator implements EngineConfigurator {

    private static AtomicBoolean initialized = new AtomicBoolean();
    @Override
    public void beforeInit(AbstractEngineConfiguration abstractEngineConfiguration) {
        log.info("初始化flowable数据库成功");

    }


    @Override
    public void configure(AbstractEngineConfiguration abstractEngineConfiguration) {

//        if (initialized.compareAndSet(false, true)) {
//            DataSource dataSource = abstractEngineConfiguration.getDataSource();
            log.info("配置flowable数据库成功");
//            DataSource flowable = ((DynamicRoutingDataSource) dataSource).getDataSource("flowable");
//            abstractEngineConfiguration.setDataSource(flowable);
//        }
    }

    @Override
    public int getPriority() {
        return 0;
    }
}
