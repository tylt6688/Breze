/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : superfusionteachingplatform

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 13/07/2022 21:13:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_handle
-- ----------------------------
DROP TABLE IF EXISTS `log_handle`;
CREATE TABLE `log_handle`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_time` datetime NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_handle
-- ----------------------------

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (1, '2022-06-23 17:20:07', 1, 0);
INSERT INTO `log_login` VALUES (2, '2022-06-24 10:03:24', 11, 0);
INSERT INTO `log_login` VALUES (3, '2022-07-06 10:46:06', 1, 0);
INSERT INTO `log_login` VALUES (4, '2022-07-06 14:08:37', 1, 0);
INSERT INTO `log_login` VALUES (5, '2022-07-06 14:17:34', 1, 0);
INSERT INTO `log_login` VALUES (6, '2022-07-13 20:46:19', 1, 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `exception` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (7, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-12 21:45:42', NULL, '27');
INSERT INTO `sys_log` VALUES (8, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-12 21:45:41', NULL, '191');
INSERT INTO `sys_log` VALUES (9, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-12 21:45:44', NULL, '13');
INSERT INTO `sys_log` VALUES (10, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:46:19', NULL, '31');
INSERT INTO `sys_log` VALUES (11, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:46:19', NULL, '84');
INSERT INTO `sys_log` VALUES (12, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:46:28', NULL, '16');
INSERT INTO `sys_log` VALUES (13, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:46:28', NULL, '24');
INSERT INTO `sys_log` VALUES (14, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:46:29', NULL, '11');
INSERT INTO `sys_log` VALUES (15, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:46:29', NULL, '40');
INSERT INTO `sys_log` VALUES (16, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:46:31', NULL, '11');
INSERT INTO `sys_log` VALUES (17, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:20', NULL, '31');
INSERT INTO `sys_log` VALUES (18, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:21', NULL, '27');
INSERT INTO `sys_log` VALUES (19, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:21', NULL, '16');
INSERT INTO `sys_log` VALUES (20, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:21', NULL, '10');
INSERT INTO `sys_log` VALUES (21, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:26', NULL, '20');
INSERT INTO `sys_log` VALUES (22, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:26', NULL, '20');
INSERT INTO `sys_log` VALUES (23, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:26', NULL, '9');
INSERT INTO `sys_log` VALUES (24, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:26', NULL, '12');
INSERT INTO `sys_log` VALUES (25, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:48', NULL, '22');
INSERT INTO `sys_log` VALUES (26, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:48', NULL, '23');
INSERT INTO `sys_log` VALUES (27, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:49', NULL, '7');
INSERT INTO `sys_log` VALUES (28, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:49', NULL, '8');
INSERT INTO `sys_log` VALUES (29, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:53', NULL, '17');
INSERT INTO `sys_log` VALUES (30, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:53', NULL, '19');
INSERT INTO `sys_log` VALUES (31, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:53', NULL, '9');
INSERT INTO `sys_log` VALUES (32, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:47:53', NULL, '9');
INSERT INTO `sys_log` VALUES (33, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:04', NULL, '20');
INSERT INTO `sys_log` VALUES (34, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:04', NULL, '23');
INSERT INTO `sys_log` VALUES (35, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:04', NULL, '10');
INSERT INTO `sys_log` VALUES (36, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:04', NULL, '10');
INSERT INTO `sys_log` VALUES (37, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:08', NULL, '21');
INSERT INTO `sys_log` VALUES (38, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:08', NULL, '20');
INSERT INTO `sys_log` VALUES (39, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:09', NULL, '7');
INSERT INTO `sys_log` VALUES (40, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:09', NULL, '8');
INSERT INTO `sys_log` VALUES (41, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:20', NULL, '19');
INSERT INTO `sys_log` VALUES (42, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:20', NULL, '20');
INSERT INTO `sys_log` VALUES (43, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:20', NULL, '8');
INSERT INTO `sys_log` VALUES (44, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:48:20', NULL, '9');
INSERT INTO `sys_log` VALUES (45, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:49:51', NULL, '98');
INSERT INTO `sys_log` VALUES (46, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:49:53', NULL, '5');
INSERT INTO `sys_log` VALUES (47, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:10', NULL, '15');
INSERT INTO `sys_log` VALUES (48, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:10', NULL, '16');
INSERT INTO `sys_log` VALUES (49, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:10', NULL, '5');
INSERT INTO `sys_log` VALUES (50, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:10', NULL, '7');
INSERT INTO `sys_log` VALUES (51, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:14', NULL, '6');
INSERT INTO `sys_log` VALUES (52, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:50:14', NULL, '28');
INSERT INTO `sys_log` VALUES (53, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:15', NULL, '8');
INSERT INTO `sys_log` VALUES (54, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:50:15', NULL, '6');
INSERT INTO `sys_log` VALUES (55, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:16', NULL, '8');
INSERT INTO `sys_log` VALUES (56, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:50:18', NULL, '8');
INSERT INTO `sys_log` VALUES (57, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:18', NULL, '9');
INSERT INTO `sys_log` VALUES (58, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:19', NULL, '13');
INSERT INTO `sys_log` VALUES (59, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:24', NULL, '200');
INSERT INTO `sys_log` VALUES (60, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:26', NULL, '20');
INSERT INTO `sys_log` VALUES (61, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:26', NULL, '14');
INSERT INTO `sys_log` VALUES (62, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:50:27', NULL, '5');
INSERT INTO `sys_log` VALUES (63, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:27', NULL, '7');
INSERT INTO `sys_log` VALUES (64, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:27', NULL, '6');
INSERT INTO `sys_log` VALUES (65, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 20:50:33', NULL, '5');
INSERT INTO `sys_log` VALUES (66, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:33', NULL, '9');
INSERT INTO `sys_log` VALUES (67, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:42', NULL, '6');
INSERT INTO `sys_log` VALUES (68, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/5', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:47', NULL, '5');
INSERT INTO `sys_log` VALUES (69, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/39', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:50', NULL, '15');
INSERT INTO `sys_log` VALUES (70, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:52', NULL, '6');
INSERT INTO `sys_log` VALUES (71, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/48', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:55', NULL, '10');
INSERT INTO `sys_log` VALUES (72, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/6', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:57', NULL, '9');
INSERT INTO `sys_log` VALUES (73, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:57', NULL, '8');
INSERT INTO `sys_log` VALUES (74, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:50:59', NULL, '4');
INSERT INTO `sys_log` VALUES (75, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/27', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:00', NULL, '2');
INSERT INTO `sys_log` VALUES (76, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/51', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:05', NULL, '9');
INSERT INTO `sys_log` VALUES (77, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:08', NULL, '6');
INSERT INTO `sys_log` VALUES (78, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/56', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:18', NULL, '10');
INSERT INTO `sys_log` VALUES (79, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:20', NULL, '4');
INSERT INTO `sys_log` VALUES (80, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/41', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:25', NULL, '8');
INSERT INTO `sys_log` VALUES (81, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:27', NULL, '5');
INSERT INTO `sys_log` VALUES (82, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/53', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:30', NULL, '7');
INSERT INTO `sys_log` VALUES (83, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:32', NULL, '3');
INSERT INTO `sys_log` VALUES (84, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/49', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:34', NULL, '8');
INSERT INTO `sys_log` VALUES (85, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:36', NULL, '7');
INSERT INTO `sys_log` VALUES (86, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/54', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:38', NULL, '15');
INSERT INTO `sys_log` VALUES (87, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:41', NULL, '6');
INSERT INTO `sys_log` VALUES (88, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/22', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:43', NULL, '9');
INSERT INTO `sys_log` VALUES (89, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:45', NULL, '3');
INSERT INTO `sys_log` VALUES (90, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/20', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:47', NULL, '8');
INSERT INTO `sys_log` VALUES (91, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:49', NULL, '4');
INSERT INTO `sys_log` VALUES (92, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:54', NULL, '1');
INSERT INTO `sys_log` VALUES (93, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/42', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:51:59', NULL, '10');
INSERT INTO `sys_log` VALUES (94, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:02', NULL, '3');
INSERT INTO `sys_log` VALUES (95, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/38', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:04', NULL, '8');
INSERT INTO `sys_log` VALUES (96, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:06', NULL, '4');
INSERT INTO `sys_log` VALUES (97, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:09', NULL, '1');
INSERT INTO `sys_log` VALUES (98, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/44', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:13', NULL, '2');
INSERT INTO `sys_log` VALUES (99, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/45', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:19', NULL, '8');
INSERT INTO `sys_log` VALUES (100, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:21', NULL, '5');
INSERT INTO `sys_log` VALUES (101, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/46', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:23', NULL, '5');
INSERT INTO `sys_log` VALUES (102, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:25', NULL, '4');
INSERT INTO `sys_log` VALUES (103, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:28', NULL, '8');
INSERT INTO `sys_log` VALUES (104, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:30', NULL, '4');
INSERT INTO `sys_log` VALUES (105, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/50', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:33', NULL, '7');
INSERT INTO `sys_log` VALUES (106, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:35', NULL, '5');
INSERT INTO `sys_log` VALUES (107, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/55', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:37', NULL, '7');
INSERT INTO `sys_log` VALUES (108, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:39', NULL, '4');
INSERT INTO `sys_log` VALUES (109, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/44', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:41', NULL, '11');
INSERT INTO `sys_log` VALUES (110, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:43', NULL, '4');
INSERT INTO `sys_log` VALUES (111, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/27', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:46', NULL, '9');
INSERT INTO `sys_log` VALUES (112, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:48', NULL, '5');
INSERT INTO `sys_log` VALUES (113, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/40', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:52', NULL, '10');
INSERT INTO `sys_log` VALUES (114, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:55', NULL, '3');
INSERT INTO `sys_log` VALUES (115, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/34', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:57', NULL, '9');
INSERT INTO `sys_log` VALUES (116, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:52:59', NULL, '3');
INSERT INTO `sys_log` VALUES (117, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/59', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:00', NULL, '5');
INSERT INTO `sys_log` VALUES (118, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:02', NULL, '3');
INSERT INTO `sys_log` VALUES (119, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/57', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:08', NULL, '6');
INSERT INTO `sys_log` VALUES (120, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:10', NULL, '4');
INSERT INTO `sys_log` VALUES (121, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/58', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:13', NULL, '8');
INSERT INTO `sys_log` VALUES (122, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:15', NULL, '3');
INSERT INTO `sys_log` VALUES (123, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/33', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:17', NULL, '9');
INSERT INTO `sys_log` VALUES (124, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:19', NULL, '4');
INSERT INTO `sys_log` VALUES (125, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/26', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:21', NULL, '7');
INSERT INTO `sys_log` VALUES (126, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:23', NULL, '2');
INSERT INTO `sys_log` VALUES (127, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/35', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:27', NULL, '7');
INSERT INTO `sys_log` VALUES (128, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:29', NULL, '3');
INSERT INTO `sys_log` VALUES (129, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/52', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:31', NULL, '6');
INSERT INTO `sys_log` VALUES (130, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:33', NULL, '4');
INSERT INTO `sys_log` VALUES (131, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/32', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:35', NULL, '6');
INSERT INTO `sys_log` VALUES (132, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:37', NULL, '2');
INSERT INTO `sys_log` VALUES (133, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/28', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:40', NULL, '8');
INSERT INTO `sys_log` VALUES (134, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:43', NULL, '3');
INSERT INTO `sys_log` VALUES (135, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:56', NULL, '12');
INSERT INTO `sys_log` VALUES (136, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:56', NULL, '11');
INSERT INTO `sys_log` VALUES (137, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:56', NULL, '3');
INSERT INTO `sys_log` VALUES (138, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:53:56', NULL, '7');
INSERT INTO `sys_log` VALUES (139, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:02', NULL, '3');
INSERT INTO `sys_log` VALUES (140, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:37', NULL, '8');
INSERT INTO `sys_log` VALUES (141, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:37', NULL, '9');
INSERT INTO `sys_log` VALUES (142, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:37', NULL, '4');
INSERT INTO `sys_log` VALUES (143, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:43', NULL, '5');
INSERT INTO `sys_log` VALUES (144, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:43', NULL, '6');
INSERT INTO `sys_log` VALUES (145, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:43', NULL, '5');
INSERT INTO `sys_log` VALUES (146, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:53', NULL, '7');
INSERT INTO `sys_log` VALUES (147, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:53', NULL, '6');
INSERT INTO `sys_log` VALUES (148, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:53', NULL, '4');
INSERT INTO `sys_log` VALUES (149, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:58', NULL, '7');
INSERT INTO `sys_log` VALUES (150, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:58', NULL, '3');
INSERT INTO `sys_log` VALUES (151, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:54:58', NULL, '6');
INSERT INTO `sys_log` VALUES (152, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:04', NULL, '5');
INSERT INTO `sys_log` VALUES (153, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:04', NULL, '2');
INSERT INTO `sys_log` VALUES (154, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:04', NULL, '6');
INSERT INTO `sys_log` VALUES (155, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:09', NULL, '7');
INSERT INTO `sys_log` VALUES (156, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:09', NULL, '5');
INSERT INTO `sys_log` VALUES (157, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 20:55:09', NULL, '4');
INSERT INTO `sys_log` VALUES (158, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:26', NULL, '33');
INSERT INTO `sys_log` VALUES (159, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:26', NULL, '16');
INSERT INTO `sys_log` VALUES (160, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:26', NULL, '32');
INSERT INTO `sys_log` VALUES (161, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:31', NULL, '51');
INSERT INTO `sys_log` VALUES (162, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:31', NULL, '27');
INSERT INTO `sys_log` VALUES (163, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:31', NULL, '10');
INSERT INTO `sys_log` VALUES (164, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:04:31', NULL, '12');
INSERT INTO `sys_log` VALUES (165, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:10:54', NULL, '82');
INSERT INTO `sys_log` VALUES (166, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:10:55', NULL, '44');
INSERT INTO `sys_log` VALUES (167, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:00', NULL, '14');
INSERT INTO `sys_log` VALUES (168, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:09', NULL, '13');
INSERT INTO `sys_log` VALUES (169, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 21:11:09', NULL, '12');
INSERT INTO `sys_log` VALUES (170, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:10', NULL, '10');
INSERT INTO `sys_log` VALUES (171, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 21:11:10', NULL, '37');
INSERT INTO `sys_log` VALUES (172, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:12', NULL, '7');
INSERT INTO `sys_log` VALUES (173, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:50', NULL, '8');
INSERT INTO `sys_log` VALUES (174, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:51', NULL, '33');
INSERT INTO `sys_log` VALUES (175, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 21:11:51', NULL, '56');
INSERT INTO `sys_log` VALUES (176, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '2022-07-13 21:11:51', NULL, '7');
INSERT INTO `sys_log` VALUES (177, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', '2022-07-13 21:11:51', NULL, '6');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单组件位置(匹配前端动态生成)',
  `type` int(5) NOT NULL COMMENT '类型     0：目录   1：菜单   2：按钮',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `created` datetime NOT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `statu` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', '', 'sys:manage', '', 0, 'el-icon-s-operation', 1, '2021-01-15 18:58:18', '2022-03-19 18:04:58', 0);
INSERT INTO `sys_menu` VALUES (2, 1, '角色管理', '/sys/roles', 'sys:role:select', 'sys/Role', 1, 'el-icon-postcard', 2, '2021-01-15 19:03:45', '2022-04-15 18:26:32', 0);
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/sys/users', 'sys:user:select', 'sys/User', 1, 'el-icon-s-custom', 3, '2021-01-15 19:03:45', '2022-04-15 18:26:38', 0);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', '/sys/menus', 'sys:menu:select', 'sys/Menu', 1, 'el-icon-menu', 4, '2021-01-15 19:03:45', '2022-04-15 18:26:43', 0);
INSERT INTO `sys_menu` VALUES (5, 0, '系统工具', '', 'sys:tools', NULL, 0, 'el-icon-setting', 2, '2021-01-15 19:06:11', '2022-03-17 19:10:54', 0);
INSERT INTO `sys_menu` VALUES (7, 2, '添加角色', '', 'sys:role:insert', '', 2, '', 1, '2021-01-15 23:02:25', '2022-03-09 22:20:40', 0);
INSERT INTO `sys_menu` VALUES (9, 3, '新增用户', NULL, 'sys:user:insert', NULL, 2, NULL, 1, '2021-01-17 21:48:32', '2022-03-24 17:36:12', 0);
INSERT INTO `sys_menu` VALUES (10, 3, '编辑用户', NULL, 'sys:user:update', NULL, 2, NULL, 2, '2021-01-17 21:49:03', '2022-03-24 17:36:41', 0);
INSERT INTO `sys_menu` VALUES (11, 3, '删除用户', NULL, 'sys:user:delete', NULL, 2, NULL, 3, '2021-01-17 21:49:21', NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 3, '分配角色', NULL, 'sys:user:role', NULL, 2, NULL, 4, '2021-01-17 21:49:58', NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 3, '重置密码', NULL, 'sys:user:repass', NULL, 2, NULL, 5, '2021-01-17 21:50:36', NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 2, '修改角色', NULL, 'sys:role:update', NULL, 2, NULL, 2, '2021-01-17 21:51:14', NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '删除角色', NULL, 'sys:role:delete', NULL, 2, NULL, 3, '2021-01-17 21:51:39', NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '分配权限', NULL, 'sys:role:perm', NULL, 2, NULL, 5, '2021-01-17 21:52:02', NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 4, '添加菜单', NULL, 'sys:menu:insert', NULL, 2, NULL, 1, '2021-01-17 21:53:53', '2021-01-17 21:55:28', 0);
INSERT INTO `sys_menu` VALUES (18, 4, '修改菜单', NULL, 'sys:menu:update', NULL, 2, NULL, 2, '2021-01-17 21:56:12', NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 4, '删除菜单', NULL, 'sys:menu:delete', NULL, 2, NULL, 3, '2021-01-17 21:56:36', NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 0, '关于项目', NULL, 'sys:about', NULL, 0, 'el-icon-info', 11, '2022-03-12 00:46:34', '2022-07-06 16:52:06', 0);
INSERT INTO `sys_menu` VALUES (24, 23, '项目介绍', '/about/about', 'sys:about:project', 'about/About', 1, 'el-icon-s-claim', 1, '2022-03-12 16:08:37', '2022-03-24 17:12:40', 0);
INSERT INTO `sys_menu` VALUES (25, 23, '关于我', '/about/me', 'sys:about:me', 'about/Aboutme', 1, 'el-icon-magic-stick', 2, '2022-03-13 10:13:55', '2022-04-21 22:57:54', 0);
INSERT INTO `sys_menu` VALUES (47, 1, '首页管理', '/sys/indexmanage', 'sys:manage:index', 'sys/IndexManage', 1, 'el-icon-c-scale-to-original', 1, '2022-03-27 12:31:36', '2022-04-15 18:26:24', 0);
INSERT INTO `sys_menu` VALUES (60, 0, '日志管理', NULL, 'log:manage', NULL, 0, 'el-icon-tickets', 8, '2022-06-23 16:21:16', '2022-06-23 16:21:25', 0);
INSERT INTO `sys_menu` VALUES (61, 60, '登录日志', '/log/loginlog', 'log:manage:login', 'log/LoginLog', 1, 'el-icon-notebook-2', 1, '2022-06-23 16:24:42', NULL, 0);
INSERT INTO `sys_menu` VALUES (62, 60, '操作日志', '/log/handlelog', 'log:manage:handle', 'log/HandleLog', 1, 'el-icon-edit-outline', 2, '2022-06-23 16:26:01', '2022-06-23 16:29:42', 0);
INSERT INTO `sys_menu` VALUES (63, 0, '项目开发', NULL, 'project:develop', NULL, 0, 'el-icon-sunny', 9, '2022-06-29 13:47:59', NULL, 0);
INSERT INTO `sys_menu` VALUES (64, 63, '代码生成', '/develop/codegener', 'project:develop:codegener', 'develop/CodeGener', 1, 'el-icon-more-outline', 1, '2022-06-29 14:10:35', '2022-06-29 14:13:00', 0);
INSERT INTO `sys_menu` VALUES (65, 0, '平台监控', NULL, 'sys:monitor', NULL, 0, 'el-icon-monitor', 10, '2022-07-06 16:51:58', NULL, 0);
INSERT INTO `sys_menu` VALUES (66, 65, '服务器监控', '/monitor/servermonitor', 'sys:monitor:server', 'monitor/ServerMonitor', 1, 'el-icon-coin', 1, '2022-07-06 16:54:08', NULL, 0);
INSERT INTO `sys_menu` VALUES (67, 1, '部门管理', '/sys/department', 'sys:department:select', 'sys/Department', 1, 'el-icon-office-building', 5, '2022-07-13 20:49:51', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `statu` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'superadmin', '系统默认最高权限拥有者，除管理人员外任何人不可操作', '2022-03-04 12:54:18', '2022-03-27 14:43:57', 0);
INSERT INTO `sys_role` VALUES (2, '普通用户', 'user', '只能进行基础功能操作', '2022-03-04 12:55:00', '2022-06-05 21:18:00', 0);
INSERT INTO `sys_role` VALUES (3, '微信用户', 'wechat', '通过微信小程序登录的用户', '2022-03-09 22:12:56', '2022-03-09 22:17:00', 0);
INSERT INTO `sys_role` VALUES (4, '教师', 'teacher', '一级管理员，放行系统管理之外的其它权限', '2022-03-19 20:16:21', NULL, 0);
INSERT INTO `sys_role` VALUES (5, '普通管理员', 'admin', '赋予除系统管理核心权限之外的其它功能', '2022-03-24 21:59:04', NULL, 0);
INSERT INTO `sys_role` VALUES (6, '20级基础科学学院学生', '20jichustudent', '20级基础科学学院学生', '2022-03-27 14:35:56', NULL, 0);
INSERT INTO `sys_role` VALUES (7, '学生', 'student', '凡是注册学籍的学生都必须赋予此身份', '2022-04-03 10:40:00', '2022-04-20 01:18:17', 0);
INSERT INTO `sys_role` VALUES (8, '二级管理员', 'twoadmin', '二级', '2022-06-09 09:43:40', NULL, 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2257 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (131, 2, 5);
INSERT INTO `sys_role_menu` VALUES (1915, 7, 23);
INSERT INTO `sys_role_menu` VALUES (1916, 7, 24);
INSERT INTO `sys_role_menu` VALUES (1917, 7, 25);
INSERT INTO `sys_role_menu` VALUES (2197, 1, 1);
INSERT INTO `sys_role_menu` VALUES (2198, 1, 47);
INSERT INTO `sys_role_menu` VALUES (2199, 1, 2);
INSERT INTO `sys_role_menu` VALUES (2200, 1, 7);
INSERT INTO `sys_role_menu` VALUES (2201, 1, 14);
INSERT INTO `sys_role_menu` VALUES (2202, 1, 15);
INSERT INTO `sys_role_menu` VALUES (2203, 1, 16);
INSERT INTO `sys_role_menu` VALUES (2204, 1, 3);
INSERT INTO `sys_role_menu` VALUES (2205, 1, 9);
INSERT INTO `sys_role_menu` VALUES (2206, 1, 10);
INSERT INTO `sys_role_menu` VALUES (2207, 1, 11);
INSERT INTO `sys_role_menu` VALUES (2208, 1, 12);
INSERT INTO `sys_role_menu` VALUES (2209, 1, 13);
INSERT INTO `sys_role_menu` VALUES (2210, 1, 4);
INSERT INTO `sys_role_menu` VALUES (2211, 1, 17);
INSERT INTO `sys_role_menu` VALUES (2212, 1, 18);
INSERT INTO `sys_role_menu` VALUES (2213, 1, 19);
INSERT INTO `sys_role_menu` VALUES (2214, 1, 67);
INSERT INTO `sys_role_menu` VALUES (2215, 1, 5);
INSERT INTO `sys_role_menu` VALUES (2247, 1, 60);
INSERT INTO `sys_role_menu` VALUES (2248, 1, 61);
INSERT INTO `sys_role_menu` VALUES (2249, 1, 62);
INSERT INTO `sys_role_menu` VALUES (2250, 1, 63);
INSERT INTO `sys_role_menu` VALUES (2251, 1, 64);
INSERT INTO `sys_role_menu` VALUES (2252, 1, 65);
INSERT INTO `sys_role_menu` VALUES (2253, 1, 66);
INSERT INTO `sys_role_menu` VALUES (2254, 1, 23);
INSERT INTO `sys_role_menu` VALUES (2255, 1, 24);
INSERT INTO `sys_role_menu` VALUES (2256, 1, 25);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一登录用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `statu` int(5) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `truename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_warn` int(11) NULL DEFAULT 1,
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'tylt6688', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', 'http://qiniuyun.tylt.xyz/1b01f1bbaf824924aea8d4658d6d2142.jpg', 'tylt6688@qq.com', '山东省济南市章丘区', '2022-02-28 22:42:39', '2022-04-03 11:49:47', '2022-07-13 20:46:18', 0, '17606409240', '天宇龙腾', 1, NULL, 1);
INSERT INTO `sys_user` VALUES (2, 'slcupc101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '', 'admin@admin.om', '山东东营', '2022-03-12 01:06:10', '2022-05-07 16:45:35', '2022-05-07 16:45:53', 0, '15766174399', '李四', 1, NULL, 1);
INSERT INTO `sys_user` VALUES (3, 'slcupc102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '山东东营', '2022-03-12 01:06:13', '2022-03-29 10:32:23', '2022-06-04 15:48:48', 0, '11012011912', '赵四', 1, NULL, 1);
INSERT INTO `sys_user` VALUES (4, 'slcupc103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '山东威海', '2022-03-19 20:17:18', '2022-03-29 16:02:25', NULL, 0, '15666666666', '刘能', 1, NULL, 1);
INSERT INTO `sys_user` VALUES (11, '202006032142', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '山东济南', '2022-04-19 13:37:58', '2022-06-12 15:05:01', '2022-06-24 10:03:23', 0, '13791007875', '张浩辉', 1, NULL, 1);
INSERT INTO `sys_user` VALUES (12, 'test', '$2a$10$H0dN0RCNZ5eqSgUYhCeQteAoqPLfTQQ2sBJj/y2E8KwKcv3fqMPLm', 'https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png', '13791007875@163.com', NULL, '2022-06-23 14:20:10', NULL, NULL, 0, '13791007875', '测试实例', 1, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 2, 1);
INSERT INTO `sys_user_role` VALUES (12, 4, 4);
INSERT INTO `sys_user_role` VALUES (43, 1, 1);
INSERT INTO `sys_user_role` VALUES (44, 11, 7);
INSERT INTO `sys_user_role` VALUES (46, 3, 5);

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES (6, 'http://qiniuyun.tylt.xyz/a2198f95c14d469398ca7458ac15527e.jpeg', NULL, 5);
INSERT INTO `tb_banner` VALUES (7, 'http://qiniuyun.tylt.xyz/667efbee650142de8b48682f93a582b0.jpeg', NULL, 6);
INSERT INTO `tb_banner` VALUES (8, 'http://qiniuyun.tylt.xyz/0097c12511e74321a6c2c1d20df5082f.jpeg', NULL, 7);
INSERT INTO `tb_banner` VALUES (9, 'http://qiniuyun.tylt.xyz/57fd75be723f4306b0f19ffa610998ae.jpeg', '测试', 8);
INSERT INTO `tb_banner` VALUES (10, 'http://qiniuyun.tylt.xyz/2cbb060f17aa448a854a958f3ddd26a9.jpg', '学校北门', 1);
INSERT INTO `tb_banner` VALUES (11, 'http://qiniuyun.tylt.xyz/18eacfa3757f4ad892af6554d70ac857.png', '第四教学楼', 2);

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `created` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `parent_id` bigint(11) NULL DEFAULT NULL COMMENT '父级id',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES (1, '基础科学学院', '2022-03-11 18:06:51', NULL, 0, '基础科学学院成立于2014年，下设三系两部两办：信息技术系、数学物理系、外语系、马克思主义教学部、体育教学部（体质健康测试中心）、综合办公室、学生工作办公室。承担全校公共基础课的教学及计算机科学与技术、软件工程、物联网工程、信息与计算科学、应用统计学、英语、数据科学与大数据技术等七个本科专业和计算机科学与技术专升本的人才培养任务。');
INSERT INTO `tb_department` VALUES (2, '教育与艺术学院', '2022-03-11 18:06:55', NULL, 0, '教育与艺术学院是培养教育学、艺术学人才的多学科、综合性学院，迄今已有30多年的办学历史。现有专任教师55人，其中教授1人，副教授12人，讲师33人；具有硕士及以上学位教师44人。拥有山东省高等院校教育专家、山东省学前教育专家指导委员会专家委员、山东省创新创业教育导师、东营市社会科学研究专家等一批区域内有影响力的教学科研专家。');
INSERT INTO `tb_department` VALUES (3, '油气工程学院', '2022-03-11 18:06:57', NULL, 0, '油气工程学院是山东石油化工学院最具石油特色的教学院。学院前身为中国石油大学胜利学院的原石油工程系、原资源勘查与信息工程系和原储运与建筑工程系。2011年7月，在原来三系的办学基础上，经过资源整合与优化调整，重新组建了油气工程系。2013年11月，中国石油大学（华东）、胜利石油管理局和东营市人民政府共同签署三方共建协议，油气工程系于2014年7月更名为油气工程学院。');
INSERT INTO `tb_department` VALUES (4, '护理学院', '2022-03-11 18:06:59', NULL, 0, '学院下设护理系、药学系、基础医学部、综合办公室、学生工作办公室等五个部门。近年来，学院先后完成省部级项目2项，厅局级项目10项，校级科研和教研项目12项，获地市级科研成果奖励3项，出版教材及专著2部，发表学术论文100余篇，获国家实用新型发明专利2项。');
INSERT INTO `tb_department` VALUES (5, '文法与经济管理学院', '2022-03-11 18:07:01', NULL, 0, '文法与经济管理学院历史悠久，脉源两支，是在整合原胜利油田师专中文系、政史系资源的基础上成立的，迄今已有40多年的办学历史。\r\n\r\n学院下设中文系、法学系、经济管理系和综合办公室、学生工作办公室、实验教学中心。现有教职工65人，其中专任教师58人、辅导员7人。专任教师中教授2人，副教授23人，讲师29人，助教3人，具有博士学位教师4人。1人获东营区有突出贡献的中青年专家、2人获学校教学名师、2人获东营市优秀社会科学研究专家称号。');
INSERT INTO `tb_department` VALUES (6, '思达创新创业学院', '2022-03-25 18:21:53', NULL, 0, '思达创新创业学院成立于2020年，是学校直属二级部门，负责学校创新创业工作的统筹协调，其前身“思达书院”。\r\n\r\n思达创新创业学院主要职责：负责全校大学生创新创业教育，组织开展大学生创新创业训练计划项目的相关工作，组织参加全国“互联网+”、“挑战杯”等创新创业类学科竞赛，指导大学生知识产权成果的申报维护，并为创业大学生企业提供相关指导。');
INSERT INTO `tb_department` VALUES (7, '信息技术系', '2022-05-20 23:20:58', NULL, 1, NULL);
INSERT INTO `tb_department` VALUES (8, '英语系', '2022-05-20 23:21:19', NULL, 1, NULL);
INSERT INTO `tb_department` VALUES (9, '教育系', '2022-05-20 23:24:22', NULL, 2, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_index_news
-- ----------------------------
INSERT INTO `tb_index_news` VALUES (1, '我院举办线上学术讲座\r\n', '新闻一号内容', '2022-04-16 01:06:37');
INSERT INTO `tb_index_news` VALUES (2, '外语系成功组织“外教社·词达人杯”全国大学生英语词汇能力大赛山东分赛区校园初赛\r\n', '新闻二号', '2022-04-16 23:24:39');
INSERT INTO `tb_index_news` VALUES (3, '马克思主义教学部举办“萌新磨课会”教学研讨活动\r\n', '新闻二号', '2022-04-14 23:24:48');
INSERT INTO `tb_index_news` VALUES (4, '学院成功举办21级计算机类学生学科竞赛宣讲会\r\n', '新闻二号', '2022-04-16 23:25:04');
INSERT INTO `tb_index_news` VALUES (5, '2022年度高层次人才公开招聘简章', '山东石油化工学院是经教育部批准，由山东省人民政府设立的全日制公办普通本科高校，前身为中国石油大学胜利学院。\r\n\r\n入选首批山东省现代产业学院建设名单。', '2022-05-26 15:57:46');
INSERT INTO `tb_index_news` VALUES (6, '胜华化工集团联合招聘博士（石大胜华学者）简章', '', '2022-05-26 15:58:15');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_index_notify
-- ----------------------------
INSERT INTO `tb_index_notify` VALUES (1, '关于举办黄河口地名文化研究成果征集活动的通知\r\n', '<p>通知公告一号内容我加一点再加一点</p>', '2022-04-16 01:13:49');
INSERT INTO `tb_index_notify` VALUES (2, '基础科学学院关于2022届本科生毕业设计（论文）查重检测的通知\r\n', '通知公告二号', '2022-04-15 01:44:34');
INSERT INTO `tb_index_notify` VALUES (3, '关于推选第九届“东营市杰出工程师”候选人的通知\r\n', '通知公告二号', '2022-04-14 01:45:02');
INSERT INTO `tb_index_notify` VALUES (5, '关于更新完善我省哲学社会科学专家库信息的通知\r\n', '通知公告二号', '2022-04-08 01:49:28');
INSERT INTO `tb_index_notify` VALUES (6, '师生去体育馆进行全员核酸检测', '<p>大家伙子都听我的啊</p>', '2022-04-16 16:08:38');
INSERT INTO `tb_index_notify` VALUES (7, '准备2020届毕业答辩事宜', '<p>中期答辩时间</p>', '2022-04-23 09:37:52');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_index_presence
-- ----------------------------
INSERT INTO `tb_index_presence` VALUES (1, '基础科学学院2021-2022-2学期第八周卫生检查结果公告', '学生天地内容', '2022-04-16 01:14:20');
INSERT INTO `tb_index_presence` VALUES (2, '我院组织学生学习防溺水防坠冰防滑知识\r\n', '学生天地二号', '2022-04-16 23:26:05');
INSERT INTO `tb_index_presence` VALUES (3, '开学第一课 |“我想对你说”宿舍流动微课堂开讲啦！\r\n', '学生天地三号', '2022-04-16 23:26:03');
INSERT INTO `tb_index_presence` VALUES (4, '实事求是，与时俱进——我院“青马班”举行结业考试\r\n', '学生天地四号', '2022-04-16 23:26:21');
INSERT INTO `tb_index_presence` VALUES (5, '“家校共育，静待花开”——我院召开线上家长会\r\n', '学生天地四号', '2022-05-26 23:42:12');
INSERT INTO `tb_index_presence` VALUES (6, '隐患处处有，安全时时记——我院开展新生实验室安全教育培训\r\n', '学生天地四号', '2022-05-26 23:42:19');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_index_thought
-- ----------------------------
INSERT INTO `tb_index_thought` VALUES (1, '习近平会见第九次全国信访工作会议代表', '思政教育内容', '2022-04-16 01:14:38');
INSERT INTO `tb_index_thought` VALUES (2, '习近平回信勉励南京大学留学归国青年学者 在坚持立德树人推动科技自立自强上再创佳绩 在坚定文化自信讲好中国故事上争做表率', '思政教育二号', '2022-04-16 23:27:14');
INSERT INTO `tb_index_thought` VALUES (3, '中共中央政治局常务委员会召开会议 分析当前新冠肺炎疫情防控形势 研究部署抓紧抓实疫情防控重点工作 中共中央总书记习近平主持会议', '思政教育二号', '2022-04-16 23:27:26');
INSERT INTO `tb_index_thought` VALUES (4, '共走和平发展大道 共谋合作共赢大计（聚焦博鳌亚洲论坛2022年年会）\r\n', '思政教育二号', '2022-04-15 23:27:38');
INSERT INTO `tb_index_thought` VALUES (5, '在中央政协工作会议暨庆祝中国人民政治协商会议成立70周年大会上的讲话\r\n', '思政教育四号', '2022-05-26 23:42:30');
INSERT INTO `tb_index_thought` VALUES (6, '十三届全国人大五次会议在京开幕\r\n', '思政教育四号', '2022-05-26 23:42:36');

-- ----------------------------
-- Table structure for tb_ossfile
-- ----------------------------
DROP TABLE IF EXISTS `tb_ossfile`;
CREATE TABLE `tb_ossfile`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `user_id` bigint(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_ossfile
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
