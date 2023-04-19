package com.breze.common.flowable;

import com.baomidou.dynamic.datasource.toolkit.DynamicDataSourceContextHolder;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * @Author tylt6688
 * @Date 2023/4/19 10:28
 * @Description 程序运行完毕后强制清除flowable数据源线程
 * @Copyright(c) 2023 , 青枫网络工作室
 */
@Log4j2
@Component
public class CleanDynamicDataSourceContextHolderRunner implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments args) throws Exception {
        log.info("清除flowable数据源线程");
        DynamicDataSourceContextHolder.clear();
    }
}
