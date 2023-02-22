/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL数据库
 Source Server Type    : MySQL
 Source Server Version : 50727 (5.7.27)
 Source Host           : localhost:3306
 Source Schema         : breze

 Target Server Type    : MySQL
 Target Server Version : 50727 (5.7.27)
 File Encoding         : 65001

 Date: 22/02/2023 17:23:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_handle
-- ----------------------------
DROP TABLE IF EXISTS `log_handle`;
CREATE TABLE `log_handle`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '操作日志编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作标题',
  `client_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备类型',
  `request_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求IP地址',
  `request_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `exception` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常记录',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求耗时',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 379 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (1, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '52', '2023-02-02 16:43:44');
INSERT INTO `log_handle` VALUES (2, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '74', '2023-02-02 16:46:06');
INSERT INTO `log_handle` VALUES (3, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '65', '2023-02-02 16:47:55');
INSERT INTO `log_handle` VALUES (4, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '80', '2023-02-02 16:49:41');
INSERT INTO `log_handle` VALUES (5, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '80', '2023-02-02 16:50:33');
INSERT INTO `log_handle` VALUES (6, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '72', '2023-02-02 16:52:26');
INSERT INTO `log_handle` VALUES (7, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '76', '2023-02-02 16:53:56');
INSERT INTO `log_handle` VALUES (8, '获取侧边菜单导航', 'PostmanRuntime/7.30.1', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '64', '2023-02-02 17:17:46');
INSERT INTO `log_handle` VALUES (9, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '37', '2023-02-07 09:49:39');
INSERT INTO `log_handle` VALUES (10, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '227', '2023-02-07 09:49:39');
INSERT INTO `log_handle` VALUES (11, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '59', '2023-02-07 09:50:51');
INSERT INTO `log_handle` VALUES (12, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '30', '2023-02-07 09:50:51');
INSERT INTO `log_handle` VALUES (13, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', '', NULL, '5', '2023-02-07 09:50:59');
INSERT INTO `log_handle` VALUES (14, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-02-07 09:51:05');
INSERT INTO `log_handle` VALUES (15, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 09:51:13');
INSERT INTO `log_handle` VALUES (16, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '56', '2023-02-07 09:51:13');
INSERT INTO `log_handle` VALUES (17, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-02-07 09:51:20');
INSERT INTO `log_handle` VALUES (18, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-02-07 09:51:23');
INSERT INTO `log_handle` VALUES (19, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '23', '2023-02-07 09:51:23');
INSERT INTO `log_handle` VALUES (20, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-07 09:51:28');
INSERT INTO `log_handle` VALUES (21, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-02-07 09:51:28');
INSERT INTO `log_handle` VALUES (22, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '40', '2023-02-07 11:03:23');
INSERT INTO `log_handle` VALUES (23, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '18', '2023-02-07 11:03:24');
INSERT INTO `log_handle` VALUES (24, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '24', '2023-02-07 11:03:24');
INSERT INTO `log_handle` VALUES (25, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '55', '2023-02-07 11:25:58');
INSERT INTO `log_handle` VALUES (26, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '53', '2023-02-07 11:25:58');
INSERT INTO `log_handle` VALUES (27, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '76', '2023-02-07 11:25:58');
INSERT INTO `log_handle` VALUES (28, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '102', '2023-02-07 11:25:58');
INSERT INTO `log_handle` VALUES (29, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '119', '2023-02-07 11:25:58');
INSERT INTO `log_handle` VALUES (30, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-02-07 11:26:04');
INSERT INTO `log_handle` VALUES (31, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:26:04');
INSERT INTO `log_handle` VALUES (32, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '12', '2023-02-07 11:26:51');
INSERT INTO `log_handle` VALUES (33, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '27', '2023-02-07 11:26:51');
INSERT INTO `log_handle` VALUES (34, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-02-07 11:27:09');
INSERT INTO `log_handle` VALUES (35, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-02-07 11:27:09');
INSERT INTO `log_handle` VALUES (36, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-02-07 11:27:10');
INSERT INTO `log_handle` VALUES (37, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-02-07 11:27:10');
INSERT INTO `log_handle` VALUES (38, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '23', '2023-02-07 11:27:10');
INSERT INTO `log_handle` VALUES (39, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-02-07 11:27:28');
INSERT INTO `log_handle` VALUES (40, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-02-07 11:27:41');
INSERT INTO `log_handle` VALUES (41, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '22', '2023-02-07 11:27:41');
INSERT INTO `log_handle` VALUES (42, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:27:43');
INSERT INTO `log_handle` VALUES (43, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:27:44');
INSERT INTO `log_handle` VALUES (44, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '17', '2023-02-07 11:27:44');
INSERT INTO `log_handle` VALUES (45, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 11:27:45');
INSERT INTO `log_handle` VALUES (46, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '19', '2023-02-07 11:27:45');
INSERT INTO `log_handle` VALUES (47, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:27:46');
INSERT INTO `log_handle` VALUES (48, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 11:27:47');
INSERT INTO `log_handle` VALUES (49, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '20', '2023-02-07 11:27:47');
INSERT INTO `log_handle` VALUES (50, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:27:48');
INSERT INTO `log_handle` VALUES (51, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '37', '2023-02-07 11:27:49');
INSERT INTO `log_handle` VALUES (52, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '52', '2023-02-07 11:27:49');
INSERT INTO `log_handle` VALUES (53, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:27:49');
INSERT INTO `log_handle` VALUES (54, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:27:50');
INSERT INTO `log_handle` VALUES (55, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '18', '2023-02-07 11:27:50');
INSERT INTO `log_handle` VALUES (56, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-07 11:31:47');
INSERT INTO `log_handle` VALUES (57, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-02-07 11:31:47');
INSERT INTO `log_handle` VALUES (58, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '23', '2023-02-07 11:31:48');
INSERT INTO `log_handle` VALUES (59, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '14', '2023-02-07 11:31:48');
INSERT INTO `log_handle` VALUES (60, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-02-07 11:31:48');
INSERT INTO `log_handle` VALUES (61, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:32:05');
INSERT INTO `log_handle` VALUES (62, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:32:05');
INSERT INTO `log_handle` VALUES (63, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:32:07');
INSERT INTO `log_handle` VALUES (64, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '16', '2023-02-07 11:32:07');
INSERT INTO `log_handle` VALUES (65, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-07 11:32:08');
INSERT INTO `log_handle` VALUES (66, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-02-07 11:32:08');
INSERT INTO `log_handle` VALUES (67, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-02-07 11:32:09');
INSERT INTO `log_handle` VALUES (68, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '16', '2023-02-07 11:32:09');
INSERT INTO `log_handle` VALUES (69, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:32:10');
INSERT INTO `log_handle` VALUES (70, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:32:10');
INSERT INTO `log_handle` VALUES (71, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '20', '2023-02-07 11:32:11');
INSERT INTO `log_handle` VALUES (72, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '31', '2023-02-07 11:32:11');
INSERT INTO `log_handle` VALUES (73, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-07 11:32:13');
INSERT INTO `log_handle` VALUES (74, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:32:13');
INSERT INTO `log_handle` VALUES (75, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 11:32:15');
INSERT INTO `log_handle` VALUES (76, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '27', '2023-02-07 11:32:15');
INSERT INTO `log_handle` VALUES (77, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 11:32:17');
INSERT INTO `log_handle` VALUES (78, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '17', '2023-02-07 11:32:17');
INSERT INTO `log_handle` VALUES (79, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:32:18');
INSERT INTO `log_handle` VALUES (80, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-02-07 11:32:18');
INSERT INTO `log_handle` VALUES (81, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-02-07 11:35:13');
INSERT INTO `log_handle` VALUES (82, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-07 11:35:13');
INSERT INTO `log_handle` VALUES (83, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:35:14');
INSERT INTO `log_handle` VALUES (84, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:35:14');
INSERT INTO `log_handle` VALUES (85, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-02-07 11:35:14');
INSERT INTO `log_handle` VALUES (86, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-02-07 11:37:37');
INSERT INTO `log_handle` VALUES (87, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-02-07 11:37:37');
INSERT INTO `log_handle` VALUES (88, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-07 11:37:37');
INSERT INTO `log_handle` VALUES (89, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:37:37');
INSERT INTO `log_handle` VALUES (90, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-02-07 11:37:37');
INSERT INTO `log_handle` VALUES (91, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-02-07 11:37:41');
INSERT INTO `log_handle` VALUES (92, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '16', '2023-02-07 11:37:41');
INSERT INTO `log_handle` VALUES (93, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:37:42');
INSERT INTO `log_handle` VALUES (94, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:37:42');
INSERT INTO `log_handle` VALUES (95, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-02-07 11:38:00');
INSERT INTO `log_handle` VALUES (96, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-02-07 11:38:00');
INSERT INTO `log_handle` VALUES (97, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:38:01');
INSERT INTO `log_handle` VALUES (98, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-07 11:38:01');
INSERT INTO `log_handle` VALUES (99, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-02-07 11:38:01');
INSERT INTO `log_handle` VALUES (100, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-02-07 11:38:02');
INSERT INTO `log_handle` VALUES (101, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-02-07 11:38:03');
INSERT INTO `log_handle` VALUES (102, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-07 11:38:03');
INSERT INTO `log_handle` VALUES (103, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:38:03');
INSERT INTO `log_handle` VALUES (104, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-02-07 11:38:03');
INSERT INTO `log_handle` VALUES (105, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '7', '2023-02-07 11:38:11');
INSERT INTO `log_handle` VALUES (106, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-07 11:38:11');
INSERT INTO `log_handle` VALUES (107, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:38:11');
INSERT INTO `log_handle` VALUES (108, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:38:11');
INSERT INTO `log_handle` VALUES (109, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-02-07 11:38:11');
INSERT INTO `log_handle` VALUES (110, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '9', '2023-02-07 11:38:14');
INSERT INTO `log_handle` VALUES (111, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-02-07 11:38:14');
INSERT INTO `log_handle` VALUES (112, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:38:14');
INSERT INTO `log_handle` VALUES (113, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:38:14');
INSERT INTO `log_handle` VALUES (114, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-02-07 11:38:14');
INSERT INTO `log_handle` VALUES (115, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-02-07 11:42:09');
INSERT INTO `log_handle` VALUES (116, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-02-07 11:42:09');
INSERT INTO `log_handle` VALUES (117, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:42:10');
INSERT INTO `log_handle` VALUES (118, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-02-07 11:42:10');
INSERT INTO `log_handle` VALUES (119, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-02-07 11:42:10');
INSERT INTO `log_handle` VALUES (120, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:42:21');
INSERT INTO `log_handle` VALUES (121, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '18', '2023-02-07 11:42:21');
INSERT INTO `log_handle` VALUES (122, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:42:23');
INSERT INTO `log_handle` VALUES (123, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:42:23');
INSERT INTO `log_handle` VALUES (124, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '9', '2023-02-07 11:46:01');
INSERT INTO `log_handle` VALUES (125, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-02-07 11:46:01');
INSERT INTO `log_handle` VALUES (126, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:46:01');
INSERT INTO `log_handle` VALUES (127, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:46:01');
INSERT INTO `log_handle` VALUES (128, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-02-07 11:46:01');
INSERT INTO `log_handle` VALUES (129, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '11', '2023-02-07 11:46:22');
INSERT INTO `log_handle` VALUES (130, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-02-07 11:46:22');
INSERT INTO `log_handle` VALUES (131, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:46:22');
INSERT INTO `log_handle` VALUES (132, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:46:22');
INSERT INTO `log_handle` VALUES (133, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-02-07 11:46:22');
INSERT INTO `log_handle` VALUES (134, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:46:27');
INSERT INTO `log_handle` VALUES (135, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:46:27');
INSERT INTO `log_handle` VALUES (136, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-02-07 11:46:29');
INSERT INTO `log_handle` VALUES (137, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '14', '2023-02-07 11:46:29');
INSERT INTO `log_handle` VALUES (138, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-07 11:46:30');
INSERT INTO `log_handle` VALUES (139, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-07 11:46:30');
INSERT INTO `log_handle` VALUES (140, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-02-07 11:46:30');
INSERT INTO `log_handle` VALUES (141, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '14', '2023-02-07 11:46:30');
INSERT INTO `log_handle` VALUES (142, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:46:31');
INSERT INTO `log_handle` VALUES (143, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:46:32');
INSERT INTO `log_handle` VALUES (144, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-02-07 11:46:32');
INSERT INTO `log_handle` VALUES (145, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-02-07 11:46:33');
INSERT INTO `log_handle` VALUES (146, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '15', '2023-02-07 11:46:33');
INSERT INTO `log_handle` VALUES (147, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-02-07 11:46:34');
INSERT INTO `log_handle` VALUES (148, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-07 11:46:34');
INSERT INTO `log_handle` VALUES (149, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-02-07 11:48:25');
INSERT INTO `log_handle` VALUES (150, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-02-07 11:48:26');
INSERT INTO `log_handle` VALUES (151, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-02-07 11:58:37');
INSERT INTO `log_handle` VALUES (152, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-02-07 11:58:38');
INSERT INTO `log_handle` VALUES (153, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '52', '2023-02-07 11:58:52');
INSERT INTO `log_handle` VALUES (154, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:58:52');
INSERT INTO `log_handle` VALUES (155, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:58:54');
INSERT INTO `log_handle` VALUES (156, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-07 11:58:54');
INSERT INTO `log_handle` VALUES (157, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:58:57');
INSERT INTO `log_handle` VALUES (158, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '18', '2023-02-07 11:58:57');
INSERT INTO `log_handle` VALUES (159, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:58:58');
INSERT INTO `log_handle` VALUES (160, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:58:58');
INSERT INTO `log_handle` VALUES (161, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 11:59:00');
INSERT INTO `log_handle` VALUES (162, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '14', '2023-02-07 11:59:00');
INSERT INTO `log_handle` VALUES (163, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 11:59:01');
INSERT INTO `log_handle` VALUES (164, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:59:01');
INSERT INTO `log_handle` VALUES (165, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '16', '2023-02-07 11:59:03');
INSERT INTO `log_handle` VALUES (166, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '40', '2023-02-07 11:59:02');
INSERT INTO `log_handle` VALUES (167, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:59:03');
INSERT INTO `log_handle` VALUES (168, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 11:59:04');
INSERT INTO `log_handle` VALUES (169, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:59:04');
INSERT INTO `log_handle` VALUES (170, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-02-07 11:59:05');
INSERT INTO `log_handle` VALUES (171, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '11', '2023-02-07 11:59:05');
INSERT INTO `log_handle` VALUES (172, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-07 11:59:06');
INSERT INTO `log_handle` VALUES (173, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 11:59:06');
INSERT INTO `log_handle` VALUES (174, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-02-07 13:26:47');
INSERT INTO `log_handle` VALUES (175, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '27', '2023-02-07 13:26:48');
INSERT INTO `log_handle` VALUES (176, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-02-07 13:30:41');
INSERT INTO `log_handle` VALUES (177, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-02-07 13:30:42');
INSERT INTO `log_handle` VALUES (178, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-02-07 13:37:53');
INSERT INTO `log_handle` VALUES (179, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-02-07 13:37:53');
INSERT INTO `log_handle` VALUES (180, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-02-07 13:37:57');
INSERT INTO `log_handle` VALUES (181, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-02-07 13:37:57');
INSERT INTO `log_handle` VALUES (182, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 13:38:04');
INSERT INTO `log_handle` VALUES (183, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-07 13:38:04');
INSERT INTO `log_handle` VALUES (184, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 13:38:07');
INSERT INTO `log_handle` VALUES (185, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 13:38:07');
INSERT INTO `log_handle` VALUES (186, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-07 13:38:09');
INSERT INTO `log_handle` VALUES (187, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-07 13:38:09');
INSERT INTO `log_handle` VALUES (188, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-02-07 13:38:10');
INSERT INTO `log_handle` VALUES (189, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '25', '2023-02-07 13:38:10');
INSERT INTO `log_handle` VALUES (190, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-07 13:38:12');
INSERT INTO `log_handle` VALUES (191, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-07 13:38:12');
INSERT INTO `log_handle` VALUES (192, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-02-07 13:38:13');
INSERT INTO `log_handle` VALUES (193, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '12', '2023-02-07 13:38:13');
INSERT INTO `log_handle` VALUES (194, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-02-07 13:38:34');
INSERT INTO `log_handle` VALUES (195, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-02-07 13:38:34');
INSERT INTO `log_handle` VALUES (196, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '11', '2023-02-07 13:56:28');
INSERT INTO `log_handle` VALUES (197, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-02-07 13:56:28');
INSERT INTO `log_handle` VALUES (198, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '75', '2023-02-08 11:24:07');
INSERT INTO `log_handle` VALUES (199, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '64', '2023-02-08 11:24:07');
INSERT INTO `log_handle` VALUES (200, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-02-08 11:24:10');
INSERT INTO `log_handle` VALUES (201, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '79', '2023-02-08 11:24:10');
INSERT INTO `log_handle` VALUES (202, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '23', '2023-02-08 11:24:12');
INSERT INTO `log_handle` VALUES (203, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '23', '2023-02-08 11:24:12');
INSERT INTO `log_handle` VALUES (204, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-08 11:24:14');
INSERT INTO `log_handle` VALUES (205, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-02-08 11:24:14');
INSERT INTO `log_handle` VALUES (206, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '11', '2023-02-08 11:24:16');
INSERT INTO `log_handle` VALUES (207, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '27', '2023-02-08 11:24:16');
INSERT INTO `log_handle` VALUES (208, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '36', '2023-02-08 13:58:12');
INSERT INTO `log_handle` VALUES (209, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-02-08 13:58:12');
INSERT INTO `log_handle` VALUES (210, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '19', '2023-02-08 13:58:13');
INSERT INTO `log_handle` VALUES (211, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '35', '2023-02-08 13:58:13');
INSERT INTO `log_handle` VALUES (212, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '47', '2023-02-08 13:58:13');
INSERT INTO `log_handle` VALUES (213, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '43', '2023-02-17 10:12:07');
INSERT INTO `log_handle` VALUES (214, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '240', '2023-02-17 10:12:07');
INSERT INTO `log_handle` VALUES (215, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-02-17 13:15:48');
INSERT INTO `log_handle` VALUES (216, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '56', '2023-02-17 13:15:48');
INSERT INTO `log_handle` VALUES (217, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-02-17 13:34:27');
INSERT INTO `log_handle` VALUES (218, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/info/64', 'GET', '', NULL, '2', '2023-02-17 13:34:37');
INSERT INTO `log_handle` VALUES (219, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/info/64', 'GET', '', NULL, '3', '2023-02-17 13:34:42');
INSERT INTO `log_handle` VALUES (220, '更新菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', '', NULL, '85', '2023-02-17 13:35:53');
INSERT INTO `log_handle` VALUES (221, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-02-17 13:35:55');
INSERT INTO `log_handle` VALUES (222, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-17 13:36:04');
INSERT INTO `log_handle` VALUES (223, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-02-17 13:36:04');
INSERT INTO `log_handle` VALUES (224, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-17 13:36:04');
INSERT INTO `log_handle` VALUES (225, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-02-17 13:36:04');
INSERT INTO `log_handle` VALUES (226, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-02-17 13:36:20');
INSERT INTO `log_handle` VALUES (227, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-02-17 13:41:51');
INSERT INTO `log_handle` VALUES (228, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '41', '2023-02-17 13:46:59');
INSERT INTO `log_handle` VALUES (229, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-02-17 14:42:44');
INSERT INTO `log_handle` VALUES (230, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-02-17 14:42:45');
INSERT INTO `log_handle` VALUES (231, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '52', '2023-02-21 09:53:36');
INSERT INTO `log_handle` VALUES (232, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '52', '2023-02-21 09:53:36');
INSERT INTO `log_handle` VALUES (233, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-02-21 09:53:46');
INSERT INTO `log_handle` VALUES (234, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-02-21 09:53:46');
INSERT INTO `log_handle` VALUES (235, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-02-21 09:53:49');
INSERT INTO `log_handle` VALUES (236, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-02-21 09:54:19');
INSERT INTO `log_handle` VALUES (237, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-02-21 09:54:21');
INSERT INTO `log_handle` VALUES (238, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '12', '2023-02-21 09:54:59');
INSERT INTO `log_handle` VALUES (239, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '111', '2023-02-21 09:54:59');
INSERT INTO `log_handle` VALUES (240, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-02-21 09:55:06');
INSERT INTO `log_handle` VALUES (241, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '23', '2023-02-21 09:55:06');
INSERT INTO `log_handle` VALUES (242, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '13', '2023-02-21 09:55:10');
INSERT INTO `log_handle` VALUES (243, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/2', 'GET', '', NULL, '6', '2023-02-21 09:55:25');
INSERT INTO `log_handle` VALUES (244, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-02-21 09:58:11');
INSERT INTO `log_handle` VALUES (245, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-02-21 09:58:11');
INSERT INTO `log_handle` VALUES (246, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '5', '2023-02-21 09:58:15');
INSERT INTO `log_handle` VALUES (247, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 09:58:45');
INSERT INTO `log_handle` VALUES (248, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-21 09:58:45');
INSERT INTO `log_handle` VALUES (249, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 09:58:55');
INSERT INTO `log_handle` VALUES (250, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-21 09:58:55');
INSERT INTO `log_handle` VALUES (251, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '6', '2023-02-21 09:58:59');
INSERT INTO `log_handle` VALUES (252, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-02-21 09:59:10');
INSERT INTO `log_handle` VALUES (253, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-02-21 09:59:10');
INSERT INTO `log_handle` VALUES (254, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 09:59:11');
INSERT INTO `log_handle` VALUES (255, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-21 09:59:11');
INSERT INTO `log_handle` VALUES (256, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-02-21 09:59:18');
INSERT INTO `log_handle` VALUES (257, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 09:59:18');
INSERT INTO `log_handle` VALUES (258, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 09:59:53');
INSERT INTO `log_handle` VALUES (259, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-02-21 09:59:53');
INSERT INTO `log_handle` VALUES (260, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 09:59:57');
INSERT INTO `log_handle` VALUES (261, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-02-21 09:59:57');
INSERT INTO `log_handle` VALUES (262, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 10:00:05');
INSERT INTO `log_handle` VALUES (263, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-02-21 10:00:05');
INSERT INTO `log_handle` VALUES (264, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:00:05');
INSERT INTO `log_handle` VALUES (265, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-21 10:00:05');
INSERT INTO `log_handle` VALUES (266, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 10:00:17');
INSERT INTO `log_handle` VALUES (267, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-21 10:00:17');
INSERT INTO `log_handle` VALUES (268, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 10:00:19');
INSERT INTO `log_handle` VALUES (269, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:00:19');
INSERT INTO `log_handle` VALUES (270, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 10:27:25');
INSERT INTO `log_handle` VALUES (271, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-02-21 10:27:25');
INSERT INTO `log_handle` VALUES (272, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-21 10:27:49');
INSERT INTO `log_handle` VALUES (273, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-02-21 10:27:49');
INSERT INTO `log_handle` VALUES (274, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 10:27:58');
INSERT INTO `log_handle` VALUES (275, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-21 10:27:58');
INSERT INTO `log_handle` VALUES (276, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 10:28:16');
INSERT INTO `log_handle` VALUES (277, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:28:16');
INSERT INTO `log_handle` VALUES (278, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 10:28:19');
INSERT INTO `log_handle` VALUES (279, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-02-21 10:28:19');
INSERT INTO `log_handle` VALUES (280, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-21 10:28:29');
INSERT INTO `log_handle` VALUES (281, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-21 10:28:29');
INSERT INTO `log_handle` VALUES (282, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-02-21 10:28:31');
INSERT INTO `log_handle` VALUES (283, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-21 10:28:31');
INSERT INTO `log_handle` VALUES (284, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-21 10:28:37');
INSERT INTO `log_handle` VALUES (285, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:28:37');
INSERT INTO `log_handle` VALUES (286, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 10:28:39');
INSERT INTO `log_handle` VALUES (287, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:28:39');
INSERT INTO `log_handle` VALUES (288, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 10:28:47');
INSERT INTO `log_handle` VALUES (289, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-02-21 10:28:47');
INSERT INTO `log_handle` VALUES (290, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:28:57');
INSERT INTO `log_handle` VALUES (291, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 10:28:57');
INSERT INTO `log_handle` VALUES (292, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-21 10:29:07');
INSERT INTO `log_handle` VALUES (293, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-02-21 10:29:07');
INSERT INTO `log_handle` VALUES (294, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-21 10:29:57');
INSERT INTO `log_handle` VALUES (295, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-21 10:29:57');
INSERT INTO `log_handle` VALUES (296, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:30:00');
INSERT INTO `log_handle` VALUES (297, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-21 10:30:00');
INSERT INTO `log_handle` VALUES (298, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 10:30:06');
INSERT INTO `log_handle` VALUES (299, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-02-21 10:30:06');
INSERT INTO `log_handle` VALUES (300, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '4', '2023-02-21 11:40:36');
INSERT INTO `log_handle` VALUES (301, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '6', '2023-02-21 11:40:38');
INSERT INTO `log_handle` VALUES (302, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '4', '2023-02-21 11:40:49');
INSERT INTO `log_handle` VALUES (303, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-21 11:40:54');
INSERT INTO `log_handle` VALUES (304, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '75', '2023-02-21 11:40:54');
INSERT INTO `log_handle` VALUES (305, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '15', '2023-02-21 11:40:54');
INSERT INTO `log_handle` VALUES (306, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '12', '2023-02-21 11:40:54');
INSERT INTO `log_handle` VALUES (307, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '151', '2023-02-21 11:40:54');
INSERT INTO `log_handle` VALUES (308, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '104', '2023-02-21 11:40:56');
INSERT INTO `log_handle` VALUES (309, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-02-21 11:42:30');
INSERT INTO `log_handle` VALUES (310, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-02-21 11:42:30');
INSERT INTO `log_handle` VALUES (311, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '6', '2023-02-21 11:42:35');
INSERT INTO `log_handle` VALUES (312, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '3', '2023-02-21 11:42:53');
INSERT INTO `log_handle` VALUES (313, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '3', '2023-02-21 11:42:58');
INSERT INTO `log_handle` VALUES (314, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/2', 'GET', '', NULL, '4', '2023-02-21 11:43:13');
INSERT INTO `log_handle` VALUES (315, '获取全部用户信息', 'PostmanRuntime/7.31.0', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '101', '2023-02-21 15:36:06');
INSERT INTO `log_handle` VALUES (316, '获取全部用户信息', 'PostmanRuntime/7.31.0', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '29', '2023-02-21 15:36:20');
INSERT INTO `log_handle` VALUES (317, '获取全部用户信息', 'PostmanRuntime/7.31.0', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '29', '2023-02-21 15:38:52');
INSERT INTO `log_handle` VALUES (318, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '67', '2023-02-21 16:28:31');
INSERT INTO `log_handle` VALUES (319, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '56', '2023-02-21 16:28:31');
INSERT INTO `log_handle` VALUES (320, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '66', '2023-02-21 16:28:31');
INSERT INTO `log_handle` VALUES (321, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '106', '2023-02-21 16:28:31');
INSERT INTO `log_handle` VALUES (322, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '103', '2023-02-21 16:28:31');
INSERT INTO `log_handle` VALUES (323, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-02-21 16:28:38');
INSERT INTO `log_handle` VALUES (324, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-02-21 16:32:57');
INSERT INTO `log_handle` VALUES (325, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '45', '2023-02-21 16:32:57');
INSERT INTO `log_handle` VALUES (326, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '53', '2023-02-21 16:32:57');
INSERT INTO `log_handle` VALUES (327, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '121', '2023-02-21 16:32:57');
INSERT INTO `log_handle` VALUES (328, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '75', '2023-02-21 16:32:57');
INSERT INTO `log_handle` VALUES (329, '获取全部用户信息', 'PostmanRuntime/7.31.0', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '87', '2023-02-21 16:52:47');
INSERT INTO `log_handle` VALUES (330, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '68', '2023-02-22 11:40:03');
INSERT INTO `log_handle` VALUES (331, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '66', '2023-02-22 11:40:03');
INSERT INTO `log_handle` VALUES (332, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-02-22 13:17:23');
INSERT INTO `log_handle` VALUES (333, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '217', '2023-02-22 13:17:33');
INSERT INTO `log_handle` VALUES (334, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '48', '2023-02-22 13:17:33');
INSERT INTO `log_handle` VALUES (335, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-02-22 13:17:34');
INSERT INTO `log_handle` VALUES (336, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-02-22 13:17:34');
INSERT INTO `log_handle` VALUES (337, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', '', NULL, '13', '2023-02-22 13:17:36');
INSERT INTO `log_handle` VALUES (338, '根据角色ID分配角色相应的菜单权限', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', '', NULL, '164', '2023-02-22 13:17:39');
INSERT INTO `log_handle` VALUES (339, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-02-22 13:17:41');
INSERT INTO `log_handle` VALUES (340, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-02-22 13:17:48');
INSERT INTO `log_handle` VALUES (341, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-02-22 13:17:48');
INSERT INTO `log_handle` VALUES (342, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-02-22 13:17:48');
INSERT INTO `log_handle` VALUES (343, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-02-22 13:17:48');
INSERT INTO `log_handle` VALUES (344, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-02-22 13:17:48');
INSERT INTO `log_handle` VALUES (345, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '49', '2023-02-22 13:42:29');
INSERT INTO `log_handle` VALUES (346, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '28', '2023-02-22 13:42:29');
INSERT INTO `log_handle` VALUES (347, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '41', '2023-02-22 13:42:29');
INSERT INTO `log_handle` VALUES (348, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-02-22 13:43:24');
INSERT INTO `log_handle` VALUES (349, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-02-22 13:43:41');
INSERT INTO `log_handle` VALUES (350, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '64', '2023-02-22 13:49:36');
INSERT INTO `log_handle` VALUES (351, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '66', '2023-02-22 13:49:37');
INSERT INTO `log_handle` VALUES (352, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '46', '2023-02-22 13:54:35');
INSERT INTO `log_handle` VALUES (353, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '58', '2023-02-22 15:04:15');
INSERT INTO `log_handle` VALUES (354, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '54', '2023-02-22 15:04:15');
INSERT INTO `log_handle` VALUES (355, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '73', '2023-02-22 16:00:15');
INSERT INTO `log_handle` VALUES (356, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '55', '2023-02-22 16:00:15');
INSERT INTO `log_handle` VALUES (357, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-02-22 16:47:22');
INSERT INTO `log_handle` VALUES (358, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '52', '2023-02-22 16:47:23');
INSERT INTO `log_handle` VALUES (359, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-02-22 16:47:31');
INSERT INTO `log_handle` VALUES (360, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '28', '2023-02-22 16:47:31');
INSERT INTO `log_handle` VALUES (361, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-02-22 16:52:29');
INSERT INTO `log_handle` VALUES (362, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-02-22 16:52:29');
INSERT INTO `log_handle` VALUES (363, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-02-22 16:53:43');
INSERT INTO `log_handle` VALUES (364, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-22 16:53:50');
INSERT INTO `log_handle` VALUES (365, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-02-22 16:53:51');
INSERT INTO `log_handle` VALUES (366, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '26', '2023-02-22 16:54:21');
INSERT INTO `log_handle` VALUES (367, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/job/select', 'GET', '', NULL, '15', '2023-02-22 16:54:29');
INSERT INTO `log_handle` VALUES (368, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-02-22 16:56:09');
INSERT INTO `log_handle` VALUES (369, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-02-22 16:56:20');
INSERT INTO `log_handle` VALUES (370, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-02-22 16:56:30');
INSERT INTO `log_handle` VALUES (371, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-02-22 17:22:14');
INSERT INTO `log_handle` VALUES (372, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-02-22 17:22:15');
INSERT INTO `log_handle` VALUES (373, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-02-22 17:22:39');
INSERT INTO `log_handle` VALUES (374, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '34', '2023-02-22 17:22:39');
INSERT INTO `log_handle` VALUES (375, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-02-22 17:22:43');
INSERT INTO `log_handle` VALUES (376, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '30', '2023-02-22 17:22:43');
INSERT INTO `log_handle` VALUES (377, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-02-22 17:22:46');
INSERT INTO `log_handle` VALUES (378, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '16', '2023-02-22 17:22:46');

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登录日志ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `state` int(11) NULL DEFAULT NULL COMMENT '当前状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录IP地址',
  `ip_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP所在地',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (1, 1, 0, '2023-02-02 16:40:25', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (2, 1, 0, '2023-02-07 09:49:36', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (3, 1, 0, '2023-02-17 10:12:06', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (4, 1, 0, '2023-02-17 13:41:45', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (5, 1, 0, '2023-02-17 13:41:51', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (6, 1, 0, '2023-02-17 13:46:52', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (7, 1, 0, '2023-02-17 13:46:59', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (8, 1, 0, '2023-02-21 09:53:34', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (9, 1, 0, '2023-02-22 13:43:24', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (10, 1, 0, '2023-02-22 13:43:34', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (11, 1, 0, '2023-02-22 13:43:41', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (12, 1, 0, '2023-02-22 13:49:36', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (13, 1, 0, '2023-02-22 13:54:27', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (14, 1, 0, '2023-02-22 13:54:34', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (15, 1, 0, '2023-02-22 15:04:14', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (16, 1, 0, '2023-02-22 16:00:15', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (17, 1, 0, '2023-02-22 16:47:22', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (18, 1, 0, '2023-02-22 16:52:28', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (19, 1, 0, '2023-02-22 16:53:43', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (20, 1, 0, '2023-02-22 16:54:14', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (21, 1, 0, '2023-02-22 16:54:20', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (22, 1, 0, '2023-02-22 16:56:08', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (23, 1, 0, '2023-02-22 16:56:12', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (24, 1, 0, '2023-02-22 16:56:20', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (25, 1, 0, '2023-02-22 17:22:14', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (26, 1, 0, '2023-02-22 17:22:39', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级部门ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `state` int(5) NULL DEFAULT 0 COMMENT '部门状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES (1, 0, '技术研发部', 0, '', '2022-03-11 18:06:51', '2022-08-17 14:14:48');
