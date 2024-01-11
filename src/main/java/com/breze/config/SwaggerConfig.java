package com.breze.config;


import com.breze.common.consts.SecurityConstant;
import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @Author tylt6688
 * @Date 2022/2/5 12:07
 * @Description Swagger 配置类,并指明用于多环境配置类标识
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Profile({"dev", "test"})
@Configuration
@EnableOpenApi
public class SwaggerConfig {

    @Resource
    private BrezeConfig brezeConfig;

    /**
     * 将返回值对象作为组件添加到Spring容器中，组件ID默认为方法名
     */
    @Bean
    public Docket createRestApi() {

        // 指定文档风格
        return new Docket(DocumentationType.OAS_30)
                // 是否启用Swagger
                .enable(brezeConfig.getSwaggerEnabled())
                // 设置文档信息
                .apiInfo(apiInfo())
                // 设置分组名称
                .groupName("Breze Controller")
                // 选择哪些接口暴露给Swagger展示的生成策略
                .select()
                // 扫描所有有注解的api，用这种方式更灵活
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                // 扫描指定包中的swagger注解
                //.apis(RequestHandlerSelectors.basePackage("xyz.tylt.controller.*.*"))
                // 扫描所有
                // .apis(RequestHandlerSelectors.any())
                /*
                 * basePackage()选择要生成接口文档的包
                 * any()全部都扫描
                 * none()全部不扫描
                 * withClassAnnotation()扫描类上的注解,参数是一个注解的反射对象
                 * withMethodAnnotation()扫描包上的注解
                 */
                // 根据url路径设置哪些请求加入文档，忽略哪些请求
                .paths(PathSelectors.any())
                // 开启构建者模式
                .build()
                // 设置安全模式，swagger可以设置访问 token
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 安全模式，指定token[Bearer方式] 通过Authorization头请求头传递
     */
    private HttpAuthenticationScheme securitySchemes() {
        return HttpAuthenticationScheme.JWT_BEARER_BUILDER.name(SecurityConstant.AUTHORIZATION).build();
    }

    /*
     * 安全模式，指定token[API Key方式] 通过Authorization头请求头传递
     */
//    private List<SecurityScheme> securitySchemes() {
//        List<SecurityScheme> apiKeyList = new ArrayList<>();
//        apiKeyList.add(new ApiKey(SecurityConstant.AUTHORIZATION, SecurityConstant.AUTHORIZATION, In.HEADER.toValue()));
//        return apiKeyList;
//    }

    /**
     * 安全上下文
     */
    private SecurityContext securityContexts() {
        return SecurityContext.builder().securityReferences(defaultAuth()).operationSelector(o -> o.requestMappingPattern().matches("/.*")).build();
    }

    /**
     * 默认的安全上下文引用
     */
    private List<SecurityReference> defaultAuth() {
        AuthorizationScope authorizationScope = new AuthorizationScope("global", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        List<SecurityReference> securityReferences = new ArrayList<>();
        securityReferences.add(new SecurityReference(SecurityConstant.AUTHORIZATION, authorizationScopes));
        return securityReferences;
    }


    private ApiInfo apiInfo() {
        // 配置作者信息
        return new ApiInfoBuilder()
                // 设置文档的标题
                .title(brezeConfig.getTitle())
                // 设置文档的描述
                .description(brezeConfig.getDescription())
                // 设置文档的版本信息-> 1.0.0 Version information
                .version(brezeConfig.getVersion())
                // 设置文档的 License 信息
                .license("Apache License Version 2.0")
                // 设置文档的 License Url
                .licenseUrl("https://www.apache.org/licenses/LICENSE-2.0")
                // 服务条款网址
                .termsOfServiceUrl("https://love.tylt.xyz")
                // 设置文档的联系方式->1.3.1 Contact information
                .contact(new Contact(brezeConfig.getCopyrightName(), "https://blog.csdn.net/tylt6688/", "tylt6688@foxmail.com")).build();
    }


    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketRbac() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("RBAC Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.rbac"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketCore() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("CORE Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.core"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketDevelop() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("DEVELOP Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.develop"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketMonitor() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("MONITOR Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.monitor"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketPortal() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("PORTAL Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.portal"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }

    /**
     * 多分组协同开发的情况
     *
     * @return Docket
     */
    @Bean
    public Docket docketSyslog() {
        return new Docket(DocumentationType.OAS_30)
                .groupName("SYSLOG Controller")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.breze.controller.syslog"))
                .paths(PathSelectors.any())
                .build()
                .securitySchemes(Collections.singletonList(securitySchemes())).securityContexts(Collections.singletonList(securityContexts()));
    }


}
