/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : breze_portal

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 29/08/2022 16:58:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Table structure for tb_index_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_index_news`;
CREATE TABLE `tb_index_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_index_news
-- ----------------------------
INSERT INTO `tb_index_news` VALUES (1, '新闻一号', '新闻一号内容', '2022-04-16 01:06:37');
INSERT INTO `tb_index_news` VALUES (2, '新闻二号', '新闻二号内容', '2022-04-16 23:24:39');
INSERT INTO `tb_index_news` VALUES (3, '新闻三号', '新闻三号内容', '2022-04-14 23:24:48');
INSERT INTO `tb_index_news` VALUES (4, '新闻四号', '新闻四号内容', '2022-04-16 23:25:04');
INSERT INTO `tb_index_news` VALUES (5, '新闻五号', '新闻五号内容', '2022-05-26 15:57:46');
INSERT INTO `tb_index_news` VALUES (6, '新闻六号', '新闻六号内容', '2022-05-26 15:58:15');

-- ----------------------------
-- Table structure for tb_index_notify
-- ----------------------------
DROP TABLE IF EXISTS `tb_index_notify`;
CREATE TABLE `tb_index_notify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_index_notify
-- ----------------------------
INSERT INTO `tb_index_notify` VALUES (1, '通知公告一号', '<p>通知公告一号内容</p>', '2022-04-16 01:13:49');
INSERT INTO `tb_index_notify` VALUES (2, '通知公告二号', '通知公告二号', '2022-04-15 01:44:34');
INSERT INTO `tb_index_notify` VALUES (3, '通知公告三号', '通知公告三号', '2022-04-14 01:45:02');
INSERT INTO `tb_index_notify` VALUES (5, '通知公告四号', '通知公告四号', '2022-04-08 01:49:28');
INSERT INTO `tb_index_notify` VALUES (6, '通知公告五号', '<p>通知公告五号</p>', '2022-04-16 16:08:38');
INSERT INTO `tb_index_notify` VALUES (7, '通知公告六号', '<p>通知公告六号</p>', '2022-04-23 09:37:52');

-- ----------------------------
-- Table structure for tb_index_presence
-- ----------------------------
DROP TABLE IF EXISTS `tb_index_presence`;
CREATE TABLE `tb_index_presence`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_index_presence
-- ----------------------------
INSERT INTO `tb_index_presence` VALUES (1, '动态天地', '动态天地内容', '2022-04-16 01:14:20');
INSERT INTO `tb_index_presence` VALUES (2, '动态天地', '动态天地二号', '2022-04-16 23:26:05');
INSERT INTO `tb_index_presence` VALUES (3, '动态天地', '动态天地三号', '2022-04-16 23:26:03');
INSERT INTO `tb_index_presence` VALUES (4, '动态天地', '动态天地四号', '2022-04-16 23:26:21');
INSERT INTO `tb_index_presence` VALUES (5, '动态天地', '动态天地四号', '2022-05-26 23:42:12');
INSERT INTO `tb_index_presence` VALUES (6, '动态天地', '动态天地四号', '2022-05-26 23:42:19');

-- ----------------------------
-- Table structure for tb_index_thought
-- ----------------------------
DROP TABLE IF EXISTS `tb_index_thought`;
CREATE TABLE `tb_index_thought`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_index_thought
-- ----------------------------
INSERT INTO `tb_index_thought` VALUES (1, '习近平会见第九次全国信访工作会议代表', '思政教育内容', '2022-04-16 01:14:38');
INSERT INTO `tb_index_thought` VALUES (2, '习近平回信勉励南京大学留学归国青年学者 在坚持立德树人推动科技自立自强上再创佳绩 在坚定文化自信讲好中国故事上争做表率', '思政教育二号', '2022-04-16 23:27:14');
INSERT INTO `tb_index_thought` VALUES (3, '中共中央政治局常务委员会召开会议 分析当前新冠肺炎疫情防控形势 研究部署抓紧抓实疫情防控重点工作 中共中央总书记习近平主持会议', '思政教育二号', '2022-04-16 23:27:26');
INSERT INTO `tb_index_thought` VALUES (4, '共走和平发展大道 共谋合作共赢大计（聚焦博鳌亚洲论坛2022年年会）\r\n', '思政教育二号', '2022-04-15 23:27:38');
INSERT INTO `tb_index_thought` VALUES (5, '在中央政协工作会议暨庆祝中国人民政治协商会议成立70周年大会上的讲话\r\n', '思政教育四号', '2022-05-26 23:42:30');
INSERT INTO `tb_index_thought` VALUES (6, '十三届全国人大五次会议在京开幕\r\n', '思政教育四号', '2022-05-26 23:42:36');

SET FOREIGN_KEY_CHECKS = 1;