INSERT INTO `sys_group` VALUES (2, 0, '媒体运营部', 0, '', '2022-03-11 18:06:55', '2022-08-17 14:14:51');
INSERT INTO `sys_group` VALUES (3, 0, '测试运维部', 0, '', '2022-03-11 18:06:57', '2022-08-17 14:14:54');
INSERT INTO `sys_group` VALUES (4, 0, '人事行政部', 0, '', '2022-03-11 18:06:59', '2022-08-17 14:14:56');
INSERT INTO `sys_group` VALUES (5, 0, '机械开发部', 0, '', '2022-03-11 18:07:01', '2022-08-17 14:14:58');
INSERT INTO `sys_group` VALUES (6, 0, '销售宣推部', 0, '', '2022-03-25 18:21:53', '2022-08-17 14:15:01');
INSERT INTO `sys_group` VALUES (7, 3, '质量管理部', 0, '', '2022-05-20 23:20:58', '2022-08-17 14:15:03');
INSERT INTO `sys_group` VALUES (8, 1, '售后技术部', 0, '', '2022-05-20 23:21:19', '2022-08-17 14:15:06');
INSERT INTO `sys_group` VALUES (9, 2, '财务市场部', 0, '', '2022-05-20 23:24:22', '2022-08-17 14:15:08');

