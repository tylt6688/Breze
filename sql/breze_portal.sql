/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL数据库
 Source Server Type    : MySQL
 Source Server Version : 50727 (5.7.27)
 Source Host           : localhost:3306
 Source Schema         : breze_portal

 Target Server Type    : MySQL
 Target Server Version : 50727 (5.7.27)
 File Encoding         : 65001

 Date: 03/06/2023 11:35:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mode_card
-- ----------------------------
DROP TABLE IF EXISTS `mode_card`;
CREATE TABLE `mode_card`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '功能模块Id',
  `mode_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名字',
  `mode_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块介绍',
  `mode_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块链接',
  `mode_component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面组件',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模块展示表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mode_card
-- ----------------------------
INSERT INTO `mode_card` VALUES (1, '轮播图管理', '轮播图模块功能信息管理', '/portal/banner', 'portal/BannerManage', '2022-10-08 20:19:58', '2022-10-08 20:20:01');
INSERT INTO `mode_card` VALUES (2, '导航栏管理', '导航栏跳转信息管理', '/portal/navbar', 'portal/Navbar', '2022-10-08 20:21:37', '2022-10-08 20:21:40');
INSERT INTO `mode_card` VALUES (3, '内容管理', '主题内容信息管理', '/portal/mainContent', 'portal/MainContent', '2022-10-08 20:22:32', '2022-10-08 20:22:35');
INSERT INTO `mode_card` VALUES (6, '图片管理', 'OSS图片管理', 'sdg', 'sdg', '2022-10-18 16:58:08', '2022-10-18 16:58:08');

