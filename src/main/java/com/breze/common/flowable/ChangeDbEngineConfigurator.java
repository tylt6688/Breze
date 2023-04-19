package com.breze.common.flowable;

import com.baomidou.dynamic.datasource.DynamicRoutingDataSource;
import lombok.extern.log4j.Log4j2;
import org.flowable.common.engine.impl.AbstractEngineConfiguration;
import org.flowable.common.engine.impl.EngineConfigurator;
import org.springframework.jdbc.datasource.TransactionAwareDataSourceProxy;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * @Author tylt6688
 * @Date 2023/4/19 10:28
 * @Description 采用 SPI 机制指定 flowable 数据源
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Log4j2
@Component
public class ChangeDbEngineConfigurator implements EngineConfigurator {

    private static AtomicBoolean initialized = new AtomicBoolean();

    @Override
    public void beforeInit(AbstractEngineConfiguration abstractEngineConfiguration) {
        log.info("初始化flowable数据库成功");

        if (initialized.compareAndSet(false, true)) {
            DataSource dataSource = abstractEngineConfiguration.getDataSource();
            if (dataSource instanceof TransactionAwareDataSourceProxy) {
                dataSource = ((TransactionAwareDataSourceProxy) dataSource).getTargetDataSource();
            }
            if (dataSource instanceof DynamicRoutingDataSource) {
                DataSource ds = ((DynamicRoutingDataSource) dataSource).getDataSource("flowable");
                abstractEngineConfiguration.setDataSource(ds);
            }
        }
        log.info("启用工作流数据源");

    }


    @Override
    public void configure(AbstractEngineConfiguration abstractEngineConfiguration) {
        log.info("配置flowable数据库成功");
    }

    @Override
    public int getPriority() {
        return 0;
    }
}