-- ----------------------------
-- Table structure for sys_group_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_job`;
CREATE TABLE `sys_group_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门岗位ID',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `job_id` bigint(20) NULL DEFAULT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_group_job
-- ----------------------------
INSERT INTO `sys_group_job` VALUES (1, 1, 1);
INSERT INTO `sys_group_job` VALUES (2, 1, 2);
INSERT INTO `sys_group_job` VALUES (3, 1, 3);
INSERT INTO `sys_group_job` VALUES (4, 1, 4);
INSERT INTO `sys_group_job` VALUES (5, 5, 1);
INSERT INTO `sys_group_job` VALUES (6, 7, 1);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '技术部经理', 0, '隶属于技术部团队', '2022-09-25 20:41:59', '2022-09-25 20:42:10');
INSERT INTO `sys_job` VALUES (2, '技术部组长', 0, '隶属于技术部团队', '2022-09-25 20:42:02', '2022-09-25 20:42:12');
INSERT INTO `sys_job` VALUES (3, '技术部组员', 0, '隶属于技术部团队', '2022-09-25 20:42:04', '2022-09-25 20:42:14');
INSERT INTO `sys_job` VALUES (4, '技术部实习生', 0, '隶属于技术部团队', '2022-09-25 20:42:07', '2022-09-25 20:42:16');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `parent_id` bigint(20) NOT NULL COMMENT '父菜单ID，一级菜单为0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单中文标题',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单英文名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '授权编码（多个用逗号分隔，如：user:list,user:create）',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单组件位置（匹配前端动态生成）',
  `type` int(5) NOT NULL COMMENT '类型     0：目录   1：菜单   2：按钮',
  `state` int(5) NOT NULL COMMENT '菜单状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'Sys', 'el-icon-s-operation', 1, 'sys:manage', '', '', 0, 0, '2021-01-15 18:58:18', '2022-03-19 18:04:58');
