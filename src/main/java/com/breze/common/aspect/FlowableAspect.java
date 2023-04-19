// An highlighted block
package com.breze.common.aspect;


import com.baomidou.dynamic.datasource.toolkit.DynamicDataSourceContextHolder;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Log4j2
@Component
@Aspect
public class FlowableAspect {


    @Before("execution(* org.flowable.app.engine.AppEngineConfiguration.buildAppEngine())")
    public void before(){
        log.info("启用工作流数据源");
        DynamicDataSourceContextHolder.push("flowable");
    }

    @After("execution(* org.flowable.app.engine.AppEngineConfiguration.buildAppEngine())")
    public void after(){
        log.info("停用工作流数据源");
        DynamicDataSourceContextHolder.poll();
    }

}

