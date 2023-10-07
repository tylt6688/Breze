<p align="center">
<img alt="logo" style="width: 256px; height: 256px;" src="preview/breze-logo.png">
</p>

<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">Breze v1.0.0</h1>

<h4 align="center">基于SpringBoot开发的（多端）一体化权限管理平台</h4>

<p align="center">
<a href="https://github.com/tylt6688/Breze">
<img src="https://img.shields.io/badge/Breze-v1.0.0-blue">
</a>

<a href="https://github.com/tylt6688/Breze/blob/master/LICENSE">
<img src="https://img.shields.io/badge/LICENSE-Apache%20License%202.0-red">
</a>
</p>



## 项目简介

- **本项目框架于2022年7月13日进行核心权限开源**
- 根据如今主流开发及应用环境与如今生态平台限制情况下用户群体“快应用”方式，主要划分为两个用户交互端与一个大屏展示端：
  1. PC 浏览器端
  2. 微信小程序端
  3. 大屏展示端
- Spring Boot + Spring Security + JWT + RBAC 为基础核心框架进行相应功能的开发。
- 在 GitHub 里，星星 [⭐ Star] 是对一个项目至高无上的肯定，如果觉得对您有帮助的话，欢迎通过下方链接进入项目仓库的主页献出您宝贵的星星。

## 项目源码
- Spring Boot Server后台项目地址：https://github.com/tylt6688/Breze
- Browser Vue WEB端项目地址：https://github.com/tylt6688/Breze-Vue
- Uni-APP端项目地址：https://github.com/tylt6688/Breze-App

## 项目演示

- 演示地址：

## 项目部署
- MySQL 5.7 账户：root，密码：123456
- Redis 缓存数据库 无密码
- RabbitMQ 账户admin，密码：123456
- Maven环境：3.6.x版本

## 项目功能

1. 角色管理：显示系统所拥有的角色权限，该功能主要完成角色的权限分配
2. 用户管理：系统的用户信息操作配置
3. 菜单管理：系统的菜单配置
4. 部门管理：系统组织机构的配置，可与岗位管理关联
5. 岗位管理：显示用户所担任的职务
6. 数据字典：对一些经常使用的固定数据进行动态管理
7. 文档首页管理：系统文档门户信息维护
8. 登录日志：系统登录的记录查询
9. 操作日志：系统一些操作记录
10. 代码生成：后端代码生成，包括controller、service、serviceImpl、mapper、xml文件
11. 接口文档：后端接口测试，友好的展示后端返回数据格式
12. 服务器监控：监视系统当前CPU使用情况
13. 数据库监控：

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
    - utils
    - BrezeApplication.java
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
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/dashboard.png"/></td>
    </tr>
    <tr>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/roleManager.png"/></td>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/roleManagerAssignPermissions.png"/></td>
    </tr>
    <tr>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/userManager.png"/></td>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/userManagerAssignPermissions.png"/></td>
    </tr>
    <tr>
        <td><img src="https://github.com/tylt6688/Breze/raw/master/preview/codeGener.png"/></td>
    </tr>
</table>


## 特别鸣谢

- [LeoChan](https://github.com/echoleochan)
- [Nightliuguoxing](https://github.com/Nightliuguoxing)

## 开源声明（License）

<img src="preview/support-apache.png" alt="support-apache" style="width: 256px; height: 256px;" />

```
Copyright 2022 [青枫网络工作室-Breeze团队]

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

🛴QQ群：532098740