INSERT INTO `sys_menu` VALUES (2, 1, '角色管理', 'Sys.Role', 'el-icon-postcard', 1, 'sys:role:select', '/sys/role', 'sys/Role', 1, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:32');
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', 'Sys.User', 'el-icon-s-custom', 2, 'sys:user:select', '/sys/user', 'sys/User', 1, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:38');
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'Sys.Menu', 'el-icon-menu', 3, 'sys:menu:select', '/sys/menu', 'sys/Menu', 1, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:43');
INSERT INTO `sys_menu` VALUES (5, 0, '系统工具', 'Tool', 'el-icon-setting', 2, 'sys:tool', '', '', 0, 0, '2021-01-15 19:06:11', '2022-08-05 15:56:11');
INSERT INTO `sys_menu` VALUES (6, 0, '门户管理', 'Portal', 'el-icon-s-platform', 3, 'portal:manage', '', '', 0, 0, '2022-10-09 20:52:50', '2022-10-09 20:52:50');
INSERT INTO `sys_menu` VALUES (7, 2, '添加角色', 'Sys.Role.Add', '', 1, 'sys:role:insert', '', '', 2, 0, '2021-01-15 23:02:25', '2022-03-09 22:20:40');
INSERT INTO `sys_menu` VALUES (9, 3, '新增用户', 'Sys.User.Add', NULL, 1, 'sys:user:insert', '', NULL, 2, 0, '2021-01-17 21:48:32', '2022-03-24 17:36:12');
INSERT INTO `sys_menu` VALUES (10, 3, '编辑用户', 'Sys.User.Edit', NULL, 2, 'sys:user:update', NULL, NULL, 2, 0, '2021-01-17 21:49:03', '2022-03-24 17:36:41');
INSERT INTO `sys_menu` VALUES (11, 3, '删除用户', 'Sys.User.Delete', NULL, 3, 'sys:user:delete', NULL, NULL, 2, 0, '2021-01-17 21:49:21', '2022-08-17 14:25:27');
INSERT INTO `sys_menu` VALUES (12, 3, '分配角色', 'Sys.User.Role', NULL, 4, 'sys:user:role', NULL, NULL, 2, 0, '2021-01-17 21:49:58', '2022-08-17 14:25:30');
INSERT INTO `sys_menu` VALUES (13, 3, '重置密码', 'Sys.User.Reset', NULL, 5, 'sys:user:repass', NULL, NULL, 2, 0, '2021-01-17 21:50:36', '2022-08-17 14:25:32');
INSERT INTO `sys_menu` VALUES (14, 2, '修改角色', 'Sys.Role.Edit', NULL, 2, 'sys:role:update', NULL, NULL, 2, 0, '2021-01-17 21:51:14', '2022-08-17 14:25:35');
INSERT INTO `sys_menu` VALUES (15, 2, '删除角色', 'Sys.Role.Delete', NULL, 3, 'sys:role:delete', NULL, NULL, 2, 0, '2021-01-17 21:51:39', '2022-08-17 14:25:37');
INSERT INTO `sys_menu` VALUES (16, 2, '分配权限', 'Sys.Role.Perm', NULL, 5, 'sys:role:perm', NULL, NULL, 2, 0, '2021-01-17 21:52:02', '2022-08-17 14:25:40');
INSERT INTO `sys_menu` VALUES (17, 4, '添加菜单', 'Sys.Menu.Add', NULL, 1, 'sys:menu:insert', NULL, NULL, 2, 0, '2021-01-17 21:53:53', '2021-01-17 21:55:28');
INSERT INTO `sys_menu` VALUES (18, 4, '修改菜单', 'Sys.Menu.Edit', NULL, 2, 'sys:menu:update', NULL, NULL, 2, 0, '2021-01-17 21:56:12', '2022-08-17 14:25:43');
INSERT INTO `sys_menu` VALUES (19, 4, '删除菜单', 'Sys.Menu.Delete', NULL, 3, 'sys:menu:delete', NULL, NULL, 2, 0, '2021-01-17 21:56:36', '2022-08-17 14:25:45');
INSERT INTO `sys_menu` VALUES (23, 0, '关于项目', 'About', 'el-icon-info', 11, 'sys:about', NULL, NULL, 0, 0, '2022-03-12 00:46:34', '2022-07-06 16:52:06');
INSERT INTO `sys_menu` VALUES (24, 23, '项目介绍', 'About.ProjectInfo', 'el-icon-s-claim', 1, 'sys:about:project', '/about/about', 'about/About', 1, 0, '2022-03-12 16:08:37', '2022-03-24 17:12:40');
INSERT INTO `sys_menu` VALUES (25, 23, '关于我们', 'About.Aboutme', 'el-icon-magic-stick', 2, 'sys:about:me', '/about/our', 'about/Aboutme', 1, 0, '2022-03-13 10:13:55', '2022-04-21 22:57:54');
INSERT INTO `sys_menu` VALUES (47, 6, '首页管理', 'Portal.IndexManage', 'el-icon-c-scale-to-original', 1, 'portal:manage:index', '/portal/indexmanage', 'portal/IndexManage', 1, 0, '2022-03-27 12:31:36', '2022-08-05 15:56:00');
INSERT INTO `sys_menu` VALUES (60, 0, '日志管理', 'Log', 'el-icon-tickets', 8, 'log:manage', NULL, NULL, 0, 0, '2022-06-23 16:21:16', '2022-06-23 16:21:25');
INSERT INTO `sys_menu` VALUES (61, 60, '登录日志', 'Log.LoginLog', 'el-icon-notebook-2', 1, 'log:manage:login', '/log/loginlog', 'log/LoginLog', 1, 0, '2022-06-23 16:24:42', '2022-08-17 14:25:50');
INSERT INTO `sys_menu` VALUES (62, 60, '操作日志', 'Log.HandleLog', 'el-icon-edit-outline', 2, 'log:manage:handle', '/log/handlelog', 'log/HandleLog', 1, 0, '2022-06-23 16:26:01', '2022-06-23 16:29:42');
INSERT INTO `sys_menu` VALUES (63, 0, '项目开发', 'Dev', 'el-icon-sunny', 9, 'project:develop', NULL, NULL, 0, 0, '2022-06-29 13:47:59', '2022-08-17 14:25:53');
INSERT INTO `sys_menu` VALUES (64, 63, '代码生成', 'Dev.CodeGener', 'el-icon-s-opportunity', 1, 'project:develop:codegener', '/develop/codegener', 'develop/CodeGener', 1, 0, '2022-06-29 14:10:35', '2022-06-29 14:13:00');
INSERT INTO `sys_menu` VALUES (65, 0, '平台监控', 'Monitor', 'el-icon-monitor', 10, 'sys:monitor', NULL, NULL, 0, 0, '2022-07-06 16:51:58', '2022-08-17 14:25:57');
INSERT INTO `sys_menu` VALUES (66, 65, '服务器监控', 'Monitor.Server', 'el-icon-coin', 1, 'sys:monitor:server', '/monitor/servermonitor', 'monitor/ServerMonitor', 1, 0, '2022-07-06 16:54:08', '2022-08-17 14:25:59');
INSERT INTO `sys_menu` VALUES (67, 1, '部门管理', 'Sys.Group', 'el-icon-office-building', 4, 'sys:department:select', '/sys/group', 'sys/Group', 1, 0, '2022-07-13 20:49:51', '2022-08-05 16:01:24');
INSERT INTO `sys_menu` VALUES (68, 63, '接口文档', 'Dev.Swagger', 'el-icon-document', 2, 'project:develop:document', '/develop/swagger', 'develop/Swagger', 1, 0, '2022-08-05 13:50:38', '2022-08-05 13:50:49');
INSERT INTO `sys_menu` VALUES (69, 65, '数据库监控', 'Monitor.Druid', 'el-icon-coin', 2, 'sys:monitor:druid', '/monitor/druid', 'monitor/Druid', 1, 0, '2022-08-05 15:44:29', '2022-08-17 14:26:02');
INSERT INTO `sys_menu` VALUES (70, 5, '数据字典', 'Tool.Dict', 'el-icon-collection', 2, 'sys:tool:dict', '/tool/dict', 'tool/Dict', 1, 0, '2022-08-05 15:54:38', '2022-08-17 14:26:05');
INSERT INTO `sys_menu` VALUES (71, 1, '岗位管理', 'Sys.Job', 'el-icon-medal', 5, 'sys:job:select', '/sys/job', 'sys/Job', 1, 0, '2022-09-25 21:09:55', '2022-09-25 21:09:55');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编码',
  `state` int(5) NOT NULL COMMENT '角色状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'Super_Admin', 0, '系统默认最高权限拥有者，除管理人员外任何人不可操作', '2022-03-04 12:54:18', '2022-03-27 14:43:57');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'User', 0, '只能进行基础功能操作', '2022-03-04 12:55:00', '2022-07-13 23:10:03');
