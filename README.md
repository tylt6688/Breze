# 清枫 Breze
# （多端）一体化权限管理平台

> 项目简介

* **本项目框架于2022年7月13日进行核心权限开源**
* 开源不易，如对您有帮助的话，点个 star 鼓励一下吧！

根据如今主流开发及应用环境与如今生态平台限制情况下用户群体“快应用”方式，主要划分为两个用户交互端与一个大屏展示端：

1. PC 浏览器端
2. 微信小程序端
3. 大屏展示端

Spring Boot + Spring Security + JWT + RBAC 为基础核心框架进行相应功能的开发。

> 项目地址
* Spring Boot Server后台项目地址：https://github.com/tylt6688/Breze
* Browser Vue WEB端项目地址：https://github.com/tylt6688/Breze-Vue
* WeChat 微信小程序端项目地址：https://github.com/tylt6688/Breze-WeChat

> 部署准备
* MySQL 5.7 账户：root，密码：123456
* Redis 缓存数据库 无密码
* RabbitMQ 账户admin，密码：123456
* Maven环境：3.6.x版本

> 功能描述

* 权限管理
* 菜单管理
* 用户管理
* 部门管理
* 个人中心
* 邮件提醒
* 代码生成

> 项目截图

![loginpage](preview/loginpage.png)

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

> 开源声明

此项目为青枫网络工作室开源项目，遵循Apache License 2.0协议。如对您的学习或工作产生帮助，我们深感荣幸。
