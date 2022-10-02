<p align="center">
	<img alt="logo" src="https://github.com/tylt6688/Breze/blob/master/preview/breze-logo.png">
</p>
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">Breze v1.0.0</h1>
<h4 align="center">基于SpringBoot开发的（多端）一体化权限管理平台</h4>
<p align="center">
	<a href="https://github.com/tylt6688/Breze"><img src="https://img.shields.io/badge/Breze-v1.0.0-blue"></a>
	<a href="https://github.com/tylt6688/Breze/blob/master/LICENSE"><img src="https://img.shields.io/badge/LICENSE-Apache%20License%202.0-red"></a>
</p>




## 项目简介

- **本项目框架于2022年7月13日进行核心权限开源**
- 开源不易，如对您有帮助的话，点个 star 鼓励一下吧！
- 根据如今主流开发及应用环境与如今生态平台限制情况下用户群体“快应用”方式，主要划分为两个用户交互端与一个大屏展示端：
  1. PC 浏览器端
  2. 微信小程序端
  3. 大屏展示端
- Spring Boot + Spring Security + JWT + RBAC 为基础核心框架进行相应功能的开发。

## 项目源码
- Spring Boot Server后台项目地址：https://github.com/tylt6688/Breze
- Browser Vue WEB端项目地址：https://github.com/tylt6688/Breze-Vue
- WeChat 微信小程序端项目地址：https://github.com/tylt6688/Breze-WeChat

## 项目演示

- 演示地址：

## 项目部署
- MySQL 5.7 账户：root，密码：123456
- Redis 缓存数据库 无密码
- RabbitMQ 账户admin，密码：123456
- Maven环境：3.6.x版本

## 项目功能

1.  权限管理
2.  菜单管理
3.  用户管理
4.  部门管理
5.  个人中心
6.  邮件提醒
7.  代码生成

## 项目结构

```
- com.breze
	- common
	- config
	- controller
	- entity
	- mapper
	- security
	- service
	- serviceImpl
	- utils
	- BreazeApplication.java
```
```
- resources
	- mapper
	- static/img
	- templates
	- application-datasource.yml
	- application-dev.yml
	- application-log.yml
	- application-mail.yml
	- application-prod.yml
	- application-rabbitmq.yml
	- application-redis.yml
	- application-test.yml
	- application.yml
	- banner.txt
```

## 项目选型

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
|            | Nodejs             |           |              |                         |                 | Kaptcha          |             |

## 项目展示

<table>
    <tr>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/loginpage.png"/></td>
    </tr>
</table>


## 特别鸣谢

- 

## 开源声明

```
Copyright [2022] [青枫网络工作室]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

## 加入我们

QQ群： 