INSERT INTO `sys_role` VALUES (3, '微信用户', 'WeChat_User', 0, '通过微信小程序登录的用户', '2022-03-09 22:12:56', '2022-03-09 22:17:00');
INSERT INTO `sys_role` VALUES (4, '开发人员', 'Developer', 0, '相当于超级管理员，放行系统管理之外的其它权限', '2022-03-19 20:16:21', '2022-08-17 14:19:34');
INSERT INTO `sys_role` VALUES (5, '普通管理员', 'Admin', 0, '赋予除系统管理核心权限之外的其它功能', '2022-03-24 21:59:04', '2022-08-17 14:19:37');
INSERT INTO `sys_role` VALUES (6, '二级管理员', 'Second_Admin', 0, '二级管理员', '2022-06-09 09:43:40', '2022-08-17 14:19:39');
INSERT INTO `sys_role` VALUES (7, '访客用户', 'guest', 0, '访客用户，只展示首页与关于项目菜单', '2022-09-25 15:40:55', '2022-09-25 15:40:55');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 7, 23);
INSERT INTO `sys_role_menu` VALUES (3, 7, 24);
INSERT INTO `sys_role_menu` VALUES (4, 7, 25);
INSERT INTO `sys_role_menu` VALUES (104, 1, 1);
INSERT INTO `sys_role_menu` VALUES (105, 1, 2);
INSERT INTO `sys_role_menu` VALUES (106, 1, 7);
INSERT INTO `sys_role_menu` VALUES (107, 1, 14);
INSERT INTO `sys_role_menu` VALUES (108, 1, 15);
INSERT INTO `sys_role_menu` VALUES (109, 1, 16);
INSERT INTO `sys_role_menu` VALUES (110, 1, 3);
INSERT INTO `sys_role_menu` VALUES (111, 1, 9);
INSERT INTO `sys_role_menu` VALUES (112, 1, 10);
INSERT INTO `sys_role_menu` VALUES (113, 1, 11);
INSERT INTO `sys_role_menu` VALUES (114, 1, 12);
INSERT INTO `sys_role_menu` VALUES (115, 1, 13);
INSERT INTO `sys_role_menu` VALUES (116, 1, 4);
INSERT INTO `sys_role_menu` VALUES (117, 1, 17);
INSERT INTO `sys_role_menu` VALUES (118, 1, 18);
INSERT INTO `sys_role_menu` VALUES (119, 1, 19);
INSERT INTO `sys_role_menu` VALUES (120, 1, 67);
INSERT INTO `sys_role_menu` VALUES (121, 1, 71);
INSERT INTO `sys_role_menu` VALUES (122, 1, 5);
INSERT INTO `sys_role_menu` VALUES (123, 1, 70);
INSERT INTO `sys_role_menu` VALUES (124, 1, 6);
INSERT INTO `sys_role_menu` VALUES (125, 1, 47);
INSERT INTO `sys_role_menu` VALUES (126, 1, 60);
INSERT INTO `sys_role_menu` VALUES (127, 1, 61);
INSERT INTO `sys_role_menu` VALUES (128, 1, 62);
INSERT INTO `sys_role_menu` VALUES (129, 1, 63);
INSERT INTO `sys_role_menu` VALUES (130, 1, 64);
INSERT INTO `sys_role_menu` VALUES (131, 1, 68);
INSERT INTO `sys_role_menu` VALUES (132, 1, 65);
INSERT INTO `sys_role_menu` VALUES (133, 1, 66);
INSERT INTO `sys_role_menu` VALUES (134, 1, 69);
INSERT INTO `sys_role_menu` VALUES (135, 1, 23);
INSERT INTO `sys_role_menu` VALUES (136, 1, 24);
INSERT INTO `sys_role_menu` VALUES (137, 1, 25);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一登录用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `true_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户电话',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `state` int(5) NOT NULL COMMENT '用户状态',
  `login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `login_warn` int(11) NULL DEFAULT 1 COMMENT '登录邮件提醒',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'breze', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '系统管理员', 'http://qiniuyun.tylt.xyz/45691c9294d9452b91e8f923f040b377.jpg', 'tylt6688@gmail.com', '17666666666', '山东济南', 0, '2023-02-22 17:22:39', 1, '2022-02-28 22:42:39', '2022-04-03 11:49:47');
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', '', 'admin@admin.om', '15766174399', '山东潍坊', 0, '2022-05-07 16:45:53', 1, '2022-03-12 01:06:10', '2022-05-07 16:45:35');
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 0, '2022-06-04 15:48:48', 1, '2022-03-12 01:06:13', '2022-03-29 10:32:23');
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 0, '2022-08-17 13:15:06', 1, '2022-03-19 20:17:18', '2022-03-29 16:02:25');
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999999', '山东济宁', 0, '2022-06-24 10:03:23', 1, '2022-04-19 13:37:58', '2022-06-12 15:05:01');

