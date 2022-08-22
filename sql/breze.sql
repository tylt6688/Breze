/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : breze

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 22/08/2022 21:24:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_handle
-- ----------------------------
DROP TABLE IF EXISTS `log_handle`;
CREATE TABLE `log_handle`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '操作日志编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作标题',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备类型',
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求IP地址',
  `request_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `exception` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常记录',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求耗时',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 727 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (7, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '27', '2022-07-12 21:45:42');
INSERT INTO `log_handle` VALUES (8, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '191', '2022-07-12 21:45:41');
INSERT INTO `log_handle` VALUES (9, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-12 21:45:44');
INSERT INTO `log_handle` VALUES (10, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '31', '2022-07-13 20:46:19');
INSERT INTO `log_handle` VALUES (11, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '84', '2022-07-13 20:46:19');
INSERT INTO `log_handle` VALUES (12, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-13 20:46:28');
INSERT INTO `log_handle` VALUES (13, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '24', '2022-07-13 20:46:28');
INSERT INTO `log_handle` VALUES (14, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-13 20:46:29');
INSERT INTO `log_handle` VALUES (15, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '40', '2022-07-13 20:46:29');
INSERT INTO `log_handle` VALUES (16, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-13 20:46:31');
INSERT INTO `log_handle` VALUES (17, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '31', '2022-07-13 20:47:20');
INSERT INTO `log_handle` VALUES (18, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '27', '2022-07-13 20:47:21');
INSERT INTO `log_handle` VALUES (19, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-13 20:47:21');
INSERT INTO `log_handle` VALUES (20, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:47:21');
INSERT INTO `log_handle` VALUES (21, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:47:26');
INSERT INTO `log_handle` VALUES (22, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:47:26');
INSERT INTO `log_handle` VALUES (23, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:47:26');
INSERT INTO `log_handle` VALUES (24, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-13 20:47:26');
INSERT INTO `log_handle` VALUES (25, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-13 20:47:48');
INSERT INTO `log_handle` VALUES (26, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '23', '2022-07-13 20:47:48');
INSERT INTO `log_handle` VALUES (27, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:47:49');
INSERT INTO `log_handle` VALUES (28, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:47:49');
INSERT INTO `log_handle` VALUES (29, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '17', '2022-07-13 20:47:53');
INSERT INTO `log_handle` VALUES (30, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '19', '2022-07-13 20:47:53');
INSERT INTO `log_handle` VALUES (31, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:47:53');
INSERT INTO `log_handle` VALUES (32, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:47:53');
INSERT INTO `log_handle` VALUES (33, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:48:04');
INSERT INTO `log_handle` VALUES (34, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '23', '2022-07-13 20:48:04');
INSERT INTO `log_handle` VALUES (35, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:48:04');
INSERT INTO `log_handle` VALUES (36, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:48:04');
INSERT INTO `log_handle` VALUES (37, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '21', '2022-07-13 20:48:08');
INSERT INTO `log_handle` VALUES (38, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:48:08');
INSERT INTO `log_handle` VALUES (39, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:48:09');
INSERT INTO `log_handle` VALUES (40, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:48:09');
INSERT INTO `log_handle` VALUES (41, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '19', '2022-07-13 20:48:20');
INSERT INTO `log_handle` VALUES (42, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:48:20');
INSERT INTO `log_handle` VALUES (43, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:48:20');
INSERT INTO `log_handle` VALUES (44, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:48:20');
INSERT INTO `log_handle` VALUES (45, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '98', '2022-07-13 20:49:51');
INSERT INTO `log_handle` VALUES (46, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:49:53');
INSERT INTO `log_handle` VALUES (47, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-13 20:50:10');
INSERT INTO `log_handle` VALUES (48, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-13 20:50:10');
INSERT INTO `log_handle` VALUES (49, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:50:10');
INSERT INTO `log_handle` VALUES (50, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:50:10');
INSERT INTO `log_handle` VALUES (51, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:50:14');
INSERT INTO `log_handle` VALUES (52, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '28', '2022-07-13 20:50:14');
INSERT INTO `log_handle` VALUES (53, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:50:15');
INSERT INTO `log_handle` VALUES (54, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-07-13 20:50:15');
INSERT INTO `log_handle` VALUES (55, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:50:16');
INSERT INTO `log_handle` VALUES (56, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2022-07-13 20:50:18');
INSERT INTO `log_handle` VALUES (57, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:50:18');
INSERT INTO `log_handle` VALUES (58, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-13 20:50:19');
INSERT INTO `log_handle` VALUES (59, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '200', '2022-07-13 20:50:24');
INSERT INTO `log_handle` VALUES (60, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-13 20:50:26');
INSERT INTO `log_handle` VALUES (61, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 20:50:26');
INSERT INTO `log_handle` VALUES (62, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-07-13 20:50:27');
INSERT INTO `log_handle` VALUES (63, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:50:27');
INSERT INTO `log_handle` VALUES (64, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:50:27');
INSERT INTO `log_handle` VALUES (65, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-07-13 20:50:33');
INSERT INTO `log_handle` VALUES (66, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:50:33');
INSERT INTO `log_handle` VALUES (67, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:50:42');
INSERT INTO `log_handle` VALUES (68, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/5', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:50:47');
INSERT INTO `log_handle` VALUES (69, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/39', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-13 20:50:50');
INSERT INTO `log_handle` VALUES (70, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:50:52');
INSERT INTO `log_handle` VALUES (71, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/48', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:50:55');
INSERT INTO `log_handle` VALUES (72, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/6', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:50:57');
INSERT INTO `log_handle` VALUES (73, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:50:57');
INSERT INTO `log_handle` VALUES (74, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:50:59');
INSERT INTO `log_handle` VALUES (75, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/27', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 20:51:00');
INSERT INTO `log_handle` VALUES (76, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/51', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:51:05');
INSERT INTO `log_handle` VALUES (77, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:51:08');
INSERT INTO `log_handle` VALUES (78, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/56', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:51:18');
INSERT INTO `log_handle` VALUES (79, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:51:20');
INSERT INTO `log_handle` VALUES (80, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/41', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:51:25');
INSERT INTO `log_handle` VALUES (81, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:51:27');
INSERT INTO `log_handle` VALUES (82, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/53', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:51:30');
INSERT INTO `log_handle` VALUES (83, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:51:32');
INSERT INTO `log_handle` VALUES (84, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/49', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:51:34');
INSERT INTO `log_handle` VALUES (85, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:51:36');
INSERT INTO `log_handle` VALUES (86, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/54', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-13 20:51:38');
INSERT INTO `log_handle` VALUES (87, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:51:41');
INSERT INTO `log_handle` VALUES (88, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/22', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:51:43');
INSERT INTO `log_handle` VALUES (89, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:51:45');
INSERT INTO `log_handle` VALUES (90, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/20', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:51:47');
INSERT INTO `log_handle` VALUES (91, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:51:49');
INSERT INTO `log_handle` VALUES (92, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '1', '2022-07-13 20:51:54');
INSERT INTO `log_handle` VALUES (93, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/42', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:51:59');
INSERT INTO `log_handle` VALUES (94, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:52:02');
INSERT INTO `log_handle` VALUES (95, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/38', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:52:04');
INSERT INTO `log_handle` VALUES (96, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:52:06');
INSERT INTO `log_handle` VALUES (97, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '1', '2022-07-13 20:52:09');
INSERT INTO `log_handle` VALUES (98, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/44', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 20:52:13');
INSERT INTO `log_handle` VALUES (99, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/45', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:52:19');
INSERT INTO `log_handle` VALUES (100, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:52:21');
INSERT INTO `log_handle` VALUES (101, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/46', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:52:23');
INSERT INTO `log_handle` VALUES (102, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:52:25');
INSERT INTO `log_handle` VALUES (103, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/37', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:52:28');
INSERT INTO `log_handle` VALUES (104, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:52:30');
INSERT INTO `log_handle` VALUES (105, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/50', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:52:33');
INSERT INTO `log_handle` VALUES (106, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:52:35');
INSERT INTO `log_handle` VALUES (107, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/55', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:52:37');
INSERT INTO `log_handle` VALUES (108, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:52:39');
INSERT INTO `log_handle` VALUES (109, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/44', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-13 20:52:41');
INSERT INTO `log_handle` VALUES (110, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:52:43');
INSERT INTO `log_handle` VALUES (111, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/27', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:52:46');
INSERT INTO `log_handle` VALUES (112, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:52:48');
INSERT INTO `log_handle` VALUES (113, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/40', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 20:52:52');
INSERT INTO `log_handle` VALUES (114, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:52:55');
INSERT INTO `log_handle` VALUES (115, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/34', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:52:57');
INSERT INTO `log_handle` VALUES (116, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:52:59');
INSERT INTO `log_handle` VALUES (117, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/59', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:53:00');
INSERT INTO `log_handle` VALUES (118, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:53:02');
INSERT INTO `log_handle` VALUES (119, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/57', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:53:08');
INSERT INTO `log_handle` VALUES (120, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:53:10');
INSERT INTO `log_handle` VALUES (121, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/58', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:53:13');
INSERT INTO `log_handle` VALUES (122, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:53:15');
INSERT INTO `log_handle` VALUES (123, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/33', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:53:17');
INSERT INTO `log_handle` VALUES (124, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:53:19');
INSERT INTO `log_handle` VALUES (125, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/26', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:53:21');
INSERT INTO `log_handle` VALUES (126, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 20:53:23');
INSERT INTO `log_handle` VALUES (127, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/35', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:53:27');
INSERT INTO `log_handle` VALUES (128, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:53:29');
INSERT INTO `log_handle` VALUES (129, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/52', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:53:31');
INSERT INTO `log_handle` VALUES (130, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:53:33');
INSERT INTO `log_handle` VALUES (131, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/32', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:53:35');
INSERT INTO `log_handle` VALUES (132, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 20:53:37');
INSERT INTO `log_handle` VALUES (133, '删除菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/delete/28', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:53:40');
INSERT INTO `log_handle` VALUES (134, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:53:43');
INSERT INTO `log_handle` VALUES (135, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-13 20:53:56');
INSERT INTO `log_handle` VALUES (136, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-13 20:53:56');
INSERT INTO `log_handle` VALUES (137, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:53:56');
INSERT INTO `log_handle` VALUES (138, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:53:56');
INSERT INTO `log_handle` VALUES (139, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:54:02');
INSERT INTO `log_handle` VALUES (140, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 20:54:37');
INSERT INTO `log_handle` VALUES (141, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 20:54:37');
INSERT INTO `log_handle` VALUES (142, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:54:37');
INSERT INTO `log_handle` VALUES (143, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:54:43');
INSERT INTO `log_handle` VALUES (144, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:54:43');
INSERT INTO `log_handle` VALUES (145, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:54:43');
INSERT INTO `log_handle` VALUES (146, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:54:53');
INSERT INTO `log_handle` VALUES (147, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:54:53');
INSERT INTO `log_handle` VALUES (148, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:54:53');
INSERT INTO `log_handle` VALUES (149, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:54:58');
INSERT INTO `log_handle` VALUES (150, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-13 20:54:58');
INSERT INTO `log_handle` VALUES (151, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:54:58');
INSERT INTO `log_handle` VALUES (152, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:55:04');
INSERT INTO `log_handle` VALUES (153, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 20:55:04');
INSERT INTO `log_handle` VALUES (154, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 20:55:04');
INSERT INTO `log_handle` VALUES (155, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 20:55:09');
INSERT INTO `log_handle` VALUES (156, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 20:55:09');
INSERT INTO `log_handle` VALUES (157, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 20:55:09');
INSERT INTO `log_handle` VALUES (158, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '33', '2022-07-13 21:04:26');
INSERT INTO `log_handle` VALUES (159, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-13 21:04:26');
INSERT INTO `log_handle` VALUES (160, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '32', '2022-07-13 21:04:26');
INSERT INTO `log_handle` VALUES (161, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '51', '2022-07-13 21:04:31');
INSERT INTO `log_handle` VALUES (162, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '27', '2022-07-13 21:04:31');
INSERT INTO `log_handle` VALUES (163, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 21:04:31');
INSERT INTO `log_handle` VALUES (164, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-13 21:04:31');
INSERT INTO `log_handle` VALUES (165, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '82', '2022-07-13 21:10:54');
INSERT INTO `log_handle` VALUES (166, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '44', '2022-07-13 21:10:55');
INSERT INTO `log_handle` VALUES (167, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 21:11:00');
INSERT INTO `log_handle` VALUES (168, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-13 21:11:09');
INSERT INTO `log_handle` VALUES (169, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2022-07-13 21:11:09');
INSERT INTO `log_handle` VALUES (170, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 21:11:10');
INSERT INTO `log_handle` VALUES (171, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '37', '2022-07-13 21:11:10');
INSERT INTO `log_handle` VALUES (172, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 21:11:12');
INSERT INTO `log_handle` VALUES (173, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 21:11:50');
INSERT INTO `log_handle` VALUES (174, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '33', '2022-07-13 21:11:51');
INSERT INTO `log_handle` VALUES (175, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '56', '2022-07-13 21:11:51');
INSERT INTO `log_handle` VALUES (176, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 21:11:51');
INSERT INTO `log_handle` VALUES (177, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-07-13 21:11:51');
INSERT INTO `log_handle` VALUES (178, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '45', '2022-07-13 21:37:57');
INSERT INTO `log_handle` VALUES (179, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '91', '2022-07-13 21:37:57');
INSERT INTO `log_handle` VALUES (180, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '111', '2022-07-13 21:48:25');
INSERT INTO `log_handle` VALUES (181, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '175', '2022-07-13 21:48:25');
INSERT INTO `log_handle` VALUES (182, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '19', '2022-07-13 22:16:59');
INSERT INTO `log_handle` VALUES (183, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '77', '2022-07-13 22:16:59');
INSERT INTO `log_handle` VALUES (184, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-13 22:17:14');
INSERT INTO `log_handle` VALUES (185, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '51', '2022-07-13 22:17:14');
INSERT INTO `log_handle` VALUES (186, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 22:17:23');
INSERT INTO `log_handle` VALUES (187, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 22:18:09');
INSERT INTO `log_handle` VALUES (188, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '2', '2022-07-13 22:18:15');
INSERT INTO `log_handle` VALUES (189, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 22:18:37');
INSERT INTO `log_handle` VALUES (190, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '39', '2022-07-13 22:18:37');
INSERT INTO `log_handle` VALUES (191, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 22:18:38');
INSERT INTO `log_handle` VALUES (192, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-13 22:18:56');
INSERT INTO `log_handle` VALUES (193, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '44', '2022-07-13 22:18:56');
INSERT INTO `log_handle` VALUES (194, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-13 22:18:56');
INSERT INTO `log_handle` VALUES (195, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '59', '2022-07-13 22:43:16');
INSERT INTO `log_handle` VALUES (196, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '39', '2022-07-13 22:43:16');
INSERT INTO `log_handle` VALUES (197, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '54', '2022-07-13 22:43:17');
INSERT INTO `log_handle` VALUES (198, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '26', '2022-07-13 22:51:19');
INSERT INTO `log_handle` VALUES (199, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-13 22:51:19');
INSERT INTO `log_handle` VALUES (200, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 22:51:20');
INSERT INTO `log_handle` VALUES (201, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 22:51:57');
INSERT INTO `log_handle` VALUES (202, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2022-07-13 22:51:57');
INSERT INTO `log_handle` VALUES (203, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 22:52:24');
INSERT INTO `log_handle` VALUES (204, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 22:52:33');
INSERT INTO `log_handle` VALUES (205, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2022-07-13 22:52:33');
INSERT INTO `log_handle` VALUES (206, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-13 22:52:44');
INSERT INTO `log_handle` VALUES (207, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '46', '2022-07-13 22:52:48');
INSERT INTO `log_handle` VALUES (208, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-07-13 22:52:51');
INSERT INTO `log_handle` VALUES (209, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 22:53:15');
INSERT INTO `log_handle` VALUES (210, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-13 22:56:59');
INSERT INTO `log_handle` VALUES (211, '修改用户头像', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/updateavatar', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4555', '2022-07-13 22:57:13');
INSERT INTO `log_handle` VALUES (212, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-13 22:57:20');
INSERT INTO `log_handle` VALUES (213, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 22:57:20');
INSERT INTO `log_handle` VALUES (214, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 23:01:35');
INSERT INTO `log_handle` VALUES (215, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 23:01:45');
INSERT INTO `log_handle` VALUES (216, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '28', '2022-07-13 23:01:45');
INSERT INTO `log_handle` VALUES (217, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 23:01:51');
INSERT INTO `log_handle` VALUES (218, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-07-13 23:01:51');
INSERT INTO `log_handle` VALUES (219, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-13 23:01:54');
INSERT INTO `log_handle` VALUES (220, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 23:04:36');
INSERT INTO `log_handle` VALUES (221, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '27', '2022-07-13 23:04:36');
INSERT INTO `log_handle` VALUES (222, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-07-13 23:04:47');
INSERT INTO `log_handle` VALUES (223, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 23:04:47');
INSERT INTO `log_handle` VALUES (224, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 23:05:21');
INSERT INTO `log_handle` VALUES (225, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '30', '2022-07-13 23:05:21');
INSERT INTO `log_handle` VALUES (226, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-07-13 23:06:10');
INSERT INTO `log_handle` VALUES (227, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 23:06:10');
INSERT INTO `log_handle` VALUES (228, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B50%5D', NULL, '5', '2022-07-13 23:07:06');
INSERT INTO `log_handle` VALUES (229, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B20%5D', NULL, '4', '2022-07-13 23:07:13');
INSERT INTO `log_handle` VALUES (230, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 23:07:29');
INSERT INTO `log_handle` VALUES (231, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '31', '2022-07-13 23:07:29');
INSERT INTO `log_handle` VALUES (232, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 23:07:36');
INSERT INTO `log_handle` VALUES (233, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 23:08:33');
INSERT INTO `log_handle` VALUES (234, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-07-13 23:08:33');
INSERT INTO `log_handle` VALUES (235, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 23:09:20');
INSERT INTO `log_handle` VALUES (236, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 23:09:33');
INSERT INTO `log_handle` VALUES (237, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 23:09:59');
INSERT INTO `log_handle` VALUES (238, '更新角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '6', '2022-07-13 23:10:03');
INSERT INTO `log_handle` VALUES (239, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-07-13 23:10:05');
INSERT INTO `log_handle` VALUES (240, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-13 23:10:14');
INSERT INTO `log_handle` VALUES (241, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-13 23:10:38');
INSERT INTO `log_handle` VALUES (242, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-13 23:11:32');
INSERT INTO `log_handle` VALUES (243, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-07-13 23:11:32');
INSERT INTO `log_handle` VALUES (244, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-13 23:13:11');
INSERT INTO `log_handle` VALUES (245, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '37', '2022-07-16 10:51:23');
INSERT INTO `log_handle` VALUES (246, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '323', '2022-07-16 10:51:23');
INSERT INTO `log_handle` VALUES (247, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-16 10:51:43');
INSERT INTO `log_handle` VALUES (248, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-07-16 10:51:43');
INSERT INTO `log_handle` VALUES (249, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-16 10:51:57');
INSERT INTO `log_handle` VALUES (250, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '16', '2022-07-16 10:51:57');
INSERT INTO `log_handle` VALUES (251, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-07-16 10:52:18');
INSERT INTO `log_handle` VALUES (252, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-16 10:52:18');
INSERT INTO `log_handle` VALUES (253, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '42', '2022-07-16 10:52:32');
INSERT INTO `log_handle` VALUES (254, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '121', '2022-07-16 10:52:34');
INSERT INTO `log_handle` VALUES (255, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-16 10:52:36');
INSERT INTO `log_handle` VALUES (256, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-07-16 10:52:36');
INSERT INTO `log_handle` VALUES (257, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-16 10:52:44');
INSERT INTO `log_handle` VALUES (258, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-16 10:52:46');
INSERT INTO `log_handle` VALUES (259, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-07-16 10:52:46');
INSERT INTO `log_handle` VALUES (260, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '21', '2022-07-16 10:52:56');
INSERT INTO `log_handle` VALUES (261, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-16 10:52:57');
INSERT INTO `log_handle` VALUES (262, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-07-16 10:53:02');
INSERT INTO `log_handle` VALUES (263, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-16 10:53:02');
INSERT INTO `log_handle` VALUES (264, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-16 10:53:04');
INSERT INTO `log_handle` VALUES (265, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '41', '2022-07-16 10:53:04');
INSERT INTO `log_handle` VALUES (266, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-16 10:53:12');
INSERT INTO `log_handle` VALUES (267, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2022-07-16 10:53:22');
INSERT INTO `log_handle` VALUES (268, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-16 10:53:22');
INSERT INTO `log_handle` VALUES (269, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-16 10:53:26');
INSERT INTO `log_handle` VALUES (270, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-16 10:56:21');
INSERT INTO `log_handle` VALUES (271, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '31', '2022-07-16 10:56:21');
INSERT INTO `log_handle` VALUES (272, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-16 10:56:23');
INSERT INTO `log_handle` VALUES (273, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-16 10:56:24');
INSERT INTO `log_handle` VALUES (274, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-07-16 10:56:24');
INSERT INTO `log_handle` VALUES (275, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-16 11:00:55');
INSERT INTO `log_handle` VALUES (276, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-16 11:00:57');
INSERT INTO `log_handle` VALUES (277, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '30', '2022-07-16 11:00:57');
INSERT INTO `log_handle` VALUES (278, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-16 11:00:58');
INSERT INTO `log_handle` VALUES (279, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '11', '2022-07-16 11:01:36');
INSERT INTO `log_handle` VALUES (280, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '11', '2022-07-16 11:01:36');
INSERT INTO `log_handle` VALUES (281, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '25', '2022-07-16 11:01:36');
INSERT INTO `log_handle` VALUES (282, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '8', '2022-07-16 11:01:37');
INSERT INTO `log_handle` VALUES (283, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-07-16 11:01:37');
INSERT INTO `log_handle` VALUES (284, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-16 11:01:49');
INSERT INTO `log_handle` VALUES (285, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '41', '2022-07-17 22:03:09');
INSERT INTO `log_handle` VALUES (286, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '94', '2022-07-17 22:03:09');
INSERT INTO `log_handle` VALUES (287, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '43', '2022-07-19 19:44:14');
INSERT INTO `log_handle` VALUES (288, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '105', '2022-07-19 19:44:14');
INSERT INTO `log_handle` VALUES (289, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '42', '2022-07-19 20:01:58');
INSERT INTO `log_handle` VALUES (290, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '34', '2022-07-19 20:01:58');
INSERT INTO `log_handle` VALUES (291, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '17', '2022-07-19 20:02:01');
INSERT INTO `log_handle` VALUES (292, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-20 09:07:22');
INSERT INTO `log_handle` VALUES (293, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-20 09:07:27');
INSERT INTO `log_handle` VALUES (294, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '150', '2022-07-20 09:07:27');
INSERT INTO `log_handle` VALUES (295, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '59', '2022-07-20 09:29:48');
INSERT INTO `log_handle` VALUES (296, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '33', '2022-07-20 09:29:48');
INSERT INTO `log_handle` VALUES (297, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-20 09:29:48');
INSERT INTO `log_handle` VALUES (298, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '50', '2022-07-20 09:29:48');
INSERT INTO `log_handle` VALUES (299, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '62', '2022-07-20 09:29:48');
INSERT INTO `log_handle` VALUES (300, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '19', '2022-07-20 09:29:55');
INSERT INTO `log_handle` VALUES (301, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '26', '2022-07-20 09:30:52');
INSERT INTO `log_handle` VALUES (302, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '28', '2022-07-20 09:30:52');
INSERT INTO `log_handle` VALUES (303, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-20 09:31:25');
INSERT INTO `log_handle` VALUES (304, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '23', '2022-07-20 09:32:14');
INSERT INTO `log_handle` VALUES (305, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '13', '2022-07-20 09:32:14');
INSERT INTO `log_handle` VALUES (306, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-20 09:32:14');
INSERT INTO `log_handle` VALUES (307, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '17', '2022-07-20 09:33:29');
INSERT INTO `log_handle` VALUES (308, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '18', '2022-07-20 09:33:29');
INSERT INTO `log_handle` VALUES (309, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '15', '2022-07-20 09:33:29');
INSERT INTO `log_handle` VALUES (310, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '36', '2022-07-20 09:36:09');
INSERT INTO `log_handle` VALUES (311, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '61', '2022-07-20 09:36:09');
INSERT INTO `log_handle` VALUES (312, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '27', '2022-07-20 09:36:09');
INSERT INTO `log_handle` VALUES (313, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '5', '2022-07-20 09:36:10');
INSERT INTO `log_handle` VALUES (314, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-20 09:36:35');
INSERT INTO `log_handle` VALUES (315, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '31', '2022-07-20 09:39:11');
INSERT INTO `log_handle` VALUES (316, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-20 09:39:11');
INSERT INTO `log_handle` VALUES (317, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '22', '2022-07-20 09:39:11');
INSERT INTO `log_handle` VALUES (318, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-20 09:39:16');
INSERT INTO `log_handle` VALUES (319, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-20 09:39:50');
INSERT INTO `log_handle` VALUES (320, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '7', '2022-07-20 09:39:55');
INSERT INTO `log_handle` VALUES (321, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '28', '2022-07-20 09:41:12');
INSERT INTO `log_handle` VALUES (322, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '18', '2022-07-20 09:41:13');
INSERT INTO `log_handle` VALUES (323, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-20 09:41:13');
INSERT INTO `log_handle` VALUES (324, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '4', '2022-07-20 09:41:16');
INSERT INTO `log_handle` VALUES (325, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '24', '2022-07-20 09:57:27');
INSERT INTO `log_handle` VALUES (326, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '36', '2022-07-20 09:57:27');
INSERT INTO `log_handle` VALUES (327, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/12', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-20 10:22:58');
INSERT INTO `log_handle` VALUES (328, '分配用户角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/roleperm/12', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '166', '2022-07-20 10:23:07');
INSERT INTO `log_handle` VALUES (329, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '59', '2022-07-20 10:23:10');
INSERT INTO `log_handle` VALUES (330, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-07-20 10:23:13');
INSERT INTO `log_handle` VALUES (331, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '20', '2022-07-20 10:23:13');
INSERT INTO `log_handle` VALUES (332, '删除角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/delete', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-20 10:23:22');
INSERT INTO `log_handle` VALUES (333, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '10', '2022-07-20 10:23:39');
INSERT INTO `log_handle` VALUES (334, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '36', '2022-07-20 10:23:39');
INSERT INTO `log_handle` VALUES (335, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2022-07-20 10:23:43');
INSERT INTO `log_handle` VALUES (336, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '9', '2022-07-20 10:23:43');
INSERT INTO `log_handle` VALUES (337, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '24', '2022-07-20 10:40:44');
INSERT INTO `log_handle` VALUES (338, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '22', '2022-07-20 10:40:44');
INSERT INTO `log_handle` VALUES (339, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '42', '2022-07-20 10:40:44');
INSERT INTO `log_handle` VALUES (340, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '66', '2022-07-27 09:55:03');
INSERT INTO `log_handle` VALUES (341, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '238', '2022-07-27 09:55:03');
INSERT INTO `log_handle` VALUES (342, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '16', '2022-07-27 09:55:16');
INSERT INTO `log_handle` VALUES (343, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '160', '2022-07-30 23:35:59');
INSERT INTO `log_handle` VALUES (344, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '388', '2022-07-30 23:35:58');
INSERT INTO `log_handle` VALUES (345, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '50', '2022-07-30 23:38:18');
INSERT INTO `log_handle` VALUES (346, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '24', '2022-07-30 23:38:19');
INSERT INTO `log_handle` VALUES (347, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-30 23:46:14');
INSERT INTO `log_handle` VALUES (348, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '122', '2022-07-30 23:46:14');
INSERT INTO `log_handle` VALUES (349, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '14', '2022-07-30 23:46:15');
INSERT INTO `log_handle` VALUES (350, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '37', '2022-07-30 23:46:15');
INSERT INTO `log_handle` VALUES (351, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '12', '2022-07-30 23:46:16');
INSERT INTO `log_handle` VALUES (352, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '3', '2022-07-30 23:47:28');
INSERT INTO `log_handle` VALUES (353, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '94', '2022-07-31 17:27:49');
INSERT INTO `log_handle` VALUES (354, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '320', '2022-07-31 17:27:49');
INSERT INTO `log_handle` VALUES (355, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '26', '2022-07-31 17:27:52');
INSERT INTO `log_handle` VALUES (356, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, '25', '2022-07-31 17:27:58');
INSERT INTO `log_handle` VALUES (357, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '89', '2022-08-05 11:33:10');
INSERT INTO `log_handle` VALUES (358, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '46', '2022-08-05 11:33:10');
INSERT INTO `log_handle` VALUES (359, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '21', '2022-08-05 11:33:14');
INSERT INTO `log_handle` VALUES (360, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '27', '2022-08-05 13:48:36');
INSERT INTO `log_handle` VALUES (361, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '19', '2022-08-05 13:48:37');
INSERT INTO `log_handle` VALUES (362, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '74', '2022-08-05 13:48:42');
INSERT INTO `log_handle` VALUES (363, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '23', '2022-08-05 13:48:42');
INSERT INTO `log_handle` VALUES (364, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-05 13:48:47');
INSERT INTO `log_handle` VALUES (365, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '452', '2022-08-05 13:50:38');
INSERT INTO `log_handle` VALUES (366, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 13:50:40');
INSERT INTO `log_handle` VALUES (367, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/68', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 13:50:43');
INSERT INTO `log_handle` VALUES (368, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '131', '2022-08-05 13:50:49');
INSERT INTO `log_handle` VALUES (369, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 13:50:51');
INSERT INTO `log_handle` VALUES (370, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 13:50:55');
INSERT INTO `log_handle` VALUES (371, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-08-05 13:50:55');
INSERT INTO `log_handle` VALUES (372, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 13:50:56');
INSERT INTO `log_handle` VALUES (373, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '96', '2022-08-05 13:51:01');
INSERT INTO `log_handle` VALUES (374, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 13:51:05');
INSERT INTO `log_handle` VALUES (375, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '22', '2022-08-05 13:51:05');
INSERT INTO `log_handle` VALUES (376, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 13:51:05');
INSERT INTO `log_handle` VALUES (377, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-08-05 13:51:05');
INSERT INTO `log_handle` VALUES (378, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '55', '2022-08-05 13:51:05');
INSERT INTO `log_handle` VALUES (379, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '30', '2022-08-05 13:53:22');
INSERT INTO `log_handle` VALUES (380, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '41', '2022-08-05 13:53:22');
INSERT INTO `log_handle` VALUES (381, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '33', '2022-08-05 13:53:22');
INSERT INTO `log_handle` VALUES (382, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '45', '2022-08-05 13:57:44');
INSERT INTO `log_handle` VALUES (383, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '45', '2022-08-05 13:57:44');
INSERT INTO `log_handle` VALUES (384, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '37', '2022-08-05 13:57:45');
INSERT INTO `log_handle` VALUES (385, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '27', '2022-08-05 13:57:53');
INSERT INTO `log_handle` VALUES (386, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '34', '2022-08-05 13:57:53');
INSERT INTO `log_handle` VALUES (387, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '22', '2022-08-05 13:57:53');
INSERT INTO `log_handle` VALUES (388, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 13:58:00');
INSERT INTO `log_handle` VALUES (389, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '20', '2022-08-05 13:58:00');
INSERT INTO `log_handle` VALUES (390, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 13:58:00');
INSERT INTO `log_handle` VALUES (391, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '57', '2022-08-05 13:58:54');
INSERT INTO `log_handle` VALUES (392, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '57', '2022-08-05 13:58:54');
INSERT INTO `log_handle` VALUES (393, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '75', '2022-08-05 13:58:55');
INSERT INTO `log_handle` VALUES (394, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '29', '2022-08-05 14:08:26');
INSERT INTO `log_handle` VALUES (395, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 14:08:26');
INSERT INTO `log_handle` VALUES (396, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 14:08:26');
INSERT INTO `log_handle` VALUES (397, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '24', '2022-08-05 14:11:17');
INSERT INTO `log_handle` VALUES (398, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '34', '2022-08-05 14:11:17');
INSERT INTO `log_handle` VALUES (399, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '19', '2022-08-05 14:22:30');
INSERT INTO `log_handle` VALUES (400, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '20', '2022-08-05 14:22:30');
INSERT INTO `log_handle` VALUES (401, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '21', '2022-08-05 14:22:41');
INSERT INTO `log_handle` VALUES (402, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 14:22:41');
INSERT INTO `log_handle` VALUES (403, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 14:23:04');
INSERT INTO `log_handle` VALUES (404, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '23', '2022-08-05 14:23:04');
INSERT INTO `log_handle` VALUES (405, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 14:23:06');
INSERT INTO `log_handle` VALUES (406, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2022-08-05 14:23:06');
INSERT INTO `log_handle` VALUES (407, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 14:23:10');
INSERT INTO `log_handle` VALUES (408, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 14:23:13');
INSERT INTO `log_handle` VALUES (409, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 14:23:16');
INSERT INTO `log_handle` VALUES (410, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2022-08-05 14:23:16');
INSERT INTO `log_handle` VALUES (411, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 14:23:19');
INSERT INTO `log_handle` VALUES (412, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 14:23:19');
INSERT INTO `log_handle` VALUES (413, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-05 14:23:19');
INSERT INTO `log_handle` VALUES (414, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 14:23:19');
INSERT INTO `log_handle` VALUES (415, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 14:23:19');
INSERT INTO `log_handle` VALUES (416, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 14:23:37');
INSERT INTO `log_handle` VALUES (417, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 14:23:37');
INSERT INTO `log_handle` VALUES (418, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2022-08-05 14:23:43');
INSERT INTO `log_handle` VALUES (419, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 14:23:43');
INSERT INTO `log_handle` VALUES (420, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 14:23:44');
INSERT INTO `log_handle` VALUES (421, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '25', '2022-08-05 14:23:44');
INSERT INTO `log_handle` VALUES (422, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 14:23:44');
INSERT INTO `log_handle` VALUES (423, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 14:24:36');
INSERT INTO `log_handle` VALUES (424, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 14:24:36');
INSERT INTO `log_handle` VALUES (425, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 14:24:37');
INSERT INTO `log_handle` VALUES (426, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 14:42:43');
INSERT INTO `log_handle` VALUES (427, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-05 14:42:43');
INSERT INTO `log_handle` VALUES (428, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 15:16:15');
INSERT INTO `log_handle` VALUES (429, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '41', '2022-08-05 15:42:51');
INSERT INTO `log_handle` VALUES (430, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '19', '2022-08-05 15:42:51');
INSERT INTO `log_handle` VALUES (431, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '35', '2022-08-05 15:42:52');
INSERT INTO `log_handle` VALUES (432, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 15:42:57');
INSERT INTO `log_handle` VALUES (433, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 15:42:57');
INSERT INTO `log_handle` VALUES (434, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 15:42:58');
INSERT INTO `log_handle` VALUES (435, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:43:26');
INSERT INTO `log_handle` VALUES (436, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 15:44:29');
INSERT INTO `log_handle` VALUES (437, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 15:44:32');
INSERT INTO `log_handle` VALUES (438, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 15:44:33');
INSERT INTO `log_handle` VALUES (439, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2022-08-05 15:44:33');
INSERT INTO `log_handle` VALUES (440, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:44:34');
INSERT INTO `log_handle` VALUES (441, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '26', '2022-08-05 15:44:39');
INSERT INTO `log_handle` VALUES (442, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 15:44:41');
INSERT INTO `log_handle` VALUES (443, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 15:44:41');
INSERT INTO `log_handle` VALUES (444, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 15:44:42');
INSERT INTO `log_handle` VALUES (445, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '11', '2022-08-05 15:44:42');
INSERT INTO `log_handle` VALUES (446, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 15:44:42');
INSERT INTO `log_handle` VALUES (447, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:46:04');
INSERT INTO `log_handle` VALUES (448, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 15:46:04');
INSERT INTO `log_handle` VALUES (449, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 15:46:04');
INSERT INTO `log_handle` VALUES (450, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:52:33');
INSERT INTO `log_handle` VALUES (451, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:52:51');
INSERT INTO `log_handle` VALUES (452, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/47', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-05 15:52:58');
INSERT INTO `log_handle` VALUES (453, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-05 15:53:03');
INSERT INTO `log_handle` VALUES (454, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:53:06');
INSERT INTO `log_handle` VALUES (455, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 15:53:12');
INSERT INTO `log_handle` VALUES (456, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 15:53:12');
INSERT INTO `log_handle` VALUES (457, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:53:12');
INSERT INTO `log_handle` VALUES (458, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:53:12');
INSERT INTO `log_handle` VALUES (459, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 15:53:20');
INSERT INTO `log_handle` VALUES (460, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '2', '2022-08-05 15:54:38');
INSERT INTO `log_handle` VALUES (461, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 15:54:40');
INSERT INTO `log_handle` VALUES (462, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:54:44');
INSERT INTO `log_handle` VALUES (463, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-08-05 15:54:44');
INSERT INTO `log_handle` VALUES (464, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:54:45');
INSERT INTO `log_handle` VALUES (465, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 15:54:52');
INSERT INTO `log_handle` VALUES (466, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '3', '2022-08-05 15:54:54');
INSERT INTO `log_handle` VALUES (467, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:55:01');
INSERT INTO `log_handle` VALUES (468, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 15:55:05');
INSERT INTO `log_handle` VALUES (469, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 15:55:05');
INSERT INTO `log_handle` VALUES (470, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:55:34');
INSERT INTO `log_handle` VALUES (471, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/47', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-05 15:55:41');
INSERT INTO `log_handle` VALUES (472, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 15:56:00');
INSERT INTO `log_handle` VALUES (473, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:56:02');
INSERT INTO `log_handle` VALUES (474, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/5', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '2', '2022-08-05 15:56:08');
INSERT INTO `log_handle` VALUES (475, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 15:56:11');
INSERT INTO `log_handle` VALUES (476, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 15:56:13');
INSERT INTO `log_handle` VALUES (477, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-05 15:56:15');
INSERT INTO `log_handle` VALUES (478, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 15:56:15');
INSERT INTO `log_handle` VALUES (479, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:56:15');
INSERT INTO `log_handle` VALUES (480, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:56:15');
INSERT INTO `log_handle` VALUES (481, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 15:57:14');
INSERT INTO `log_handle` VALUES (482, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 15:57:15');
INSERT INTO `log_handle` VALUES (483, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 15:57:15');
INSERT INTO `log_handle` VALUES (484, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 15:57:15');
INSERT INTO `log_handle` VALUES (485, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 15:57:24');
INSERT INTO `log_handle` VALUES (486, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 15:58:41');
INSERT INTO `log_handle` VALUES (487, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 15:58:41');
INSERT INTO `log_handle` VALUES (488, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 15:58:41');
INSERT INTO `log_handle` VALUES (489, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:58:41');
INSERT INTO `log_handle` VALUES (490, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-05 15:58:46');
INSERT INTO `log_handle` VALUES (491, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 15:58:46');
INSERT INTO `log_handle` VALUES (492, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-05 15:58:47');
INSERT INTO `log_handle` VALUES (493, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 15:58:47');
INSERT INTO `log_handle` VALUES (494, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-05 16:00:19');
INSERT INTO `log_handle` VALUES (495, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 16:00:19');
INSERT INTO `log_handle` VALUES (496, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 16:00:19');
INSERT INTO `log_handle` VALUES (497, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 16:00:19');
INSERT INTO `log_handle` VALUES (498, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/67', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-05 16:01:03');
INSERT INTO `log_handle` VALUES (499, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 16:01:24');
INSERT INTO `log_handle` VALUES (500, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 16:01:26');
INSERT INTO `log_handle` VALUES (501, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '2', '2022-08-05 16:03:34');
INSERT INTO `log_handle` VALUES (502, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-05 16:03:39');
INSERT INTO `log_handle` VALUES (503, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 16:03:40');
INSERT INTO `log_handle` VALUES (504, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-05 16:03:40');
INSERT INTO `log_handle` VALUES (505, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 16:03:40');
INSERT INTO `log_handle` VALUES (506, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '57', '2022-08-05 16:09:35');
INSERT INTO `log_handle` VALUES (507, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '56', '2022-08-05 16:09:35');
INSERT INTO `log_handle` VALUES (508, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '45', '2022-08-05 16:09:36');
INSERT INTO `log_handle` VALUES (509, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 16:16:23');
INSERT INTO `log_handle` VALUES (510, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-05 16:16:24');
INSERT INTO `log_handle` VALUES (511, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '34', '2022-08-05 16:16:24');
INSERT INTO `log_handle` VALUES (512, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-05 16:16:25');
INSERT INTO `log_handle` VALUES (513, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-08-05 16:16:25');
INSERT INTO `log_handle` VALUES (514, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 16:16:27');
INSERT INTO `log_handle` VALUES (515, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '28', '2022-08-05 16:16:27');
INSERT INTO `log_handle` VALUES (516, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '28', '2022-08-05 16:16:29');
INSERT INTO `log_handle` VALUES (517, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '22', '2022-08-05 16:16:29');
INSERT INTO `log_handle` VALUES (518, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 16:16:29');
INSERT INTO `log_handle` VALUES (519, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '29', '2022-08-05 16:16:29');
INSERT INTO `log_handle` VALUES (520, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '47', '2022-08-05 16:16:29');
INSERT INTO `log_handle` VALUES (521, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 16:16:33');
INSERT INTO `log_handle` VALUES (522, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-08-05 16:16:33');
INSERT INTO `log_handle` VALUES (523, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 16:16:35');
INSERT INTO `log_handle` VALUES (524, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '23', '2022-08-05 16:16:35');
INSERT INTO `log_handle` VALUES (525, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-05 16:16:36');
INSERT INTO `log_handle` VALUES (526, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '41', '2022-08-05 16:37:11');
INSERT INTO `log_handle` VALUES (527, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '20', '2022-08-05 16:37:11');
INSERT INTO `log_handle` VALUES (528, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '42', '2022-08-05 16:37:12');
INSERT INTO `log_handle` VALUES (529, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '25', '2022-08-05 16:37:28');
INSERT INTO `log_handle` VALUES (530, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '18', '2022-08-05 16:37:28');
INSERT INTO `log_handle` VALUES (531, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '27', '2022-08-05 16:37:28');
INSERT INTO `log_handle` VALUES (532, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 16:49:00');
INSERT INTO `log_handle` VALUES (533, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-05 16:49:00');
INSERT INTO `log_handle` VALUES (534, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-05 16:49:00');
INSERT INTO `log_handle` VALUES (535, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-05 16:49:21');
INSERT INTO `log_handle` VALUES (536, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-08-05 16:49:21');
INSERT INTO `log_handle` VALUES (537, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-05 16:49:23');
INSERT INTO `log_handle` VALUES (538, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '23', '2022-08-05 16:49:23');
INSERT INTO `log_handle` VALUES (539, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-05 16:49:23');
INSERT INTO `log_handle` VALUES (540, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '13', '2022-08-05 16:49:49');
INSERT INTO `log_handle` VALUES (541, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '21', '2022-08-05 16:49:49');
INSERT INTO `log_handle` VALUES (542, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-05 16:49:49');
INSERT INTO `log_handle` VALUES (543, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '52', '2022-08-11 11:53:04');
INSERT INTO `log_handle` VALUES (544, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '244', '2022-08-11 11:53:04');
INSERT INTO `log_handle` VALUES (545, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-11 11:53:10');
INSERT INTO `log_handle` VALUES (546, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2022-08-11 11:53:10');
INSERT INTO `log_handle` VALUES (547, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '50', '2022-08-15 17:23:34');
INSERT INTO `log_handle` VALUES (548, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '112', '2022-08-15 17:23:34');
INSERT INTO `log_handle` VALUES (549, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '257', '2022-08-16 16:49:43');
INSERT INTO `log_handle` VALUES (550, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '34', '2022-08-16 16:49:43');
INSERT INTO `log_handle` VALUES (551, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '27', '2022-08-16 16:50:42');
INSERT INTO `log_handle` VALUES (552, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '16', '2022-08-16 16:50:42');
INSERT INTO `log_handle` VALUES (553, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '79', '2022-08-16 17:16:55');
INSERT INTO `log_handle` VALUES (554, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '51', '2022-08-16 17:16:55');
INSERT INTO `log_handle` VALUES (555, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '39', '2022-08-16 21:25:31');
INSERT INTO `log_handle` VALUES (556, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '27', '2022-08-16 21:25:31');
INSERT INTO `log_handle` VALUES (557, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-16 21:25:35');
INSERT INTO `log_handle` VALUES (558, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2022-08-16 21:25:35');
INSERT INTO `log_handle` VALUES (559, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-16 21:25:36');
INSERT INTO `log_handle` VALUES (560, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '29', '2022-08-16 21:25:36');
INSERT INTO `log_handle` VALUES (561, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-16 21:25:37');
INSERT INTO `log_handle` VALUES (562, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-16 21:26:01');
INSERT INTO `log_handle` VALUES (563, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-16 21:26:03');
INSERT INTO `log_handle` VALUES (564, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-16 21:26:05');
INSERT INTO `log_handle` VALUES (565, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '24', '2022-08-16 21:26:07');
INSERT INTO `log_handle` VALUES (566, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-16 21:26:07');
INSERT INTO `log_handle` VALUES (567, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-16 21:26:09');
INSERT INTO `log_handle` VALUES (568, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-08-16 21:26:09');
INSERT INTO `log_handle` VALUES (569, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '45', '2022-08-17 11:54:06');
INSERT INTO `log_handle` VALUES (570, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '48', '2022-08-17 11:54:06');
INSERT INTO `log_handle` VALUES (571, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '37', '2022-08-17 11:58:44');
INSERT INTO `log_handle` VALUES (572, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '19', '2022-08-17 11:58:44');
INSERT INTO `log_handle` VALUES (573, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '9', '2022-08-17 11:58:51');
INSERT INTO `log_handle` VALUES (574, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-08-17 11:58:51');
INSERT INTO `log_handle` VALUES (575, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-17 11:59:40');
INSERT INTO `log_handle` VALUES (576, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '23', '2022-08-17 11:59:40');
INSERT INTO `log_handle` VALUES (577, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-17 11:59:52');
INSERT INTO `log_handle` VALUES (578, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '25', '2022-08-17 11:59:52');
INSERT INTO `log_handle` VALUES (579, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '12', '2022-08-17 12:00:04');
INSERT INTO `log_handle` VALUES (580, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-17 13:07:01');
INSERT INTO `log_handle` VALUES (581, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-17 13:07:31');
INSERT INTO `log_handle` VALUES (582, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '56', '2022-08-17 13:49:34');
INSERT INTO `log_handle` VALUES (583, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '19', '2022-08-17 13:49:34');
INSERT INTO `log_handle` VALUES (584, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-17 13:49:35');
INSERT INTO `log_handle` VALUES (585, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '42', '2022-08-17 13:49:35');
INSERT INTO `log_handle` VALUES (586, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/62', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-17 13:49:42');
INSERT INTO `log_handle` VALUES (587, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-17 13:50:21');
INSERT INTO `log_handle` VALUES (588, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-17 13:50:25');
INSERT INTO `log_handle` VALUES (589, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-17 13:50:30');
INSERT INTO `log_handle` VALUES (590, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-17 13:50:39');
INSERT INTO `log_handle` VALUES (591, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-17 13:50:41');
INSERT INTO `log_handle` VALUES (592, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-17 13:50:47');
INSERT INTO `log_handle` VALUES (593, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-17 13:50:50');
INSERT INTO `log_handle` VALUES (594, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-17 13:53:44');
INSERT INTO `log_handle` VALUES (595, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-17 13:53:51');
INSERT INTO `log_handle` VALUES (596, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-17 13:53:55');
INSERT INTO `log_handle` VALUES (597, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '237', '2022-08-17 16:40:00');
INSERT INTO `log_handle` VALUES (598, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '41', '2022-08-17 16:40:00');
INSERT INTO `log_handle` VALUES (599, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-17 16:40:00');
INSERT INTO `log_handle` VALUES (600, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '26', '2022-08-17 16:40:00');
INSERT INTO `log_handle` VALUES (601, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '2', '2022-08-17 16:40:03');
INSERT INTO `log_handle` VALUES (602, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/5', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-17 16:40:06');
INSERT INTO `log_handle` VALUES (603, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '471', '2022-08-17 19:40:31');
INSERT INTO `log_handle` VALUES (604, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '50', '2022-08-17 19:40:32');
INSERT INTO `log_handle` VALUES (605, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-17 19:40:32');
INSERT INTO `log_handle` VALUES (606, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '33', '2022-08-17 19:40:32');
INSERT INTO `log_handle` VALUES (607, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '85', '2022-08-21 23:31:32');
INSERT INTO `log_handle` VALUES (608, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '58', '2022-08-21 23:31:32');
INSERT INTO `log_handle` VALUES (609, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '14', '2022-08-21 23:31:36');
INSERT INTO `log_handle` VALUES (610, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:31:38');
INSERT INTO `log_handle` VALUES (611, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:31:43');
INSERT INTO `log_handle` VALUES (612, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:31:47');
INSERT INTO `log_handle` VALUES (613, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-21 23:32:03');
INSERT INTO `log_handle` VALUES (614, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '27', '2022-08-21 23:32:03');
INSERT INTO `log_handle` VALUES (615, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:32:04');
INSERT INTO `log_handle` VALUES (616, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '25', '2022-08-21 23:32:04');
INSERT INTO `log_handle` VALUES (617, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '9', '2022-08-21 23:32:07');
INSERT INTO `log_handle` VALUES (618, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:32:11');
INSERT INTO `log_handle` VALUES (619, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:32:12');
INSERT INTO `log_handle` VALUES (620, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '22', '2022-08-21 23:32:12');
INSERT INTO `log_handle` VALUES (621, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:32:14');
INSERT INTO `log_handle` VALUES (622, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-08-21 23:32:14');
INSERT INTO `log_handle` VALUES (623, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '17', '2022-08-21 23:33:19');
INSERT INTO `log_handle` VALUES (624, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-21 23:33:19');
INSERT INTO `log_handle` VALUES (625, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-21 23:33:19');
INSERT INTO `log_handle` VALUES (626, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '15', '2022-08-21 23:40:08');
INSERT INTO `log_handle` VALUES (627, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:40:58');
INSERT INTO `log_handle` VALUES (628, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-21 23:41:32');
INSERT INTO `log_handle` VALUES (629, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-21 23:41:37');
INSERT INTO `log_handle` VALUES (630, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:41:39');
INSERT INTO `log_handle` VALUES (631, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:41:41');
INSERT INTO `log_handle` VALUES (632, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-21 23:41:43');
INSERT INTO `log_handle` VALUES (633, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:41:50');
INSERT INTO `log_handle` VALUES (634, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '11', '2022-08-21 23:41:54');
INSERT INTO `log_handle` VALUES (635, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '9', '2022-08-21 23:41:56');
INSERT INTO `log_handle` VALUES (636, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '9', '2022-08-21 23:42:00');
INSERT INTO `log_handle` VALUES (637, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:42:06');
INSERT INTO `log_handle` VALUES (638, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '11', '2022-08-21 23:42:18');
INSERT INTO `log_handle` VALUES (639, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '9', '2022-08-21 23:42:18');
INSERT INTO `log_handle` VALUES (640, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-21 23:42:20');
INSERT INTO `log_handle` VALUES (641, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '25', '2022-08-21 23:42:20');
INSERT INTO `log_handle` VALUES (642, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:42:23');
INSERT INTO `log_handle` VALUES (643, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:42:40');
INSERT INTO `log_handle` VALUES (644, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:42:51');
INSERT INTO `log_handle` VALUES (645, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:43:11');
INSERT INTO `log_handle` VALUES (646, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:43:12');
INSERT INTO `log_handle` VALUES (647, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '18', '2022-08-21 23:43:12');
INSERT INTO `log_handle` VALUES (648, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:43:20');
INSERT INTO `log_handle` VALUES (649, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2022-08-21 23:43:20');
INSERT INTO `log_handle` VALUES (650, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/4', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:43:22');
INSERT INTO `log_handle` VALUES (651, '更新角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '108', '2022-08-21 23:43:46');
INSERT INTO `log_handle` VALUES (652, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2022-08-21 23:43:48');
INSERT INTO `log_handle` VALUES (653, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/4', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:43:50');
INSERT INTO `log_handle` VALUES (654, '删除角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/delete', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '131', '2022-08-21 23:43:56');
INSERT INTO `log_handle` VALUES (655, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:43:59');
INSERT INTO `log_handle` VALUES (656, '删除角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/delete', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:44:02');
INSERT INTO `log_handle` VALUES (657, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:44:06');
INSERT INTO `log_handle` VALUES (658, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-08-21 23:44:06');
INSERT INTO `log_handle` VALUES (659, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:44:12');
INSERT INTO `log_handle` VALUES (660, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:44:12');
INSERT INTO `log_handle` VALUES (661, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:44:33');
INSERT INTO `log_handle` VALUES (662, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-08-21 23:44:33');
INSERT INTO `log_handle` VALUES (663, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-08-21 23:44:35');
INSERT INTO `log_handle` VALUES (664, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:44:35');
INSERT INTO `log_handle` VALUES (665, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '25', '2022-08-21 23:46:43');
INSERT INTO `log_handle` VALUES (666, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '22', '2022-08-21 23:46:43');
INSERT INTO `log_handle` VALUES (667, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-08-21 23:46:44');
INSERT INTO `log_handle` VALUES (668, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-21 23:46:44');
INSERT INTO `log_handle` VALUES (669, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:46:44');
INSERT INTO `log_handle` VALUES (670, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:46:48');
INSERT INTO `log_handle` VALUES (671, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '19', '2022-08-21 23:46:48');
INSERT INTO `log_handle` VALUES (672, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/5', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:48:16');
INSERT INTO `log_handle` VALUES (673, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-08-21 23:48:19');
INSERT INTO `log_handle` VALUES (674, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:48:19');
INSERT INTO `log_handle` VALUES (675, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:48:42');
INSERT INTO `log_handle` VALUES (676, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:48:42');
INSERT INTO `log_handle` VALUES (677, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:48:45');
INSERT INTO `log_handle` VALUES (678, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:48:45');
INSERT INTO `log_handle` VALUES (679, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:48:59');
INSERT INTO `log_handle` VALUES (680, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:48:59');
INSERT INTO `log_handle` VALUES (681, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:49:02');
INSERT INTO `log_handle` VALUES (682, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:49:02');
INSERT INTO `log_handle` VALUES (683, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:49:07');
INSERT INTO `log_handle` VALUES (684, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-08-21 23:49:07');
INSERT INTO `log_handle` VALUES (685, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:49:13');
INSERT INTO `log_handle` VALUES (686, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:49:13');
INSERT INTO `log_handle` VALUES (687, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:49:15');
INSERT INTO `log_handle` VALUES (688, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '7', '2022-08-21 23:49:15');
INSERT INTO `log_handle` VALUES (689, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2022-08-21 23:49:21');
INSERT INTO `log_handle` VALUES (690, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:49:21');
INSERT INTO `log_handle` VALUES (691, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:49:33');
INSERT INTO `log_handle` VALUES (692, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-08-21 23:49:33');
INSERT INTO `log_handle` VALUES (693, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:49:46');
INSERT INTO `log_handle` VALUES (694, '更新角色', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:49:48');
INSERT INTO `log_handle` VALUES (695, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:49:50');
INSERT INTO `log_handle` VALUES (696, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:50:53');
INSERT INTO `log_handle` VALUES (697, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:50:53');
INSERT INTO `log_handle` VALUES (698, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:50:55');
INSERT INTO `log_handle` VALUES (699, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '18', '2022-08-21 23:50:55');
INSERT INTO `log_handle` VALUES (700, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:51:01');
INSERT INTO `log_handle` VALUES (701, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:51:38');
INSERT INTO `log_handle` VALUES (702, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '23', '2022-08-21 23:51:38');
INSERT INTO `log_handle` VALUES (703, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:51:38');
INSERT INTO `log_handle` VALUES (704, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '19', '2022-08-21 23:51:38');
INSERT INTO `log_handle` VALUES (705, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:52:54');
INSERT INTO `log_handle` VALUES (706, '根据ID获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:52:56');
INSERT INTO `log_handle` VALUES (707, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-08-21 23:53:10');
INSERT INTO `log_handle` VALUES (708, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:53:10');
INSERT INTO `log_handle` VALUES (709, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:53:11');
INSERT INTO `log_handle` VALUES (710, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:53:13');
INSERT INTO `log_handle` VALUES (711, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:53:31');
INSERT INTO `log_handle` VALUES (712, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '23', '2022-08-21 23:53:31');
INSERT INTO `log_handle` VALUES (713, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '8', '2022-08-21 23:53:32');
INSERT INTO `log_handle` VALUES (714, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '2', '2022-08-21 23:53:36');
INSERT INTO `log_handle` VALUES (715, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '4', '2022-08-21 23:53:52');
INSERT INTO `log_handle` VALUES (716, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:53:59');
INSERT INTO `log_handle` VALUES (717, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:54:11');
INSERT INTO `log_handle` VALUES (718, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:54:12');
INSERT INTO `log_handle` VALUES (719, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '3', '2022-08-21 23:54:27');
INSERT INTO `log_handle` VALUES (720, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:54:33');
INSERT INTO `log_handle` VALUES (721, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '5', '2022-08-21 23:54:35');
INSERT INTO `log_handle` VALUES (722, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '20', '2022-08-21 23:55:47');
INSERT INTO `log_handle` VALUES (723, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '22', '2022-08-21 23:55:47');
INSERT INTO `log_handle` VALUES (724, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '6', '2022-08-21 23:55:48');
INSERT INTO `log_handle` VALUES (725, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/getuserinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '10', '2022-08-21 23:55:48');
INSERT INTO `log_handle` VALUES (726, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/64', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '', NULL, '1', '2022-08-21 23:56:10');

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登录日志ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `state` int(11) NULL DEFAULT NULL COMMENT '当前状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (1, 1, 0, '2022-06-23 17:20:07');
INSERT INTO `log_login` VALUES (2, 11, 0, '2022-06-24 10:03:24');
INSERT INTO `log_login` VALUES (3, 1, 0, '2022-07-06 10:46:06');
INSERT INTO `log_login` VALUES (4, 1, 0, '2022-07-06 14:08:37');
INSERT INTO `log_login` VALUES (5, 1, 0, '2022-07-06 14:17:34');
INSERT INTO `log_login` VALUES (6, 1, 0, '2022-07-13 20:46:19');
INSERT INTO `log_login` VALUES (7, 1, 0, '2022-07-13 21:48:19');
INSERT INTO `log_login` VALUES (8, 1, 0, '2022-07-13 21:48:25');
INSERT INTO `log_login` VALUES (9, 1, 0, '2022-07-19 20:01:57');
INSERT INTO `log_login` VALUES (10, 1, 0, '2022-07-27 09:55:03');
INSERT INTO `log_login` VALUES (11, 1, 0, '2022-08-05 11:33:10');
INSERT INTO `log_login` VALUES (12, 1, 0, '2022-08-05 14:22:40');
INSERT INTO `log_login` VALUES (13, 1, 0, '2022-08-15 17:23:27');
INSERT INTO `log_login` VALUES (14, 1, 0, '2022-08-15 17:23:34');
INSERT INTO `log_login` VALUES (15, 1, 0, '2022-08-16 17:16:55');
INSERT INTO `log_login` VALUES (16, 1, 0, '2022-08-17 11:53:21');
INSERT INTO `log_login` VALUES (17, 1, 0, '2022-08-17 11:54:06');
INSERT INTO `log_login` VALUES (18, 1, 0, '2022-08-18 09:44:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权编码（多个用逗号分隔，如：user:list,user:create）',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单组件位置（匹配前端动态生成）',
  `type` int(5) NOT NULL COMMENT '类型     0：目录   1：菜单   2：按钮',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `state` int(5) NOT NULL COMMENT '菜单状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', '', 'sys:manage', '', 0, 'el-icon-s-operation', 1, 0, '2021-01-15 18:58:18', '2022-03-19 18:04:58');
INSERT INTO `sys_menu` VALUES (2, 1, '角色管理', '/sys/roles', 'sys:role:select', 'sys/Role', 1, 'el-icon-postcard', 2, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:32');
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/sys/users', 'sys:user:select', 'sys/User', 1, 'el-icon-s-custom', 3, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:38');
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', '/sys/menus', 'sys:menu:select', 'sys/Menu', 1, 'el-icon-menu', 4, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:43');
INSERT INTO `sys_menu` VALUES (5, 0, '系统工具', '', 'sys:tool', NULL, 0, 'el-icon-setting', 2, 0, '2021-01-15 19:06:11', '2022-08-05 15:56:11');
INSERT INTO `sys_menu` VALUES (7, 2, '添加角色', '', 'sys:role:insert', '', 2, '', 1, 0, '2021-01-15 23:02:25', '2022-03-09 22:20:40');
INSERT INTO `sys_menu` VALUES (9, 3, '新增用户', NULL, 'sys:user:insert', NULL, 2, NULL, 1, 0, '2021-01-17 21:48:32', '2022-03-24 17:36:12');
INSERT INTO `sys_menu` VALUES (10, 3, '编辑用户', NULL, 'sys:user:update', NULL, 2, NULL, 2, 0, '2021-01-17 21:49:03', '2022-03-24 17:36:41');
INSERT INTO `sys_menu` VALUES (11, 3, '删除用户', NULL, 'sys:user:delete', NULL, 2, NULL, 3, 0, '2021-01-17 21:49:21', '2022-08-17 14:25:27');
INSERT INTO `sys_menu` VALUES (12, 3, '分配角色', NULL, 'sys:user:role', NULL, 2, NULL, 4, 0, '2021-01-17 21:49:58', '2022-08-17 14:25:30');
INSERT INTO `sys_menu` VALUES (13, 3, '重置密码', NULL, 'sys:user:repass', NULL, 2, NULL, 5, 0, '2021-01-17 21:50:36', '2022-08-17 14:25:32');
INSERT INTO `sys_menu` VALUES (14, 2, '修改角色', NULL, 'sys:role:update', NULL, 2, NULL, 2, 0, '2021-01-17 21:51:14', '2022-08-17 14:25:35');
INSERT INTO `sys_menu` VALUES (15, 2, '删除角色', NULL, 'sys:role:delete', NULL, 2, NULL, 3, 0, '2021-01-17 21:51:39', '2022-08-17 14:25:37');
INSERT INTO `sys_menu` VALUES (16, 2, '分配权限', NULL, 'sys:role:perm', NULL, 2, NULL, 5, 0, '2021-01-17 21:52:02', '2022-08-17 14:25:40');
INSERT INTO `sys_menu` VALUES (17, 4, '添加菜单', NULL, 'sys:menu:insert', NULL, 2, NULL, 1, 0, '2021-01-17 21:53:53', '2021-01-17 21:55:28');
INSERT INTO `sys_menu` VALUES (18, 4, '修改菜单', NULL, 'sys:menu:update', NULL, 2, NULL, 2, 0, '2021-01-17 21:56:12', '2022-08-17 14:25:43');
INSERT INTO `sys_menu` VALUES (19, 4, '删除菜单', NULL, 'sys:menu:delete', NULL, 2, NULL, 3, 0, '2021-01-17 21:56:36', '2022-08-17 14:25:45');
INSERT INTO `sys_menu` VALUES (23, 0, '关于项目', NULL, 'sys:about', NULL, 0, 'el-icon-info', 11, 0, '2022-03-12 00:46:34', '2022-07-06 16:52:06');
INSERT INTO `sys_menu` VALUES (24, 23, '项目介绍', '/about/about', 'sys:about:project', 'about/About', 1, 'el-icon-s-claim', 1, 0, '2022-03-12 16:08:37', '2022-03-24 17:12:40');
INSERT INTO `sys_menu` VALUES (25, 23, '关于我们', '/about/me', 'sys:about:me', 'about/Aboutme', 1, 'el-icon-magic-stick', 2, 0, '2022-03-13 10:13:55', '2022-04-21 22:57:54');
INSERT INTO `sys_menu` VALUES (47, 5, '首页管理', '/tool/indexmanage', 'sys:tool:index', 'tool/IndexManage', 1, 'el-icon-c-scale-to-original', 1, 0, '2022-03-27 12:31:36', '2022-08-05 15:56:00');
INSERT INTO `sys_menu` VALUES (60, 0, '日志管理', NULL, 'log:manage', NULL, 0, 'el-icon-tickets', 8, 0, '2022-06-23 16:21:16', '2022-06-23 16:21:25');
INSERT INTO `sys_menu` VALUES (61, 60, '登录日志', '/log/loginlog', 'log:manage:login', 'log/LoginLog', 1, 'el-icon-notebook-2', 1, 0, '2022-06-23 16:24:42', '2022-08-17 14:25:50');
INSERT INTO `sys_menu` VALUES (62, 60, '操作日志', '/log/handlelog', 'log:manage:handle', 'log/HandleLog', 1, 'el-icon-edit-outline', 2, 0, '2022-06-23 16:26:01', '2022-06-23 16:29:42');
INSERT INTO `sys_menu` VALUES (63, 0, '项目开发', NULL, 'project:develop', NULL, 0, 'el-icon-sunny', 9, 0, '2022-06-29 13:47:59', '2022-08-17 14:25:53');
INSERT INTO `sys_menu` VALUES (64, 63, '代码生成', '/develop/codegener', 'project:develop:codegener', 'develop/CodeGener', 1, 'el-icon-more-outline', 1, 0, '2022-06-29 14:10:35', '2022-06-29 14:13:00');
INSERT INTO `sys_menu` VALUES (65, 0, '平台监控', NULL, 'sys:monitor', NULL, 0, 'el-icon-monitor', 10, 0, '2022-07-06 16:51:58', '2022-08-17 14:25:57');
INSERT INTO `sys_menu` VALUES (66, 65, '服务器监控', '/monitor/servermonitor', 'sys:monitor:server', 'monitor/ServerMonitor', 1, 'el-icon-coin', 1, 0, '2022-07-06 16:54:08', '2022-08-17 14:25:59');
INSERT INTO `sys_menu` VALUES (67, 1, '部门管理', '/sys/group', 'sys:department:select', 'sys/Group', 1, 'el-icon-office-building', 5, 0, '2022-07-13 20:49:51', '2022-08-05 16:01:24');
INSERT INTO `sys_menu` VALUES (68, 63, '接口文档', '/develop/swagger', 'project:develop:document', 'develop/Swagger', 1, 'el-icon-document', 2, 0, '2022-08-05 13:50:38', '2022-08-05 13:50:49');
INSERT INTO `sys_menu` VALUES (69, 65, '数据库监控', '/monitor/druid', 'sys:monitor:druid', 'monitor/Druid', 1, 'el-icon-coin', 2, 0, '2022-08-05 15:44:29', '2022-08-17 14:26:02');
INSERT INTO `sys_menu` VALUES (70, 5, '数据字典', '/tool/dict', 'sys:tool:dict', 'tool/Dict', 1, 'el-icon-collection', 2, 0, '2022-08-05 15:54:38', '2022-08-17 14:26:05');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `state` int(5) NOT NULL COMMENT '角色状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'superadmin', 0, '系统默认最高权限拥有者，除管理人员外任何人不可操作', '2022-03-04 12:54:18', '2022-03-27 14:43:57');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'user', 0, '只能进行基础功能操作', '2022-03-04 12:55:00', '2022-07-13 23:10:03');
INSERT INTO `sys_role` VALUES (3, '微信用户', 'wechat', 0, '通过微信小程序登录的用户', '2022-03-09 22:12:56', '2022-03-09 22:17:00');
INSERT INTO `sys_role` VALUES (4, '开发工程师', 'developer', 0, '一级管理员，放行系统管理之外的其它权限', '2022-03-19 20:16:21', '2022-08-17 14:19:34');
INSERT INTO `sys_role` VALUES (5, '普通管理员', 'admin', 0, '赋予除系统管理核心权限之外的其它功能', '2022-03-24 21:59:04', '2022-08-17 14:19:37');
INSERT INTO `sys_role` VALUES (6, '二级管理员', 'twoadmin', 0, '二级管理员', '2022-06-09 09:43:40', '2022-08-17 14:19:39');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2407 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (131, 2, 5);
INSERT INTO `sys_role_menu` VALUES (1915, 7, 23);
INSERT INTO `sys_role_menu` VALUES (1916, 7, 24);
INSERT INTO `sys_role_menu` VALUES (1917, 7, 25);
INSERT INTO `sys_role_menu` VALUES (2375, 1, 1);
INSERT INTO `sys_role_menu` VALUES (2376, 1, 2);
INSERT INTO `sys_role_menu` VALUES (2377, 1, 7);
INSERT INTO `sys_role_menu` VALUES (2378, 1, 14);
INSERT INTO `sys_role_menu` VALUES (2379, 1, 15);
INSERT INTO `sys_role_menu` VALUES (2380, 1, 16);
INSERT INTO `sys_role_menu` VALUES (2381, 1, 3);
INSERT INTO `sys_role_menu` VALUES (2382, 1, 9);
INSERT INTO `sys_role_menu` VALUES (2383, 1, 10);
INSERT INTO `sys_role_menu` VALUES (2384, 1, 11);
INSERT INTO `sys_role_menu` VALUES (2385, 1, 12);
INSERT INTO `sys_role_menu` VALUES (2386, 1, 13);
INSERT INTO `sys_role_menu` VALUES (2387, 1, 4);
INSERT INTO `sys_role_menu` VALUES (2388, 1, 17);
INSERT INTO `sys_role_menu` VALUES (2389, 1, 18);
INSERT INTO `sys_role_menu` VALUES (2390, 1, 19);
INSERT INTO `sys_role_menu` VALUES (2391, 1, 67);
INSERT INTO `sys_role_menu` VALUES (2392, 1, 5);
INSERT INTO `sys_role_menu` VALUES (2393, 1, 47);
INSERT INTO `sys_role_menu` VALUES (2394, 1, 70);
INSERT INTO `sys_role_menu` VALUES (2395, 1, 60);
INSERT INTO `sys_role_menu` VALUES (2396, 1, 61);
INSERT INTO `sys_role_menu` VALUES (2397, 1, 62);
INSERT INTO `sys_role_menu` VALUES (2398, 1, 63);
INSERT INTO `sys_role_menu` VALUES (2399, 1, 64);
INSERT INTO `sys_role_menu` VALUES (2400, 1, 68);
INSERT INTO `sys_role_menu` VALUES (2401, 1, 65);
INSERT INTO `sys_role_menu` VALUES (2402, 1, 66);
INSERT INTO `sys_role_menu` VALUES (2403, 1, 69);
INSERT INTO `sys_role_menu` VALUES (2404, 1, 23);
INSERT INTO `sys_role_menu` VALUES (2405, 1, 24);
INSERT INTO `sys_role_menu` VALUES (2406, 1, 25);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一登录用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `true_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户电话',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `state` int(5) NOT NULL COMMENT '用户状态',
  `login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `login_warn` int(11) NULL DEFAULT 1 COMMENT '登录邮件提醒',
  `department_id` bigint(20) NULL DEFAULT NULL COMMENT '部门编号',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信openID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'tylt6688', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '天宇龙腾', 'http://qiniuyun.tylt.xyz/2dd364ee125c4a3885c6eb28cf5ce741.jpg', 'tylt6688@gmail.com', '17666666666', '山东济南', 0, '2022-08-18 09:29:00', 1, 1, NULL, '2022-02-28 22:42:39', '2022-04-03 11:49:47');
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', '', 'admin@admin.om', '15766174399', '山东潍坊', 0, '2022-05-07 16:45:53', 1, 1, NULL, '2022-03-12 01:06:10', '2022-05-07 16:45:35');
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 0, '2022-06-04 15:48:48', 1, 1, NULL, '2022-03-12 01:06:13', '2022-03-29 10:32:23');
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 0, '2022-08-17 13:15:06', 1, 1, NULL, '2022-03-19 20:17:18', '2022-03-29 16:02:25');
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999999', '山东济宁', 0, '2022-06-24 10:03:23', 1, 1, NULL, '2022-04-19 13:37:58', '2022-06-12 15:05:01');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 2, 1);
INSERT INTO `sys_user_role` VALUES (2, 4, 4);
INSERT INTO `sys_user_role` VALUES (3, 1, 1);
INSERT INTO `sys_user_role` VALUES (4, 3, 5);

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
-- Table structure for tb_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级部门ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `state` int(5) NULL DEFAULT NULL COMMENT '部门状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_group
-- ----------------------------
INSERT INTO `tb_group` VALUES (1, 0, '技术研发部', NULL, '', '2022-03-11 18:06:51', '2022-08-17 14:14:48');
INSERT INTO `tb_group` VALUES (2, 0, '媒体运营部', NULL, '', '2022-03-11 18:06:55', '2022-08-17 14:14:51');
INSERT INTO `tb_group` VALUES (3, 0, '测试运维部', NULL, '', '2022-03-11 18:06:57', '2022-08-17 14:14:54');
INSERT INTO `tb_group` VALUES (4, 0, '人事行政部', NULL, '', '2022-03-11 18:06:59', '2022-08-17 14:14:56');
INSERT INTO `tb_group` VALUES (5, 0, '机械开发部', NULL, '', '2022-03-11 18:07:01', '2022-08-17 14:14:58');
INSERT INTO `tb_group` VALUES (6, 0, '销售宣推部', NULL, '', '2022-03-25 18:21:53', '2022-08-17 14:15:01');
INSERT INTO `tb_group` VALUES (7, 1, '质量管理部', NULL, NULL, '2022-05-20 23:20:58', '2022-08-17 14:15:03');
INSERT INTO `tb_group` VALUES (8, 1, '售后技术部', NULL, NULL, '2022-05-20 23:21:19', '2022-08-17 14:15:06');
INSERT INTO `tb_group` VALUES (9, 2, '财务市场部', NULL, NULL, '2022-05-20 23:24:22', '2022-08-17 14:15:08');

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

-- ----------------------------
-- Table structure for tb_ossfile
-- ----------------------------
DROP TABLE IF EXISTS `tb_ossfile`;
CREATE TABLE `tb_ossfile`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'OSS文件ID',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件名称',
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件地址',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '所属用户ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OSS文件类型',
  `state` int(11) NULL DEFAULT NULL COMMENT 'OSS文件状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'OSS文件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ossfile
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