-- ----------------------------
-- Table structure for simple_content
-- ----------------------------
DROP TABLE IF EXISTS `simple_content`;
CREATE TABLE `simple_content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主页内容模块id',
  `oss_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'oss表id',
  `main_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块标题',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `title_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块简介',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `router_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指定路由跳转',
  `parent_id` int(20) NOT NULL COMMENT '父id',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `back_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主体内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of simple_content
-- ----------------------------
INSERT INTO `simple_content` VALUES (1, '', '存在的含义', NULL, '', 1, '', 0, NULL, NULL, '2023-02-10 15:27:45', '2023-02-10 15:27:48');
INSERT INTO `simple_content` VALUES (2, '2e3df5fd5704434a931e73c5923ef910', 'Breze管理系统', '后台信息管理系统', '前后端分离模式', 2, '/managerSystem', 1, NULL, NULL, '2023-03-01 16:20:14', '2023-03-01 16:20:14');
INSERT INTO `simple_content` VALUES (3, '2e3df5fd5704434a931e73c5923ef910', 'Breze大屏展示系统', '大屏信息展示平台', '前后端分离模式', 3, '/bigPingSystem', 1, NULL, NULL, '2023-02-10 15:32:05', '2023-02-10 15:32:07');
INSERT INTO `simple_content` VALUES (4, '2e3df5fd5704434a931e73c5923ef910', 'Breze小程序', '小程序使用平台', '前后端分离模式', 4, '/xiaoChengXu', 1, NULL, NULL, '2023-02-10 15:33:13', '2023-02-10 15:33:16');
INSERT INTO `simple_content` VALUES (5, '', '推荐文章', NULL, NULL, 5, NULL, 0, NULL, NULL, '2023-02-10 15:34:10', '2023-02-10 15:34:13');
INSERT INTO `simple_content` VALUES (11, '298aa569548c42ceafda7de38b894c2f', '基础', '计算机基础知识点', '介绍了计算机发展历史、操作界面等基本知识和常规操作方法', 7, '/baseZhishi', 5, NULL, NULL, '2023-03-01 15:27:50', '2023-03-01 15:27:50');
INSERT INTO `simple_content` VALUES (12, '3d18aa5451844e018ee5dd3b23eddec3', '电脑', '学会使用电脑', '工欲善其事必先利其器,这也是我为什么先写硬件以及系统的原因，只有身体棒，你才可以去做你想做的事情。其他一切都免谈！搞计算机的人，如果自己的枪都磨不好，你拿什么上战场呢？', 6, '/learnComputer', 5, NULL, NULL, '2023-03-01 16:03:11', '2023-03-01 16:03:11');
INSERT INTO `simple_content` VALUES (13, '73f67769212d48809419a7e664594a11', '教育', '如何去贯彻和奉行教育的根本', '教育是每个人所拥有的权利和做一个有素质公民应尽的义务。教育的含义是十分广泛的，但无论是教育任何一方面的内容，归结到其本质离不开“学习”二字，学习完全是一种属于自己本身的、后天的一种行为。', 8, '/teachShare', 5, NULL, NULL, '2023-03-01 16:08:35', '2023-03-01 16:08:35');
INSERT INTO `simple_content` VALUES (14, '58414be521664acaa9461138f483336b', '起源', '计算机起源与发展历程', '在原始社会中，人类开始使用结绳，垒石，枝条或刻字等方式进行辅助计算和计数的工具。  在春秋时期，我们的祖先发明了算筹计数的 “ 筹算法 ” 。  公元六世纪，中国开始使用算盘作为计算工具，算盘是我国人民独特的创造，是第一种彻底使用十进制计算的工具。', 9, '/qiyuan', 5, NULL, NULL, '2023-03-01 16:10:59', '2023-03-01 16:10:59');

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图地址',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图提示',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页轮播图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES (7, 'http://qiniuyun.tylt.xyz/a019211591b1437394a5a3a8266a0d3a.jpg', '布莱斯峡谷国家公园的石林', 1, '2023-03-01 14:14:46', '2023-03-01 14:14:46');
INSERT INTO `tb_banner` VALUES (8, 'http://qiniuyun.tylt.xyz/8292c01a42364525ae6528a262c0ef00.jpg', '纳加尔霍雷国家公园', 2, '2023-03-01 14:15:46', '2023-03-01 14:15:46');
INSERT INTO `tb_banner` VALUES (9, 'http://qiniuyun.tylt.xyz/f48909d89a104aafb2eb49f556480b2d.jpg', '天空之岛', 3, '2023-03-01 14:27:47', '2023-03-01 14:27:47');
INSERT INTO `tb_banner` VALUES (14, 'http://qiniuyun.tylt.xyz/2fcec4e7244f445f8bd4fa4e1b9bcf80.jpg', '图尔库的奥拉河', 4, '2023-03-01 14:47:39', '2023-03-01 14:47:39');

-- ----------------------------
-- Table structure for tb_navbar
-- ----------------------------
DROP TABLE IF EXISTS `tb_navbar`;
CREATE TABLE `tb_navbar`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '导航标题id',
  `flag` bigint(2) NULL DEFAULT NULL COMMENT '0为导航栏，1为尾部导航',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '导航序号',
  `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题名称',
  `title_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转路径',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '导航连接表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_navbar
-- ----------------------------
INSERT INTO `tb_navbar` VALUES (1, 0, 1, '首页', '/', 0, '2022-10-18 10:53:29', '2022-10-18 10:53:29');
INSERT INTO `tb_navbar` VALUES (2, 0, 3, '在线演示', '/onlineShow', 0, '2022-10-18 14:10:45', '2022-10-18 14:10:48');
INSERT INTO `tb_navbar` VALUES (6, 0, 2, '在线文档', '/onlineWord', 0, '2022-10-18 17:30:33', '2022-10-18 17:30:33');
INSERT INTO `tb_navbar` VALUES (8, 0, 4, '前后端分离', '/1111', 2, '2022-10-24 10:21:22', '2022-10-24 10:21:22');
INSERT INTO `tb_navbar` VALUES (9, 0, 5, '代码详情', '/codeView', 0, '2023-02-10 10:26:16', '2023-02-10 10:26:16');
INSERT INTO `tb_navbar` VALUES (10, 1, 6, '产品与解决方案', '/productAndPlan', 0, '2023-02-21 13:52:51', '2023-02-21 13:52:54');
INSERT INTO `tb_navbar` VALUES (11, 1, 7, '后台管理系统方案', '/manageSystem', 10, '2023-02-21 13:53:45', '2023-02-21 13:53:48');
INSERT INTO `tb_navbar` VALUES (12, 1, 8, '小程序解决方案', '/smallProgram', 10, '2023-02-21 13:54:24', '2023-02-21 13:54:27');
INSERT INTO `tb_navbar` VALUES (13, 1, 9, '大屏显示方案', '/bigScreen', 10, '2023-02-21 13:54:59', '2023-02-21 13:55:01');
INSERT INTO `tb_navbar` VALUES (14, 1, 10, '资料与文档', '/documentAndData', 0, '2023-02-21 13:55:36', '2023-02-21 13:55:39');
INSERT INTO `tb_navbar` VALUES (15, 1, 11, '文档', '/document', 14, '2023-02-21 13:56:06', '2023-02-21 13:56:08');
INSERT INTO `tb_navbar` VALUES (16, 1, 12, '博客', '/blog', 14, '2023-02-21 13:56:39', '2023-02-21 13:56:43');
INSERT INTO `tb_navbar` VALUES (17, 1, 13, '关于我们', '/abortUs', 0, '2023-02-21 13:57:15', '2023-02-21 13:57:20');
INSERT INTO `tb_navbar` VALUES (18, 1, 14, 'Breze简介', '/brezeInfo', 17, '2023-02-21 13:57:51', '2023-02-21 13:57:53');
INSERT INTO `tb_navbar` VALUES (19, 1, 15, '领导团队', '/team', 17, '2023-02-21 13:58:21', '2023-02-21 13:58:23');
INSERT INTO `tb_navbar` VALUES (20, 1, 16, '联系我们', '/callUs', 17, '2023-02-21 13:58:48', '2023-02-21 13:58:50');

-- ----------------------------
-- Table structure for tb_oss
-- ----------------------------
DROP TABLE IF EXISTS `tb_oss`;
CREATE TABLE `tb_oss`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'OSS文件ID',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件名称',
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件地址',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '所属用户ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件类型',
  `state` int(11) NULL DEFAULT NULL COMMENT 'OSS文件状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'OSS文件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_oss
-- ----------------------------
INSERT INTO `tb_oss` VALUES ('298aa569548c42ceafda7de38b894c2f', 'b0ee916658e147f4b79dd384b265e15a', 'http://qiniuyun.tylt.xyz/b0ee916658e147f4b79dd384b265e15a.jpg', NULL, NULL, NULL, '2023-03-01 15:27:50', '2023-03-01 15:27:50');
INSERT INTO `tb_oss` VALUES ('2e3df5fd5704434a931e73c5923ef910', 'fa263801baf64e0ea54f096c00afb94c', 'http://qiniuyun.tylt.xyz/fa263801baf64e0ea54f096c00afb94c.jpg', NULL, NULL, NULL, '2023-03-01 16:20:14', '2023-03-01 16:20:14');
INSERT INTO `tb_oss` VALUES ('3d18aa5451844e018ee5dd3b23eddec3', '9a225e75d0ad4dc182f7357cef003ac2', 'http://qiniuyun.tylt.xyz/9a225e75d0ad4dc182f7357cef003ac2.jpg', NULL, NULL, NULL, '2023-03-01 16:03:11', '2023-03-01 16:03:11');
INSERT INTO `tb_oss` VALUES ('58414be521664acaa9461138f483336b', '340233397eb14cf6b4a6c9148f910e76', 'http://qiniuyun.tylt.xyz/340233397eb14cf6b4a6c9148f910e76.jpg', NULL, NULL, NULL, '2023-03-01 16:10:59', '2023-03-01 16:10:59');
INSERT INTO `tb_oss` VALUES ('73f67769212d48809419a7e664594a11', 'aed979f289fc4ef48cf5da0a1d29e286', 'http://qiniuyun.tylt.xyz/aed979f289fc4ef48cf5da0a1d29e286.jpg', NULL, NULL, NULL, '2023-03-01 16:08:35', '2023-03-01 16:08:35');

SET FOREIGN_KEY_CHECKS = 1;