-- ----------------------------
-- Table structure for sys_user_group_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group_job`;
CREATE TABLE `sys_user_group_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户岗位ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `group_job_id` bigint(20) NOT NULL COMMENT '部门团队岗位中间表ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_group_job
-- ----------------------------
INSERT INTO `sys_user_group_job` VALUES (1, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (2, 2, 1);
INSERT INTO `sys_user_group_job` VALUES (3, 3, 1);
INSERT INTO `sys_user_group_job` VALUES (4, 4, 1);
INSERT INTO `sys_user_group_job` VALUES (5, 5, 1);
INSERT INTO `sys_user_group_job` VALUES (6, 1, 6);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 2, 1);
INSERT INTO `sys_user_role` VALUES (3, 1, 1);
INSERT INTO `sys_user_role` VALUES (4, 3, 5);
INSERT INTO `sys_user_role` VALUES (5, 1, 2);
INSERT INTO `sys_user_role` VALUES (7, 4, 4);
INSERT INTO `sys_user_role` VALUES (8, 4, 6);
INSERT INTO `sys_user_role` VALUES (9, 5, 5);
INSERT INTO `sys_user_role` VALUES (10, 5, 7);

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
INSERT INTO `tb_oss` VALUES ('35df0fe1fe7c4de8b46a7051c6ad688f', '4640a186eb82491eb8c7772aa5248122', 'http://qiniuyun.tylt.xyz/4640a186eb82491eb8c7772aa5248122.jpg', NULL, NULL, NULL, '2023-02-10 16:36:15', '2023-02-10 16:36:15');

SET FOREIGN_KEY_CHECKS = 1;
