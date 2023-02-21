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

 Date: 21/02/2023 16:51:18
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
INSERT INTO `mode_card` VALUES (6, '图片管理', 'dfg', 'sdg', 'sdg', '2022-10-18 16:58:08', '2022-10-18 16:58:08');

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
                                   `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍图',
                                   `back_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图',
                                   `create_time` datetime NOT NULL COMMENT '创建时间',
                                   `update_time` datetime NOT NULL COMMENT '更新时间',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主体内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of simple_content
-- ----------------------------
INSERT INTO `simple_content` VALUES (1, '', '存在的含义', NULL, '', 1, '', 0, NULL, NULL, '2023-02-10 15:27:45', '2023-02-10 15:27:48');
INSERT INTO `simple_content` VALUES (2, '35df0fe1fe7c4de8b46a7051c6ad688f', 'Breze管理系统', '后台信息管理系统', '前后端分离模式', 2, '/managerSystem', 1, NULL, NULL, '2023-02-10 15:29:15', '2023-02-10 15:29:18');
INSERT INTO `simple_content` VALUES (3, '35df0fe1fe7c4de8b46a7051c6ad688f', 'Breze大屏展示系统', '大屏信息展示平台', '前后端分离模式', 3, '/bigPingSystem', 1, NULL, NULL, '2023-02-10 15:32:05', '2023-02-10 15:32:07');
INSERT INTO `simple_content` VALUES (4, '35df0fe1fe7c4de8b46a7051c6ad688f', 'Breze小程序', '小程序使用平台', '前后端分离模式', 4, '/xiaoChengXu', 1, NULL, NULL, '2023-02-10 15:33:13', '2023-02-10 15:33:16');
INSERT INTO `simple_content` VALUES (5, '', '推荐文章', NULL, NULL, 5, NULL, 0, NULL, NULL, '2023-02-10 15:34:10', '2023-02-10 15:34:13');
INSERT INTO `simple_content` VALUES (6, '35df0fe1fe7c4de8b46a7051c6ad688f', '电脑', '学会使用电脑', '工欲善其事必先利其器,这也是我为什么先写硬件以及系统的原因，只有身体棒，你才可以去做你想做的事情。其他一切都免谈！搞计算机的人，如果自己的枪都磨不好，你拿什么上战场呢？', 6, '/learnComputer', 5, NULL, NULL, '2023-02-10 15:35:27', '2023-02-10 15:35:31');
INSERT INTO `simple_content` VALUES (7, '35df0fe1fe7c4de8b46a7051c6ad688f', '基础', '计算机基础知识点', '介绍了计算机发展历史、操作界面等基本知识和常规操作方法', 7, '/baseZhishi', 5, NULL, NULL, '2023-02-10 15:38:31', '2023-02-10 15:38:42');
INSERT INTO `simple_content` VALUES (8, '35df0fe1fe7c4de8b46a7051c6ad688f', '教育', '如何去贯彻和奉行教育的根本', '教育是每个人所拥有的权利和做一个有素质公民应尽的义务。教育的含义是十分广泛的，但无论是教育任何一方面的内容，归结到其本质离不开“学习”二字，学习完全是一种属于自己本身的、后天的一种行为。', 8, '/teachShare', 5, NULL, NULL, '2023-02-10 15:39:32', '2023-02-10 15:39:36');
INSERT INTO `simple_content` VALUES (9, '35df0fe1fe7c4de8b46a7051c6ad688f', '起源', '计算机起源与发展历程', '在原始社会中，人类开始使用结绳，垒石，枝条或刻字等方式进行辅助计算和计数的工具。\r\n\r\n在春秋时期，我们的祖先发明了算筹计数的 “ 筹算法 ” 。\r\n\r\n公元六世纪，中国开始使用算盘作为计算工具，算盘是我国人民独特的创造，是第一种彻底使用十进制计算的工具。', 9, '/qiyuan', 5, NULL, NULL, '2023-02-10 15:42:00', '2023-02-10 15:42:03');
INSERT INTO `simple_content` VALUES (10, NULL, 'sdgs', '', NULL, 10, NULL, 0, NULL, NULL, '2023-02-21 11:08:39', '2023-02-21 11:08:42');

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

SET FOREIGN_KEY_CHECKS = 1;
