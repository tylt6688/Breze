/*
 Navicat Premium Data Transfer

 Source Server         : leochan
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : breze_portal

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 08/10/2022 09:44:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_content
-- ----------------------------
DROP TABLE IF EXISTS `main_content`;
CREATE TABLE `main_content`  (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主页内容模块id',
                                 `navbar_id` bigint(20) NULL DEFAULT NULL COMMENT '导航栏Id',
                                 `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块标题',
                                 `title_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块简介',
                                 `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容模块图片',
                                 `router_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指定路由跳转',
                                 `button_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮信息',
                                 `create_time` datetime NOT NULL COMMENT '创建时间',
                                 `update_time` datetime NOT NULL COMMENT '更新时间',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主体内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of main_content
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模块展示表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mode_card
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页轮播图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES (1, 'http://qiniuyun.tylt.xyz/a2198f95c14d469398ca7458ac15527e.jpeg', '测试数据', 1, '2022-08-18 11:03:04', '2022-08-18 11:03:07');
INSERT INTO `tb_banner` VALUES (2, 'http://qiniuyun.tylt.xyz/667efbee650142de8b48682f93a582b0.jpeg', '测试数据', 2, '2022-08-18 11:03:09', '2022-08-18 11:03:12');
INSERT INTO `tb_banner` VALUES (3, 'http://qiniuyun.tylt.xyz/0097c12511e74321a6c2c1d20df5082f.jpeg', '测试数据', 3, '2022-08-18 11:03:14', '2022-08-18 11:03:17');
INSERT INTO `tb_banner` VALUES (4, 'http://qiniuyun.tylt.xyz/57fd75be723f4306b0f19ffa610998ae.jpeg', '测试数据', 4, '2022-08-18 11:03:19', '2022-08-18 11:03:22');
INSERT INTO `tb_banner` VALUES (5, 'http://qiniuyun.tylt.xyz/2cbb060f17aa448a854a958f3ddd26a9.jpg', '测试数据', 5, '2022-08-18 11:03:24', '2022-08-18 11:03:27');
INSERT INTO `tb_banner` VALUES (6, 'http://qiniuyun.tylt.xyz/18eacfa3757f4ad892af6554d70ac857.png', '测试数据', 6, '2022-08-18 11:03:29', '2022-08-18 11:03:32');

-- ----------------------------
-- Table structure for tb_navbar
-- ----------------------------
DROP TABLE IF EXISTS `tb_navbar`;
CREATE TABLE `tb_navbar`  (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '导航标题id',
                              `flag` bigint(20) NULL DEFAULT NULL,
                              `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题名称',
                              `title_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转路径',
                              `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父id',
                              `create_time` datetime NOT NULL COMMENT '创建时间',
                              `update_time` datetime NOT NULL COMMENT '更新时间',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '导航连接表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_navbar
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
