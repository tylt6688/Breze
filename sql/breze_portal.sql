/*
 Navicat Premium Data Transfer

 Source Server         : leochan
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : 127.0.0.1:3306
 Source Schema         : breze_portal

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 27/10/2022 12:41:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_content
-- ----------------------------
DROP TABLE IF EXISTS `main_content`;
CREATE TABLE `main_content`  (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主页内容模块id',
                                 `oss_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'oss表id',
                                 `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块标题',
                                 `title_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块简介',
                                 `order_num` bigint(20) NULL DEFAULT NULL COMMENT '排序',
                                 `router_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指定路由跳转',
                                 `button_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮信息',
                                 `create_time` datetime(0) NOT NULL COMMENT '创建时间',
                                 `update_time` datetime(0) NOT NULL COMMENT '更新时间',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主体内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_content
-- ----------------------------
INSERT INTO `main_content` VALUES (6, '2e93029f062c451eaa7733a4df395dc9', 'jtrlkhj', 'fgjtyj', 5, 'dfjtrje', 'retery', '2022-10-25 15:56:25', '2022-10-25 15:56:25');
INSERT INTO `main_content` VALUES (10, '92c2bddd8b6b42a5b79660f9de3d46c6', 'rjrtfgd', 'dfherj', 4, 'gfjrtj', 'fjsdrg', '2022-10-27 10:34:08', '2022-10-27 10:34:08');
INSERT INTO `main_content` VALUES (11, '4e5016c850a543048bf46834bcb441f4', '蓝天白云', '清澈的湖泊倒映着蓝蓝的天空', 3, '/1', '立即前往', '2022-10-27 11:33:36', '2022-10-27 11:33:36');

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
                              `create_time` datetime(0) NOT NULL COMMENT '创建时间',
                              `update_time` datetime(0) NOT NULL COMMENT '更新时间',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模块展示表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mode_card
-- ----------------------------
INSERT INTO `mode_card` VALUES (1, '轮播图管理', '轮播图模块功能信息管理', '/portal/banner', 'portal/BannerManage', '2022-10-08 20:19:58', '2022-10-08 20:20:01');
INSERT INTO `mode_card` VALUES (2, '导航栏管理', '导航栏跳转信息管理', '/portal/navbar', 'portal/Navbar', '2022-10-08 20:21:37', '2022-10-08 20:21:40');
INSERT INTO `mode_card` VALUES (3, '内容管理', '主题内容信息管理', '/portal/mainContent', 'portal/MainContent', '2022-10-08 20:22:32', '2022-10-08 20:22:35');
INSERT INTO `mode_card` VALUES (6, '图片管理', 'dfg', 'sdg', 'sdg', '2022-10-18 16:58:08', '2022-10-18 16:58:08');

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner`  (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
                              `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图地址',
                              `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图提示',
                              `order_num` int(11) NULL DEFAULT NULL COMMENT '排序号',
                              `create_time` datetime(0) NOT NULL COMMENT '创建时间',
                              `update_time` datetime(0) NOT NULL COMMENT '更新时间',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页轮播图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES (1, 'http://qiniuyun.tylt.xyz/a2198f95c14d469398ca7458ac15527e.jpeg', '红叶密林', 1, '2022-08-18 11:03:04', '2022-08-18 11:03:07');
INSERT INTO `tb_banner` VALUES (2, 'http://qiniuyun.tylt.xyz/667efbee650142de8b48682f93a582b0.jpeg', '海上沙滩', 2, '2022-08-18 11:03:09', '2022-08-18 11:03:12');
INSERT INTO `tb_banner` VALUES (3, 'http://qiniuyun.tylt.xyz/0097c12511e74321a6c2c1d20df5082f.jpeg', '测试数据', 3, '2022-08-18 11:03:14', '2022-08-18 11:03:17');
INSERT INTO `tb_banner` VALUES (5, 'http://qiniuyun.tylt.xyz/2cbb060f17aa448a854a958f3ddd26a9.jpg', '测试数据', 5, '2022-08-18 11:03:24', '2022-08-18 11:03:27');
INSERT INTO `tb_banner` VALUES (6, 'http://qiniuyun.tylt.xyz/18eacfa3757f4ad892af6554d70ac857.png', '测试数据', 6, '2022-08-18 11:03:29', '2022-08-18 11:03:32');

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
                              `create_time` datetime(0) NOT NULL COMMENT '创建时间',
                              `update_time` datetime(0) NOT NULL COMMENT '更新时间',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '导航连接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_navbar
-- ----------------------------
INSERT INTO `tb_navbar` VALUES (1, 0, 1, '首页', '/indexManage', 0, '2022-10-18 10:53:29', '2022-10-18 10:53:29');
INSERT INTO `tb_navbar` VALUES (2, 0, 3, '在线演示', '/onlineShow', 0, '2022-10-18 14:10:45', '2022-10-18 14:10:48');
INSERT INTO `tb_navbar` VALUES (6, 0, 2, '在线文档', '/onlineWord', 0, '2022-10-18 17:30:33', '2022-10-18 17:30:33');
INSERT INTO `tb_navbar` VALUES (8, 0, 4, '前后端分离', '/1111', 2, '2022-10-24 10:21:22', '2022-10-24 10:21:22');

SET FOREIGN_KEY_CHECKS = 1;
