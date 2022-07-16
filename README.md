# 清枫 Breze
# （多端）一体化权限服务平台

> 项目简介

本项目于2022年7月13日进行核心权限框架开源

根据如今环境与用户群体大多数选择类似“快应用”的方式，并考虑到如今生态平台的限制，主要划分为两个用户交互端与一个大屏展示端：

1. PC 浏览器端
2. 微信小程序端
3. 大屏展示端

后端以 Spring Boot + Spring Security + JWT + RBAC 为基础核心框架进行相应功能的开发。

> 项目地址
* Spring Boot Server端：
* Browser WEB端： 
* WeChat 微信小程序端：
> 开发选型

| 开发语言   | 开发工具           | 数据库    | 前端框架选型 | 前端组件选型            | 后端框架选型    | 后端工具组件选型 | 中间件      |
| ---------- | ------------------ | --------- | ------------ | ----------------------- | --------------- | ---------------- | ----------- |
| Java       | Apache Maven       | MySQL 5.7 | Vue.js       | Element UI              | Spring Boot     | Lombok           | Rabbit MQ   |
| JavaScript | IntelliJ IDEA      | Redis     | mpvue        | Vant Weapp              | Spring Security | Swagger 2        | Druid       |
| HTML       | Navicat Premium    |           |              | mpvue-weui              | MyBatis-Plus    | Hutool           | Jedis       |
| CSS        | Git                |           |              | pdf.js                  |                 | Validation       | OSS对象存储 |
| SQL        | Postman            |           |              | tinymce富文本编辑器     |                 | Fast JSON        |             |
|            | RESP               |           |              | e-icon-picker图标选择器 |                 | JWT              |             |
|            | Visual Studio Code |           |              |                         |                 | EasyExcel        |             |
|            | 微信开发者工具     |           |              |                         |                 | Log4J2           |             |
|            | Nodejs             |           |              |                         |                 | kaptcha          |             |

> 部署准备
* MySQL 5.7 账户：root，密码：123456
* Redis
* RabbitMQ 账户admin，密码：123456
* Maven环境：3.6.x版本

> 功能描述

* RBAC 0 权限管理
  * 单个/批量授权


> 引入页面组件

> 项目截图



> 版权声明

此项目为青枫网络工作室开源项目，遵循Apache License 2.0协议，个人用途可免费使用，商业用途请联系主要青枫网络工作室获得授权许可。联系方式：tylt6688@gmail.com

Power By LGX

Contributors：LGX