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

 Date: 20/07/2023 11:04:02
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
) ENGINE = InnoDB AUTO_INCREMENT = 2013 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (573, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '43', '2023-03-15 13:23:01');
INSERT INTO `log_handle` VALUES (574, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '196', '2023-03-15 13:23:01');
INSERT INTO `log_handle` VALUES (575, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '79', '2023-03-15 15:08:59');
INSERT INTO `log_handle` VALUES (576, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '48', '2023-03-15 15:08:59');
INSERT INTO `log_handle` VALUES (577, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '66', '2023-03-15 15:51:18');
INSERT INTO `log_handle` VALUES (578, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '45', '2023-03-15 15:51:18');
INSERT INTO `log_handle` VALUES (579, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '73', '2023-03-15 15:51:19');
INSERT INTO `log_handle` VALUES (580, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', '', NULL, '80', '2023-03-16 10:24:36');
INSERT INTO `log_handle` VALUES (581, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', '', NULL, '191', '2023-03-16 10:24:38');
INSERT INTO `log_handle` VALUES (582, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '261', '2023-03-16 10:24:43');
INSERT INTO `log_handle` VALUES (583, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '1033', '2023-03-16 10:24:43');
INSERT INTO `log_handle` VALUES (584, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', '', NULL, '15', '2023-03-16 16:03:30');
INSERT INTO `log_handle` VALUES (585, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/user/select', 'POST', '', NULL, '27', '2023-03-16 16:03:30');
INSERT INTO `log_handle` VALUES (586, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-03-16 16:03:48');
INSERT INTO `log_handle` VALUES (587, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-03-16 16:03:48');
INSERT INTO `log_handle` VALUES (588, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-16 16:04:06');
INSERT INTO `log_handle` VALUES (589, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-16 16:04:30');
INSERT INTO `log_handle` VALUES (590, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '11', '2023-03-16 16:04:30');
INSERT INTO `log_handle` VALUES (591, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-03-16 16:04:32');
INSERT INTO `log_handle` VALUES (592, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '0:0:0:0:0:0:0:1', '/sys/group/select', 'GET', '', NULL, '8', '2023-03-16 16:04:36');
INSERT INTO `log_handle` VALUES (593, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '63', '2023-03-17 15:30:23');
INSERT INTO `log_handle` VALUES (594, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '58', '2023-03-17 15:30:24');
INSERT INTO `log_handle` VALUES (595, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '26', '2023-03-17 15:36:42');
INSERT INTO `log_handle` VALUES (596, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '31', '2023-03-17 15:36:43');
INSERT INTO `log_handle` VALUES (597, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-03-17 15:38:42');
INSERT INTO `log_handle` VALUES (598, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '39', '2023-03-17 15:38:44');
INSERT INTO `log_handle` VALUES (599, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '33', '2023-03-17 15:40:23');
INSERT INTO `log_handle` VALUES (600, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-17 15:40:24');
INSERT INTO `log_handle` VALUES (601, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '34', '2023-03-17 15:41:13');
INSERT INTO `log_handle` VALUES (602, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '40', '2023-03-17 15:41:13');
INSERT INTO `log_handle` VALUES (603, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-17 15:41:32');
INSERT INTO `log_handle` VALUES (604, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-03-17 15:41:32');
INSERT INTO `log_handle` VALUES (605, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '35', '2023-03-17 15:41:32');
INSERT INTO `log_handle` VALUES (606, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-03-17 15:42:42');
INSERT INTO `log_handle` VALUES (607, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-03-17 15:43:14');
INSERT INTO `log_handle` VALUES (608, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-17 15:43:15');
INSERT INTO `log_handle` VALUES (609, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '64', '2023-03-17 15:45:13');
INSERT INTO `log_handle` VALUES (610, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '88', '2023-03-17 15:45:13');
INSERT INTO `log_handle` VALUES (611, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '62', '2023-03-17 15:52:46');
INSERT INTO `log_handle` VALUES (612, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '58', '2023-03-17 15:52:46');
INSERT INTO `log_handle` VALUES (613, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-03-17 15:54:39');
INSERT INTO `log_handle` VALUES (614, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '49', '2023-03-17 15:54:39');
INSERT INTO `log_handle` VALUES (615, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-03-17 15:55:22');
INSERT INTO `log_handle` VALUES (616, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '17', '2023-03-17 15:55:22');
INSERT INTO `log_handle` VALUES (617, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '44', '2023-03-17 16:40:41');
INSERT INTO `log_handle` VALUES (618, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '140', '2023-03-17 16:40:41');
INSERT INTO `log_handle` VALUES (619, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '29', '2023-03-27 13:54:56');
INSERT INTO `log_handle` VALUES (620, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-27 13:55:28');
INSERT INTO `log_handle` VALUES (621, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '295', '2023-03-27 13:55:29');
INSERT INTO `log_handle` VALUES (622, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '25', '2023-03-27 14:09:07');
INSERT INTO `log_handle` VALUES (623, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '76', '2023-03-27 14:09:07');
INSERT INTO `log_handle` VALUES (624, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-03-27 15:15:24');
INSERT INTO `log_handle` VALUES (625, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '33', '2023-03-27 15:15:25');
INSERT INTO `log_handle` VALUES (626, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-27 15:15:25');
INSERT INTO `log_handle` VALUES (627, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '28', '2023-03-27 15:15:25');
INSERT INTO `log_handle` VALUES (628, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '46', '2023-03-27 15:15:25');
INSERT INTO `log_handle` VALUES (629, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-03-27 15:18:51');
INSERT INTO `log_handle` VALUES (630, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '29', '2023-03-27 15:18:52');
INSERT INTO `log_handle` VALUES (631, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-27 15:18:52');
INSERT INTO `log_handle` VALUES (632, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '39', '2023-03-27 15:18:52');
INSERT INTO `log_handle` VALUES (633, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '63', '2023-03-27 15:18:52');
INSERT INTO `log_handle` VALUES (634, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-03-27 15:19:10');
INSERT INTO `log_handle` VALUES (635, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-03-27 15:19:11');
INSERT INTO `log_handle` VALUES (636, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-27 15:26:10');
INSERT INTO `log_handle` VALUES (637, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '26', '2023-03-27 15:26:12');
INSERT INTO `log_handle` VALUES (638, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-27 15:26:21');
INSERT INTO `log_handle` VALUES (639, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-03-27 15:26:23');
INSERT INTO `log_handle` VALUES (640, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-27 15:27:01');
INSERT INTO `log_handle` VALUES (641, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-03-27 15:27:03');
INSERT INTO `log_handle` VALUES (642, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-27 15:28:13');
INSERT INTO `log_handle` VALUES (643, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-27 15:28:15');
INSERT INTO `log_handle` VALUES (644, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-03-27 15:28:25');
INSERT INTO `log_handle` VALUES (645, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-27 15:28:27');
INSERT INTO `log_handle` VALUES (646, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '55', '2023-03-28 15:57:40');
INSERT INTO `log_handle` VALUES (647, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '56', '2023-03-28 15:57:42');
INSERT INTO `log_handle` VALUES (648, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '47', '2023-03-28 15:57:56');
INSERT INTO `log_handle` VALUES (649, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '38', '2023-03-28 15:57:57');
INSERT INTO `log_handle` VALUES (650, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-03-28 15:58:14');
INSERT INTO `log_handle` VALUES (651, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '27', '2023-03-28 15:59:38');
INSERT INTO `log_handle` VALUES (652, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '37', '2023-03-28 15:59:38');
INSERT INTO `log_handle` VALUES (653, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-03-28 15:59:39');
INSERT INTO `log_handle` VALUES (654, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-03-28 15:59:39');
INSERT INTO `log_handle` VALUES (655, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 15:59:46');
INSERT INTO `log_handle` VALUES (656, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '69', '2023-03-28 15:59:46');
INSERT INTO `log_handle` VALUES (657, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '14', '2023-03-28 16:04:05');
INSERT INTO `log_handle` VALUES (658, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-03-28 17:07:04');
INSERT INTO `log_handle` VALUES (659, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-03-28 17:09:50');
INSERT INTO `log_handle` VALUES (660, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '55', '2023-03-28 17:09:52');
INSERT INTO `log_handle` VALUES (661, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '27', '2023-03-28 17:09:56');
INSERT INTO `log_handle` VALUES (662, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-03-28 17:10:01');
INSERT INTO `log_handle` VALUES (663, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '24', '2023-03-28 17:10:28');
INSERT INTO `log_handle` VALUES (664, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/1', 'GET', '', NULL, '2', '2023-03-28 17:10:32');
INSERT INTO `log_handle` VALUES (665, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/2', 'GET', '', NULL, '2', '2023-03-28 17:10:37');
INSERT INTO `log_handle` VALUES (666, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '26', '2023-03-28 19:41:27');
INSERT INTO `log_handle` VALUES (667, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-03-28 19:41:40');
INSERT INTO `log_handle` VALUES (668, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '41', '2023-03-28 19:41:41');
INSERT INTO `log_handle` VALUES (669, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-03-28 19:42:45');
INSERT INTO `log_handle` VALUES (670, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-28 19:42:45');
INSERT INTO `log_handle` VALUES (671, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-28 19:43:23');
INSERT INTO `log_handle` VALUES (672, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-03-28 19:43:25');
INSERT INTO `log_handle` VALUES (673, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 19:43:35');
INSERT INTO `log_handle` VALUES (674, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '67', '2023-03-28 19:43:35');
INSERT INTO `log_handle` VALUES (675, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '16', '2023-03-28 19:43:37');
INSERT INTO `log_handle` VALUES (676, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/菜单', 'GET', '', NULL, '8', '2023-03-28 19:44:29');
INSERT INTO `log_handle` VALUES (677, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 19:44:31');
INSERT INTO `log_handle` VALUES (678, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/2', 'GET', '', NULL, '2', '2023-03-28 19:44:37');
INSERT INTO `log_handle` VALUES (679, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 19:54:48');
INSERT INTO `log_handle` VALUES (680, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '28', '2023-03-28 19:54:48');
INSERT INTO `log_handle` VALUES (681, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 19:54:48');
INSERT INTO `log_handle` VALUES (682, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-28 19:54:48');
INSERT INTO `log_handle` VALUES (683, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 19:54:54');
INSERT INTO `log_handle` VALUES (684, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-28 19:54:54');
INSERT INTO `log_handle` VALUES (685, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:54:57');
INSERT INTO `log_handle` VALUES (686, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-28 19:54:57');
INSERT INTO `log_handle` VALUES (687, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-03-28 19:55:02');
INSERT INTO `log_handle` VALUES (688, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-03-28 19:55:02');
INSERT INTO `log_handle` VALUES (689, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 19:55:02');
INSERT INTO `log_handle` VALUES (690, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-28 19:55:02');
INSERT INTO `log_handle` VALUES (691, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 19:57:20');
INSERT INTO `log_handle` VALUES (692, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-28 19:57:20');
INSERT INTO `log_handle` VALUES (693, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:57:23');
INSERT INTO `log_handle` VALUES (694, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:57:23');
INSERT INTO `log_handle` VALUES (695, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:57:26');
INSERT INTO `log_handle` VALUES (696, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-28 19:57:26');
INSERT INTO `log_handle` VALUES (697, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-03-28 19:57:30');
INSERT INTO `log_handle` VALUES (698, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-28 19:57:30');
INSERT INTO `log_handle` VALUES (699, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-28 19:57:30');
INSERT INTO `log_handle` VALUES (700, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-28 19:57:30');
INSERT INTO `log_handle` VALUES (701, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 19:57:51');
INSERT INTO `log_handle` VALUES (702, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-03-28 19:57:51');
INSERT INTO `log_handle` VALUES (703, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 19:57:58');
INSERT INTO `log_handle` VALUES (704, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:57:58');
INSERT INTO `log_handle` VALUES (705, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 19:58:09');
INSERT INTO `log_handle` VALUES (706, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:58:09');
INSERT INTO `log_handle` VALUES (707, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-03-28 19:58:12');
INSERT INTO `log_handle` VALUES (708, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-03-28 19:58:12');
INSERT INTO `log_handle` VALUES (709, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:58:12');
INSERT INTO `log_handle` VALUES (710, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:58:12');
INSERT INTO `log_handle` VALUES (711, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-28 19:58:21');
INSERT INTO `log_handle` VALUES (712, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-28 19:58:21');
INSERT INTO `log_handle` VALUES (713, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:58:29');
INSERT INTO `log_handle` VALUES (714, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-28 19:58:29');
INSERT INTO `log_handle` VALUES (715, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 19:58:38');
INSERT INTO `log_handle` VALUES (716, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-28 19:58:38');
INSERT INTO `log_handle` VALUES (717, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-03-28 19:58:40');
INSERT INTO `log_handle` VALUES (718, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-28 19:58:40');
INSERT INTO `log_handle` VALUES (719, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-28 19:58:40');
INSERT INTO `log_handle` VALUES (720, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-28 19:58:40');
INSERT INTO `log_handle` VALUES (721, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 19:58:44');
INSERT INTO `log_handle` VALUES (722, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-28 19:58:45');
INSERT INTO `log_handle` VALUES (723, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 19:59:02');
INSERT INTO `log_handle` VALUES (724, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:59:02');
INSERT INTO `log_handle` VALUES (725, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 19:59:02');
INSERT INTO `log_handle` VALUES (726, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:59:02');
INSERT INTO `log_handle` VALUES (727, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 19:59:10');
INSERT INTO `log_handle` VALUES (728, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-03-28 19:59:10');
INSERT INTO `log_handle` VALUES (729, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '11', '2023-03-28 19:59:14');
INSERT INTO `log_handle` VALUES (730, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-03-28 19:59:14');
INSERT INTO `log_handle` VALUES (731, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-28 19:59:14');
INSERT INTO `log_handle` VALUES (732, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 19:59:14');
INSERT INTO `log_handle` VALUES (733, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '16', '2023-03-28 19:59:34');
INSERT INTO `log_handle` VALUES (734, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-03-28 19:59:34');
INSERT INTO `log_handle` VALUES (735, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 20:00:11');
INSERT INTO `log_handle` VALUES (736, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-28 20:00:11');
INSERT INTO `log_handle` VALUES (737, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-28 20:00:24');
INSERT INTO `log_handle` VALUES (738, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-03-28 20:00:24');
INSERT INTO `log_handle` VALUES (739, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 20:00:28');
INSERT INTO `log_handle` VALUES (740, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-28 20:00:28');
INSERT INTO `log_handle` VALUES (741, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 20:00:55');
INSERT INTO `log_handle` VALUES (742, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-28 20:00:55');
INSERT INTO `log_handle` VALUES (743, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 20:01:45');
INSERT INTO `log_handle` VALUES (744, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-28 20:01:45');
INSERT INTO `log_handle` VALUES (745, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-28 20:02:02');
INSERT INTO `log_handle` VALUES (746, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-28 20:02:02');
INSERT INTO `log_handle` VALUES (747, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '9', '2023-03-28 20:02:06');
INSERT INTO `log_handle` VALUES (748, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-28 20:02:06');
INSERT INTO `log_handle` VALUES (749, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 20:02:06');
INSERT INTO `log_handle` VALUES (750, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-28 20:02:06');
INSERT INTO `log_handle` VALUES (751, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-28 20:02:38');
INSERT INTO `log_handle` VALUES (752, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-03-28 20:02:38');
INSERT INTO `log_handle` VALUES (753, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-28 20:02:38');
INSERT INTO `log_handle` VALUES (754, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-28 20:02:38');
INSERT INTO `log_handle` VALUES (755, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '2', '2023-03-28 20:02:50');
INSERT INTO `log_handle` VALUES (756, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-03-28 20:02:50');
INSERT INTO `log_handle` VALUES (757, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-28 20:03:43');
INSERT INTO `log_handle` VALUES (758, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-28 20:03:43');
INSERT INTO `log_handle` VALUES (759, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '7', '2023-03-28 20:03:53');
INSERT INTO `log_handle` VALUES (760, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-03-28 20:04:04');
INSERT INTO `log_handle` VALUES (761, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-28 20:04:06');
INSERT INTO `log_handle` VALUES (762, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-03-28 20:04:18');
INSERT INTO `log_handle` VALUES (763, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '62', '2023-03-29 10:10:29');
INSERT INTO `log_handle` VALUES (764, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '59', '2023-03-29 10:10:29');
INSERT INTO `log_handle` VALUES (765, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '68', '2023-03-29 10:10:33');
INSERT INTO `log_handle` VALUES (766, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '55', '2023-03-29 10:10:33');
INSERT INTO `log_handle` VALUES (767, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '16', '2023-03-29 10:10:35');
INSERT INTO `log_handle` VALUES (768, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '7', '2023-03-29 10:10:41');
INSERT INTO `log_handle` VALUES (769, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '10', '2023-03-29 10:10:43');
INSERT INTO `log_handle` VALUES (770, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-03-29 10:10:45');
INSERT INTO `log_handle` VALUES (771, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-03-29 10:10:45');
INSERT INTO `log_handle` VALUES (772, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '13', '2023-03-29 10:10:50');
INSERT INTO `log_handle` VALUES (773, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '53', '2023-03-29 10:52:28');
INSERT INTO `log_handle` VALUES (774, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '38', '2023-03-29 10:52:28');
INSERT INTO `log_handle` VALUES (775, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '18', '2023-03-29 10:52:28');
INSERT INTO `log_handle` VALUES (776, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '84', '2023-03-29 10:52:28');
INSERT INTO `log_handle` VALUES (777, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '68', '2023-03-29 10:52:28');
INSERT INTO `log_handle` VALUES (778, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-29 10:52:38');
INSERT INTO `log_handle` VALUES (779, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '27', '2023-03-29 10:52:38');
INSERT INTO `log_handle` VALUES (780, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-03-29 10:52:38');
INSERT INTO `log_handle` VALUES (781, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-29 10:52:38');
INSERT INTO `log_handle` VALUES (782, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-29 10:52:38');
INSERT INTO `log_handle` VALUES (783, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-03-29 10:53:33');
INSERT INTO `log_handle` VALUES (784, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-03-29 10:53:33');
INSERT INTO `log_handle` VALUES (785, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '65', '2023-03-29 15:05:18');
INSERT INTO `log_handle` VALUES (786, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-03-29 15:05:18');
INSERT INTO `log_handle` VALUES (787, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-03-29 15:05:19');
INSERT INTO `log_handle` VALUES (788, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '52', '2023-03-29 15:05:19');
INSERT INTO `log_handle` VALUES (789, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '65', '2023-03-29 15:05:19');
INSERT INTO `log_handle` VALUES (790, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 15:05:23');
INSERT INTO `log_handle` VALUES (791, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/1', 'GET', '', NULL, '2', '2023-03-29 15:06:15');
INSERT INTO `log_handle` VALUES (792, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 15:07:10');
INSERT INTO `log_handle` VALUES (793, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-03-29 15:07:10');
INSERT INTO `log_handle` VALUES (794, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:07:12');
INSERT INTO `log_handle` VALUES (795, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 15:07:12');
INSERT INTO `log_handle` VALUES (796, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:07:13');
INSERT INTO `log_handle` VALUES (797, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-03-29 15:07:13');
INSERT INTO `log_handle` VALUES (798, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:07:15');
INSERT INTO `log_handle` VALUES (799, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 15:07:15');
INSERT INTO `log_handle` VALUES (800, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-03-29 15:07:18');
INSERT INTO `log_handle` VALUES (801, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '26', '2023-03-29 15:07:18');
INSERT INTO `log_handle` VALUES (802, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:07:21');
INSERT INTO `log_handle` VALUES (803, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 15:07:21');
INSERT INTO `log_handle` VALUES (804, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:07:23');
INSERT INTO `log_handle` VALUES (805, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-03-29 15:07:23');
INSERT INTO `log_handle` VALUES (806, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-29 15:07:25');
INSERT INTO `log_handle` VALUES (807, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-29 15:07:25');
INSERT INTO `log_handle` VALUES (808, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 15:07:32');
INSERT INTO `log_handle` VALUES (809, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 15:07:32');
INSERT INTO `log_handle` VALUES (810, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:07:34');
INSERT INTO `log_handle` VALUES (811, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-03-29 15:07:34');
INSERT INTO `log_handle` VALUES (812, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:07:38');
INSERT INTO `log_handle` VALUES (813, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 15:07:38');
INSERT INTO `log_handle` VALUES (814, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:07:43');
INSERT INTO `log_handle` VALUES (815, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-29 15:07:43');
INSERT INTO `log_handle` VALUES (816, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:07:48');
INSERT INTO `log_handle` VALUES (817, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-29 15:07:48');
INSERT INTO `log_handle` VALUES (818, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:07:55');
INSERT INTO `log_handle` VALUES (819, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 15:07:55');
INSERT INTO `log_handle` VALUES (820, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:09:08');
INSERT INTO `log_handle` VALUES (821, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 15:09:08');
INSERT INTO `log_handle` VALUES (822, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:09:33');
INSERT INTO `log_handle` VALUES (823, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-29 15:09:33');
INSERT INTO `log_handle` VALUES (824, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:15:41');
INSERT INTO `log_handle` VALUES (825, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:15:41');
INSERT INTO `log_handle` VALUES (826, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-29 15:15:43');
INSERT INTO `log_handle` VALUES (827, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:15:45');
INSERT INTO `log_handle` VALUES (828, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:15:46');
INSERT INTO `log_handle` VALUES (829, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:15:48');
INSERT INTO `log_handle` VALUES (830, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:15:50');
INSERT INTO `log_handle` VALUES (831, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:15:53');
INSERT INTO `log_handle` VALUES (832, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:15:59');
INSERT INTO `log_handle` VALUES (833, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:16:01');
INSERT INTO `log_handle` VALUES (834, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:16:02');
INSERT INTO `log_handle` VALUES (835, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-29 15:16:03');
INSERT INTO `log_handle` VALUES (836, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-03-29 15:16:04');
INSERT INTO `log_handle` VALUES (837, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 15:16:06');
INSERT INTO `log_handle` VALUES (838, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-29 15:16:08');
INSERT INTO `log_handle` VALUES (839, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-03-29 15:16:10');
INSERT INTO `log_handle` VALUES (840, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:16:13');
INSERT INTO `log_handle` VALUES (841, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-03-29 15:16:15');
INSERT INTO `log_handle` VALUES (842, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:16:16');
INSERT INTO `log_handle` VALUES (843, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 15:16:32');
INSERT INTO `log_handle` VALUES (844, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '36', '2023-03-29 16:10:08');
INSERT INTO `log_handle` VALUES (845, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '33', '2023-03-29 16:10:14');
INSERT INTO `log_handle` VALUES (846, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '38', '2023-03-29 16:10:16');
INSERT INTO `log_handle` VALUES (847, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '27', '2023-03-29 16:12:17');
INSERT INTO `log_handle` VALUES (848, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-29 16:12:17');
INSERT INTO `log_handle` VALUES (849, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 16:18:07');
INSERT INTO `log_handle` VALUES (850, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-29 16:18:07');
INSERT INTO `log_handle` VALUES (851, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 16:18:11');
INSERT INTO `log_handle` VALUES (852, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-03-29 16:18:26');
INSERT INTO `log_handle` VALUES (853, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '26', '2023-03-29 16:18:40');
INSERT INTO `log_handle` VALUES (854, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-29 16:18:42');
INSERT INTO `log_handle` VALUES (855, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 16:18:45');
INSERT INTO `log_handle` VALUES (856, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-29 16:19:43');
INSERT INTO `log_handle` VALUES (857, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 16:20:32');
INSERT INTO `log_handle` VALUES (858, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-03-29 16:20:36');
INSERT INTO `log_handle` VALUES (859, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 16:21:15');
INSERT INTO `log_handle` VALUES (860, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 16:21:33');
INSERT INTO `log_handle` VALUES (861, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-29 16:21:38');
INSERT INTO `log_handle` VALUES (862, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 16:21:41');
INSERT INTO `log_handle` VALUES (863, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 16:21:45');
INSERT INTO `log_handle` VALUES (864, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-03-29 16:23:54');
INSERT INTO `log_handle` VALUES (865, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-29 16:24:10');
INSERT INTO `log_handle` VALUES (866, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-03-29 16:24:12');
INSERT INTO `log_handle` VALUES (867, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-03-29 16:24:12');
INSERT INTO `log_handle` VALUES (868, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-03-29 16:24:15');
INSERT INTO `log_handle` VALUES (869, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 16:24:45');
INSERT INTO `log_handle` VALUES (870, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-29 16:25:39');
INSERT INTO `log_handle` VALUES (871, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-29 16:26:33');
INSERT INTO `log_handle` VALUES (872, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-03-29 16:26:43');
INSERT INTO `log_handle` VALUES (873, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-03-29 16:26:47');
INSERT INTO `log_handle` VALUES (874, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 16:26:47');
INSERT INTO `log_handle` VALUES (875, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-03-29 16:26:58');
INSERT INTO `log_handle` VALUES (876, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-03-29 16:27:04');
INSERT INTO `log_handle` VALUES (877, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-03-29 16:27:08');
INSERT INTO `log_handle` VALUES (878, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-03-29 16:27:08');
INSERT INTO `log_handle` VALUES (879, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-03-29 16:27:15');
INSERT INTO `log_handle` VALUES (880, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '54', '2023-03-29 17:10:05');
INSERT INTO `log_handle` VALUES (881, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '115', '2023-03-29 17:10:05');
INSERT INTO `log_handle` VALUES (882, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '25', '2023-03-29 17:24:57');
INSERT INTO `log_handle` VALUES (883, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '52', '2023-03-29 17:24:57');
INSERT INTO `log_handle` VALUES (884, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-29 17:25:14');
INSERT INTO `log_handle` VALUES (885, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-03-29 17:25:19');
INSERT INTO `log_handle` VALUES (886, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '20', '2023-03-29 17:25:20');
INSERT INTO `log_handle` VALUES (887, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-03-29 17:25:46');
INSERT INTO `log_handle` VALUES (888, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-03-29 17:25:48');
INSERT INTO `log_handle` VALUES (889, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-03-29 17:25:48');
INSERT INTO `log_handle` VALUES (890, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-03-29 17:25:48');
INSERT INTO `log_handle` VALUES (891, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '21', '2023-03-29 17:25:48');
INSERT INTO `log_handle` VALUES (892, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-03-29 17:25:49');
INSERT INTO `log_handle` VALUES (893, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '18', '2023-03-29 17:25:49');
INSERT INTO `log_handle` VALUES (894, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-03-29 17:25:49');
INSERT INTO `log_handle` VALUES (895, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '14', '2023-03-29 17:25:51');
INSERT INTO `log_handle` VALUES (896, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-03-29 17:25:51');
INSERT INTO `log_handle` VALUES (897, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-03-29 17:25:52');
INSERT INTO `log_handle` VALUES (898, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-03-29 17:25:52');
INSERT INTO `log_handle` VALUES (899, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-03-29 17:25:53');
INSERT INTO `log_handle` VALUES (900, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 17:25:53');
INSERT INTO `log_handle` VALUES (901, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '9', '2023-03-29 17:25:55');
INSERT INTO `log_handle` VALUES (902, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-03-29 17:25:57');
INSERT INTO `log_handle` VALUES (903, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '16', '2023-03-29 17:25:57');
INSERT INTO `log_handle` VALUES (904, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-03-29 17:25:58');
INSERT INTO `log_handle` VALUES (905, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '3', '2023-03-29 17:25:59');
INSERT INTO `log_handle` VALUES (906, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-29 17:26:00');
INSERT INTO `log_handle` VALUES (907, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-03-29 17:26:00');
INSERT INTO `log_handle` VALUES (908, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', '获取个人信息失败', '41', '2023-03-30 14:14:47');
INSERT INTO `log_handle` VALUES (909, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '85', '2023-03-30 14:14:47');
INSERT INTO `log_handle` VALUES (910, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '29', '2023-03-30 14:14:53');
INSERT INTO `log_handle` VALUES (911, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', '获取个人信息失败', '50', '2023-03-30 14:14:54');
INSERT INTO `log_handle` VALUES (912, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '53', '2023-03-30 14:44:12');
INSERT INTO `log_handle` VALUES (913, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '44', '2023-03-30 14:44:12');
INSERT INTO `log_handle` VALUES (914, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-03-30 14:44:19');
INSERT INTO `log_handle` VALUES (915, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '59', '2023-03-30 14:44:19');
INSERT INTO `log_handle` VALUES (916, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '17', '2023-03-30 16:05:30');
INSERT INTO `log_handle` VALUES (917, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '4', '2023-03-30 16:05:46');
INSERT INTO `log_handle` VALUES (918, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-03-30 16:06:37');
INSERT INTO `log_handle` VALUES (919, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '19', '2023-03-30 16:06:37');
INSERT INTO `log_handle` VALUES (920, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-03-30 16:06:37');
INSERT INTO `log_handle` VALUES (921, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-03-30 16:06:37');
INSERT INTO `log_handle` VALUES (922, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '5', '2023-03-30 16:08:32');
INSERT INTO `log_handle` VALUES (923, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-03-30 16:11:02');
INSERT INTO `log_handle` VALUES (924, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '23', '2023-03-30 16:11:02');
INSERT INTO `log_handle` VALUES (925, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '5', '2023-03-30 16:11:05');
INSERT INTO `log_handle` VALUES (926, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '5', '2023-03-30 16:11:16');
INSERT INTO `log_handle` VALUES (927, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-03-30 16:11:41');
INSERT INTO `log_handle` VALUES (928, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-03-30 16:11:41');
INSERT INTO `log_handle` VALUES (929, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-03-30 16:11:43');
INSERT INTO `log_handle` VALUES (930, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-03-30 16:11:43');
INSERT INTO `log_handle` VALUES (931, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-03-30 16:11:49');
INSERT INTO `log_handle` VALUES (932, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '33', '2023-03-30 16:12:01');
INSERT INTO `log_handle` VALUES (933, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-03-30 16:12:03');
INSERT INTO `log_handle` VALUES (934, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '12', '2023-03-30 16:15:56');
INSERT INTO `log_handle` VALUES (935, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '8', '2023-03-30 16:16:05');
INSERT INTO `log_handle` VALUES (936, '更新用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/update_userinfo', 'POST', '', NULL, '164', '2023-03-30 16:16:13');
INSERT INTO `log_handle` VALUES (937, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '33', '2023-03-30 16:16:15');
INSERT INTO `log_handle` VALUES (938, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '31', '2023-03-30 16:16:18');
INSERT INTO `log_handle` VALUES (939, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '49', '2023-03-30 16:16:18');
INSERT INTO `log_handle` VALUES (940, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-03-30 16:18:10');
INSERT INTO `log_handle` VALUES (941, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '23', '2023-03-30 16:18:10');
INSERT INTO `log_handle` VALUES (942, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-03-30 16:18:18');
INSERT INTO `log_handle` VALUES (943, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-03-30 16:18:18');
INSERT INTO `log_handle` VALUES (944, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-03-30 16:18:44');
INSERT INTO `log_handle` VALUES (945, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-03-30 16:18:58');
INSERT INTO `log_handle` VALUES (946, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-03-30 16:18:58');
INSERT INTO `log_handle` VALUES (947, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '5', '2023-03-30 16:19:01');
INSERT INTO `log_handle` VALUES (948, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '12', '2023-03-30 16:19:44');
INSERT INTO `log_handle` VALUES (949, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '28', '2023-03-30 16:19:44');
INSERT INTO `log_handle` VALUES (950, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-03-30 16:20:17');
INSERT INTO `log_handle` VALUES (951, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-03-30 16:20:17');
INSERT INTO `log_handle` VALUES (952, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '87', '2023-03-31 11:06:05');
INSERT INTO `log_handle` VALUES (953, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '31', '2023-03-31 11:06:05');
INSERT INTO `log_handle` VALUES (954, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '50', '2023-03-31 11:06:05');
INSERT INTO `log_handle` VALUES (955, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '274', '2023-03-31 11:06:05');
INSERT INTO `log_handle` VALUES (956, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '94', '2023-03-31 11:06:05');
INSERT INTO `log_handle` VALUES (957, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-03-31 11:12:22');
INSERT INTO `log_handle` VALUES (958, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '32', '2023-03-31 11:18:12');
INSERT INTO `log_handle` VALUES (959, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '51', '2023-03-31 11:18:13');
INSERT INTO `log_handle` VALUES (960, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-03-31 11:26:23');
INSERT INTO `log_handle` VALUES (961, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '28', '2023-03-31 11:26:23');
INSERT INTO `log_handle` VALUES (962, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-03-31 15:46:50');
INSERT INTO `log_handle` VALUES (963, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '35', '2023-03-31 15:47:49');
INSERT INTO `log_handle` VALUES (964, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '45', '2023-03-31 15:47:59');
INSERT INTO `log_handle` VALUES (965, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '101', '2023-03-31 15:47:59');
INSERT INTO `log_handle` VALUES (966, '获取侧边菜单导航', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '55', '2023-04-04 10:24:30');
INSERT INTO `log_handle` VALUES (967, '获取当前用户信息', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '41', '2023-04-04 10:24:32');
INSERT INTO `log_handle` VALUES (968, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-04-04 10:25:03');
INSERT INTO `log_handle` VALUES (969, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '29', '2023-04-04 10:25:08');
INSERT INTO `log_handle` VALUES (970, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-04-04 10:25:09');
INSERT INTO `log_handle` VALUES (971, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-04-04 10:25:13');
INSERT INTO `log_handle` VALUES (972, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '47', '2023-04-04 13:51:19');
INSERT INTO `log_handle` VALUES (973, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '28', '2023-04-04 13:51:19');
INSERT INTO `log_handle` VALUES (974, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-04-04 13:51:20');
INSERT INTO `log_handle` VALUES (975, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '27', '2023-04-04 13:51:21');
INSERT INTO `log_handle` VALUES (976, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-04-04 13:51:22');
INSERT INTO `log_handle` VALUES (977, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-04-04 13:51:22');
INSERT INTO `log_handle` VALUES (978, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 13:51:40');
INSERT INTO `log_handle` VALUES (979, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-04-04 13:51:40');
INSERT INTO `log_handle` VALUES (980, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 13:52:13');
INSERT INTO `log_handle` VALUES (981, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-04-04 13:52:13');
INSERT INTO `log_handle` VALUES (982, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 13:52:14');
INSERT INTO `log_handle` VALUES (983, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-04-04 13:52:14');
INSERT INTO `log_handle` VALUES (984, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-04-04 13:52:22');
INSERT INTO `log_handle` VALUES (985, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-04-04 13:52:22');
INSERT INTO `log_handle` VALUES (986, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-04-04 13:52:29');
INSERT INTO `log_handle` VALUES (987, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-04-04 13:52:29');
INSERT INTO `log_handle` VALUES (988, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-04-04 13:57:01');
INSERT INTO `log_handle` VALUES (989, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 13:57:01');
INSERT INTO `log_handle` VALUES (990, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '34', '2023-04-04 14:15:24');
INSERT INTO `log_handle` VALUES (991, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-04-04 14:15:25');
INSERT INTO `log_handle` VALUES (992, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-04-04 14:15:25');
INSERT INTO `log_handle` VALUES (993, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-04-04 15:20:07');
INSERT INTO `log_handle` VALUES (994, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '43', '2023-04-04 15:20:07');
INSERT INTO `log_handle` VALUES (995, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-04-04 15:20:07');
INSERT INTO `log_handle` VALUES (996, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-04-04 15:20:11');
INSERT INTO `log_handle` VALUES (997, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '83', '2023-04-04 15:20:11');
INSERT INTO `log_handle` VALUES (998, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-04-04 15:20:36');
INSERT INTO `log_handle` VALUES (999, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-04-04 15:20:36');
INSERT INTO `log_handle` VALUES (1000, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-04-04 15:44:55');
INSERT INTO `log_handle` VALUES (1001, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-04-04 15:44:55');
INSERT INTO `log_handle` VALUES (1002, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '45', '2023-04-04 15:44:55');
INSERT INTO `log_handle` VALUES (1003, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '67', '2023-04-04 15:44:55');
INSERT INTO `log_handle` VALUES (1004, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '64', '2023-04-04 15:44:55');
INSERT INTO `log_handle` VALUES (1005, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '45', '2023-04-04 15:44:58');
INSERT INTO `log_handle` VALUES (1006, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-04-04 15:44:58');
INSERT INTO `log_handle` VALUES (1007, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-04-04 15:45:06');
INSERT INTO `log_handle` VALUES (1008, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '25', '2023-04-04 15:49:46');
INSERT INTO `log_handle` VALUES (1009, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-04-04 15:49:47');
INSERT INTO `log_handle` VALUES (1010, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-04-04 15:49:48');
INSERT INTO `log_handle` VALUES (1011, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-04-04 15:49:48');
INSERT INTO `log_handle` VALUES (1012, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-04-04 15:50:13');
INSERT INTO `log_handle` VALUES (1013, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-04-04 15:50:13');
INSERT INTO `log_handle` VALUES (1014, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-04-04 15:50:13');
INSERT INTO `log_handle` VALUES (1015, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-04-04 15:50:13');
INSERT INTO `log_handle` VALUES (1016, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-04 15:50:22');
INSERT INTO `log_handle` VALUES (1017, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-04-04 15:50:22');
INSERT INTO `log_handle` VALUES (1018, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-04-04 15:50:22');
INSERT INTO `log_handle` VALUES (1019, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-04 15:50:22');
INSERT INTO `log_handle` VALUES (1020, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-04 15:53:25');
INSERT INTO `log_handle` VALUES (1021, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-04-04 15:53:25');
INSERT INTO `log_handle` VALUES (1022, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-04-04 15:53:25');
INSERT INTO `log_handle` VALUES (1023, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-04-04 15:53:25');
INSERT INTO `log_handle` VALUES (1024, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '8', '2023-04-04 15:53:30');
INSERT INTO `log_handle` VALUES (1025, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-04-04 15:53:32');
INSERT INTO `log_handle` VALUES (1026, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-04-04 15:53:41');
INSERT INTO `log_handle` VALUES (1027, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '16', '2023-04-04 15:53:41');
INSERT INTO `log_handle` VALUES (1028, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-04-04 15:53:44');
INSERT INTO `log_handle` VALUES (1029, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-04-04 15:53:44');
INSERT INTO `log_handle` VALUES (1030, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '17', '2023-04-04 15:53:47');
INSERT INTO `log_handle` VALUES (1031, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '32', '2023-04-04 15:53:47');
INSERT INTO `log_handle` VALUES (1032, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-04-04 15:53:48');
INSERT INTO `log_handle` VALUES (1033, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '3', '2023-04-04 15:53:48');
INSERT INTO `log_handle` VALUES (1034, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-04-04 15:53:51');
INSERT INTO `log_handle` VALUES (1035, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-04-04 15:53:58');
INSERT INTO `log_handle` VALUES (1036, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-04-04 15:53:58');
INSERT INTO `log_handle` VALUES (1037, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-04-04 15:53:59');
INSERT INTO `log_handle` VALUES (1038, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-04-04 15:53:59');
INSERT INTO `log_handle` VALUES (1039, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-04-04 15:54:01');
INSERT INTO `log_handle` VALUES (1040, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', '', NULL, '2', '2023-04-04 15:54:02');
INSERT INTO `log_handle` VALUES (1041, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:55:57');
INSERT INTO `log_handle` VALUES (1042, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-04 15:56:33');
INSERT INTO `log_handle` VALUES (1043, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:56:35');
INSERT INTO `log_handle` VALUES (1044, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:56:36');
INSERT INTO `log_handle` VALUES (1045, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-04-04 15:56:38');
INSERT INTO `log_handle` VALUES (1046, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:56:40');
INSERT INTO `log_handle` VALUES (1047, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:56:41');
INSERT INTO `log_handle` VALUES (1048, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:56:43');
INSERT INTO `log_handle` VALUES (1049, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-04 15:56:44');
INSERT INTO `log_handle` VALUES (1050, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:56:46');
INSERT INTO `log_handle` VALUES (1051, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-04 15:56:48');
INSERT INTO `log_handle` VALUES (1052, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:56:49');
INSERT INTO `log_handle` VALUES (1053, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:56:51');
INSERT INTO `log_handle` VALUES (1054, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:56:52');
INSERT INTO `log_handle` VALUES (1055, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-04 15:56:54');
INSERT INTO `log_handle` VALUES (1056, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-04 15:56:56');
INSERT INTO `log_handle` VALUES (1057, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 15:59:52');
INSERT INTO `log_handle` VALUES (1058, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-04-04 16:00:17');
INSERT INTO `log_handle` VALUES (1059, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-04 16:00:17');
INSERT INTO `log_handle` VALUES (1060, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '104', '2023-04-07 10:10:11');
INSERT INTO `log_handle` VALUES (1061, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '387', '2023-04-07 10:10:11');
INSERT INTO `log_handle` VALUES (1062, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-04-07 10:10:22');
INSERT INTO `log_handle` VALUES (1063, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '34', '2023-04-07 10:10:22');
INSERT INTO `log_handle` VALUES (1064, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-04-07 10:10:28');
INSERT INTO `log_handle` VALUES (1065, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-04-07 10:10:28');
INSERT INTO `log_handle` VALUES (1066, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-04-07 10:10:30');
INSERT INTO `log_handle` VALUES (1067, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-04-07 10:11:17');
INSERT INTO `log_handle` VALUES (1068, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '98', '2023-04-07 10:11:17');
INSERT INTO `log_handle` VALUES (1069, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '56', '2023-04-07 14:31:11');
INSERT INTO `log_handle` VALUES (1070, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '59', '2023-04-07 14:31:11');
INSERT INTO `log_handle` VALUES (1071, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '47', '2023-04-07 14:31:12');
INSERT INTO `log_handle` VALUES (1072, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '84', '2023-04-07 14:31:12');
INSERT INTO `log_handle` VALUES (1073, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '55', '2023-04-07 14:31:12');
INSERT INTO `log_handle` VALUES (1074, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '11', '2023-04-07 14:31:14');
INSERT INTO `log_handle` VALUES (1075, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '19', '2023-04-07 14:31:14');
INSERT INTO `log_handle` VALUES (1076, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '3', '2023-04-07 14:31:18');
INSERT INTO `log_handle` VALUES (1077, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-04-07 14:31:22');
INSERT INTO `log_handle` VALUES (1078, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '4', '2023-04-07 14:31:25');
INSERT INTO `log_handle` VALUES (1079, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/3', 'GET', '', NULL, '4', '2023-04-07 14:31:29');
INSERT INTO `log_handle` VALUES (1080, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/4', 'GET', '', NULL, '4', '2023-04-07 14:31:33');
INSERT INTO `log_handle` VALUES (1081, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '51', '2023-04-10 21:14:44');
INSERT INTO `log_handle` VALUES (1082, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '44', '2023-04-10 21:14:44');
INSERT INTO `log_handle` VALUES (1083, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '1538', '2023-04-10 21:14:51');
INSERT INTO `log_handle` VALUES (1084, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '58', '2023-04-10 21:14:52');
INSERT INTO `log_handle` VALUES (1085, '导出用户Excel表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_excel', 'GET', '', '导出Excel表失败', '1450', '2023-04-10 21:15:25');
INSERT INTO `log_handle` VALUES (1086, '导出用户Excel表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_excel', 'GET', '', '导出Excel表失败', '18', '2023-04-10 21:15:30');
INSERT INTO `log_handle` VALUES (1087, '下载用户表Excel模板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_model_excel', 'GET', '', NULL, '94', '2023-04-10 21:15:33');
INSERT INTO `log_handle` VALUES (1088, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-04-10 21:19:42');
INSERT INTO `log_handle` VALUES (1089, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '40', '2023-04-10 21:19:42');
INSERT INTO `log_handle` VALUES (1090, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '60', '2023-04-10 21:19:43');
INSERT INTO `log_handle` VALUES (1091, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '87', '2023-04-10 21:19:43');
INSERT INTO `log_handle` VALUES (1092, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '77', '2023-04-10 21:19:43');
INSERT INTO `log_handle` VALUES (1093, '下载用户表Excel模板', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_model_excel', 'GET', '', NULL, '644', '2023-04-10 21:19:47');
INSERT INTO `log_handle` VALUES (1094, '导出用户Excel表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_excel', 'GET', '', '导出Excel表失败', '34', '2023-04-10 21:20:29');
INSERT INTO `log_handle` VALUES (1095, '导出用户Excel表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_excel', 'GET', '', '导出Excel表失败', '16', '2023-04-10 21:20:39');
INSERT INTO `log_handle` VALUES (1096, '导出用户Excel表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/export_excel', 'GET', '', NULL, '649', '2023-04-10 21:24:07');
INSERT INTO `log_handle` VALUES (1097, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '53', '2023-04-11 14:14:24');
INSERT INTO `log_handle` VALUES (1098, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-04-11 14:14:24');
INSERT INTO `log_handle` VALUES (1099, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '30', '2023-04-11 14:14:32');
INSERT INTO `log_handle` VALUES (1100, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '19', '2023-04-11 14:14:32');
INSERT INTO `log_handle` VALUES (1101, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-04-11 14:14:33');
INSERT INTO `log_handle` VALUES (1102, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-04-11 14:14:33');
INSERT INTO `log_handle` VALUES (1103, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-04-11 14:14:34');
INSERT INTO `log_handle` VALUES (1104, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-04-11 14:14:34');
INSERT INTO `log_handle` VALUES (1105, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-04-11 14:14:36');
INSERT INTO `log_handle` VALUES (1106, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/1', 'GET', '', NULL, '2', '2023-04-11 14:14:39');
INSERT INTO `log_handle` VALUES (1107, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '54', '2023-04-12 11:50:24');
INSERT INTO `log_handle` VALUES (1108, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '161', '2023-04-12 11:50:24');
INSERT INTO `log_handle` VALUES (1109, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '74', '2023-04-12 12:00:04');
INSERT INTO `log_handle` VALUES (1110, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '71', '2023-04-12 12:00:05');
INSERT INTO `log_handle` VALUES (1111, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '48', '2023-04-12 12:00:05');
INSERT INTO `log_handle` VALUES (1112, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '29', '2023-04-12 12:00:18');
INSERT INTO `log_handle` VALUES (1113, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '104', '2023-04-12 12:00:18');
INSERT INTO `log_handle` VALUES (1114, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-04-12 12:00:24');
INSERT INTO `log_handle` VALUES (1115, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-04-12 12:00:24');
INSERT INTO `log_handle` VALUES (1116, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-04-12 12:00:44');
INSERT INTO `log_handle` VALUES (1117, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-04-12 13:03:05');
INSERT INTO `log_handle` VALUES (1118, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-04-12 13:03:05');
INSERT INTO `log_handle` VALUES (1119, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '75', '2023-04-13 19:23:14');
INSERT INTO `log_handle` VALUES (1120, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '241', '2023-04-13 19:23:14');
INSERT INTO `log_handle` VALUES (1121, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '25', '2023-04-13 19:23:44');
INSERT INTO `log_handle` VALUES (1122, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '40', '2023-04-13 19:23:44');
INSERT INTO `log_handle` VALUES (1123, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '42', '2023-04-13 19:25:50');
INSERT INTO `log_handle` VALUES (1124, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '33', '2023-04-13 19:25:50');
INSERT INTO `log_handle` VALUES (1125, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '32', '2023-04-13 19:25:56');
INSERT INTO `log_handle` VALUES (1126, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '20', '2023-04-13 19:26:04');
INSERT INTO `log_handle` VALUES (1127, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-04-13 19:26:07');
INSERT INTO `log_handle` VALUES (1128, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '80', '2023-04-13 19:26:07');
INSERT INTO `log_handle` VALUES (1129, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '14', '2023-04-13 19:26:11');
INSERT INTO `log_handle` VALUES (1130, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '16', '2023-04-13 19:26:11');
INSERT INTO `log_handle` VALUES (1131, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-04-13 19:26:14');
INSERT INTO `log_handle` VALUES (1132, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '10', '2023-04-13 19:26:22');
INSERT INTO `log_handle` VALUES (1133, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '14', '2023-04-13 19:26:37');
INSERT INTO `log_handle` VALUES (1134, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '3', '2023-04-13 19:26:45');
INSERT INTO `log_handle` VALUES (1135, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:02');
INSERT INTO `log_handle` VALUES (1136, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:05');
INSERT INTO `log_handle` VALUES (1137, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '3', '2023-04-13 19:27:05');
INSERT INTO `log_handle` VALUES (1138, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '3', '2023-04-13 19:27:07');
INSERT INTO `log_handle` VALUES (1139, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:10');
INSERT INTO `log_handle` VALUES (1140, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:10');
INSERT INTO `log_handle` VALUES (1141, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '3', '2023-04-13 19:27:10');
INSERT INTO `log_handle` VALUES (1142, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:11');
INSERT INTO `log_handle` VALUES (1143, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '11', '2023-04-13 19:27:14');
INSERT INTO `log_handle` VALUES (1144, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-04-13 19:27:14');
INSERT INTO `log_handle` VALUES (1145, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '3', '2023-04-13 19:27:14');
INSERT INTO `log_handle` VALUES (1146, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '16', '2023-04-13 19:27:14');
INSERT INTO `log_handle` VALUES (1147, '精确搜索岗位', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-04-13 19:27:21');
INSERT INTO `log_handle` VALUES (1148, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '5', '2023-04-13 19:29:26');
INSERT INTO `log_handle` VALUES (1149, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/角色', 'GET', '', NULL, '3', '2023-04-13 19:29:37');
INSERT INTO `log_handle` VALUES (1150, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-13 19:30:07');
INSERT INTO `log_handle` VALUES (1151, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-04-13 19:30:07');
INSERT INTO `log_handle` VALUES (1152, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '2', '2023-04-13 19:30:12');
INSERT INTO `log_handle` VALUES (1153, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '55', '2023-04-13 19:33:42');
INSERT INTO `log_handle` VALUES (1154, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '70', '2023-04-13 19:33:42');
INSERT INTO `log_handle` VALUES (1155, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '9', '2023-04-13 19:33:45');
INSERT INTO `log_handle` VALUES (1156, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '82', '2023-04-13 19:41:03');
INSERT INTO `log_handle` VALUES (1157, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '64', '2023-04-13 19:41:03');
INSERT INTO `log_handle` VALUES (1158, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '8', '2023-04-13 19:41:06');
INSERT INTO `log_handle` VALUES (1159, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '64', '2023-04-13 20:23:36');
INSERT INTO `log_handle` VALUES (1160, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '59', '2023-04-13 20:23:36');
INSERT INTO `log_handle` VALUES (1161, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '10', '2023-04-13 20:23:38');
INSERT INTO `log_handle` VALUES (1162, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '83', '2023-04-13 20:23:41');
INSERT INTO `log_handle` VALUES (1163, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '74', '2023-04-13 20:23:41');
INSERT INTO `log_handle` VALUES (1164, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/菜单', 'GET', '', NULL, '4', '2023-04-13 20:23:45');
INSERT INTO `log_handle` VALUES (1165, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-04-13 20:23:46');
INSERT INTO `log_handle` VALUES (1166, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日志', 'GET', '', NULL, '5', '2023-04-13 20:23:53');
INSERT INTO `log_handle` VALUES (1167, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/数据', 'GET', '', NULL, '6', '2023-04-13 20:24:11');
INSERT INTO `log_handle` VALUES (1168, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/字典', 'GET', '', NULL, '4', '2023-04-13 20:24:15');
INSERT INTO `log_handle` VALUES (1169, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/字', 'GET', '', NULL, '3', '2023-04-13 20:24:15');
INSERT INTO `log_handle` VALUES (1170, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/字典', 'GET', '', NULL, '3', '2023-04-13 20:24:18');
INSERT INTO `log_handle` VALUES (1171, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/代码', 'GET', '', NULL, '4', '2023-04-13 20:24:35');
INSERT INTO `log_handle` VALUES (1172, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日志', 'GET', '', NULL, '5', '2023-04-13 20:24:38');
INSERT INTO `log_handle` VALUES (1173, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/操作', 'GET', '', NULL, '3', '2023-04-13 20:24:45');
INSERT INTO `log_handle` VALUES (1174, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/登录', 'GET', '', NULL, '5', '2023-04-13 20:24:48');
INSERT INTO `log_handle` VALUES (1175, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日', 'GET', '', NULL, '6', '2023-04-13 20:24:51');
INSERT INTO `log_handle` VALUES (1176, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日志', 'GET', '', NULL, '6', '2023-04-13 20:24:56');
INSERT INTO `log_handle` VALUES (1177, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/关于', 'GET', '', NULL, '3', '2023-04-13 20:25:03');
INSERT INTO `log_handle` VALUES (1178, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/关', 'GET', '', NULL, '3', '2023-04-13 20:25:04');
INSERT INTO `log_handle` VALUES (1179, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/人', 'GET', '', NULL, '3', '2023-04-13 20:25:09');
INSERT INTO `log_handle` VALUES (1180, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日', 'GET', '', NULL, '5', '2023-04-13 20:25:14');
INSERT INTO `log_handle` VALUES (1181, '根据名称查询二级菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select_menu_title/日志', 'GET', '', NULL, '4', '2023-04-13 20:25:44');
INSERT INTO `log_handle` VALUES (1182, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-04-13 20:27:58');
INSERT INTO `log_handle` VALUES (1183, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-04-13 20:28:05');
INSERT INTO `log_handle` VALUES (1184, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-04-13 20:28:06');
INSERT INTO `log_handle` VALUES (1185, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-04-13 20:28:06');
INSERT INTO `log_handle` VALUES (1186, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-04-13 20:28:08');
INSERT INTO `log_handle` VALUES (1187, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-04-13 20:28:08');
INSERT INTO `log_handle` VALUES (1188, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-04-13 20:28:11');
INSERT INTO `log_handle` VALUES (1189, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-04-13 20:28:11');
INSERT INTO `log_handle` VALUES (1190, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-04-13 20:28:13');
INSERT INTO `log_handle` VALUES (1191, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '11', '2023-04-13 20:28:16');
INSERT INTO `log_handle` VALUES (1192, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '13', '2023-04-13 20:28:18');
INSERT INTO `log_handle` VALUES (1193, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '6', '2023-04-13 20:28:19');
INSERT INTO `log_handle` VALUES (1194, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-04-13 20:28:20');
INSERT INTO `log_handle` VALUES (1195, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '13', '2023-04-13 20:28:20');
INSERT INTO `log_handle` VALUES (1196, '获取全部用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '25', '2023-04-13 20:28:20');
INSERT INTO `log_handle` VALUES (1197, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-04-13 20:28:20');
INSERT INTO `log_handle` VALUES (1198, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-04-13 20:28:20');
INSERT INTO `log_handle` VALUES (1199, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '2', '2023-04-13 20:28:27');
INSERT INTO `log_handle` VALUES (1200, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '2', '2023-04-13 20:41:59');
INSERT INTO `log_handle` VALUES (1201, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '4', '2023-04-13 20:42:03');
INSERT INTO `log_handle` VALUES (1202, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '2', '2023-04-13 20:42:07');
INSERT INTO `log_handle` VALUES (1203, '新增岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/insert', 'POST', '', NULL, '173', '2023-04-13 20:42:26');
INSERT INTO `log_handle` VALUES (1204, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '1', '2023-04-13 20:42:27');
INSERT INTO `log_handle` VALUES (1205, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '3', '2023-04-13 20:42:36');
INSERT INTO `log_handle` VALUES (1206, '查询全部岗位信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '3', '2023-04-13 20:42:37');
INSERT INTO `log_handle` VALUES (1207, '获取全部部门列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '2', '2023-04-13 20:42:40');
INSERT INTO `log_handle` VALUES (1208, '获取所有父节点', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/getGroupParent', 'GET', '', NULL, '3', '2023-04-13 20:42:43');
INSERT INTO `log_handle` VALUES (1209, '获取所有父节点', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/getGroupParent', 'GET', '', NULL, '2', '2023-04-13 20:42:47');
INSERT INTO `log_handle` VALUES (1210, '获取所有父节点', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/group/getGroupParent', 'GET', '', NULL, '2', '2023-04-13 20:42:57');
INSERT INTO `log_handle` VALUES (1211, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-04-13 20:42:59');
INSERT INTO `log_handle` VALUES (1212, '根据ID获取用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-04-13 20:43:02');
INSERT INTO `log_handle` VALUES (1213, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-04-20 10:18:21');
INSERT INTO `log_handle` VALUES (1214, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '48', '2023-04-20 10:18:21');
INSERT INTO `log_handle` VALUES (1215, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-04-20 10:18:51');
INSERT INTO `log_handle` VALUES (1216, '新增菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/insert', 'POST', '', NULL, '107', '2023-04-20 10:24:21');
INSERT INTO `log_handle` VALUES (1217, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-04-20 10:24:23');
INSERT INTO `log_handle` VALUES (1218, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-04-20 10:24:33');
INSERT INTO `log_handle` VALUES (1219, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '176', '2023-04-20 10:24:33');
INSERT INTO `log_handle` VALUES (1220, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '22', '2023-04-20 10:24:35');
INSERT INTO `log_handle` VALUES (1221, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '26', '2023-04-20 10:24:42');
INSERT INTO `log_handle` VALUES (1222, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-04-20 10:24:42');
INSERT INTO `log_handle` VALUES (1223, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-04-20 10:24:42');
INSERT INTO `log_handle` VALUES (1224, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '45', '2023-04-20 10:24:42');
INSERT INTO `log_handle` VALUES (1225, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '44', '2023-04-20 10:24:42');
INSERT INTO `log_handle` VALUES (1226, '根据角色ID获取菜单权限信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '9', '2023-04-20 10:24:50');
INSERT INTO `log_handle` VALUES (1227, '根据角色ID分配角色相应的菜单权限', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/perm/1', 'POST', '', NULL, '222', '2023-04-20 10:24:54');
INSERT INTO `log_handle` VALUES (1228, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-04-20 10:24:56');
INSERT INTO `log_handle` VALUES (1229, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-04-20 10:24:58');
INSERT INTO `log_handle` VALUES (1230, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-20 10:24:58');
INSERT INTO `log_handle` VALUES (1231, '分页获取角色列表', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '17', '2023-04-20 10:24:58');
INSERT INTO `log_handle` VALUES (1232, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-04-20 10:24:58');
INSERT INTO `log_handle` VALUES (1233, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-04-20 10:24:58');
INSERT INTO `log_handle` VALUES (1234, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-04-20 10:25:20');
INSERT INTO `log_handle` VALUES (1235, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/2', 'GET', '', NULL, '3', '2023-04-20 10:25:23');
INSERT INTO `log_handle` VALUES (1236, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/72', 'GET', '', NULL, '1', '2023-04-20 10:25:41');
INSERT INTO `log_handle` VALUES (1237, '更新菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/update', 'POST', '', NULL, '136', '2023-04-20 10:25:59');
INSERT INTO `log_handle` VALUES (1238, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-04-20 10:26:02');
INSERT INTO `log_handle` VALUES (1239, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-04-20 10:26:10');
INSERT INTO `log_handle` VALUES (1240, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-04-20 10:26:10');
INSERT INTO `log_handle` VALUES (1241, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-04-20 10:26:56');
INSERT INTO `log_handle` VALUES (1242, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-04-20 10:26:56');
INSERT INTO `log_handle` VALUES (1243, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-04-20 10:26:59');
INSERT INTO `log_handle` VALUES (1244, '按ID查询菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/info/72', 'GET', '', NULL, '1', '2023-04-20 10:27:03');
INSERT INTO `log_handle` VALUES (1245, '更新菜单', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/update', 'POST', '', NULL, '130', '2023-04-20 10:27:24');
INSERT INTO `log_handle` VALUES (1246, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-04-20 10:27:26');
INSERT INTO `log_handle` VALUES (1247, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-04-20 10:27:32');
INSERT INTO `log_handle` VALUES (1248, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '31', '2023-04-20 10:27:32');
INSERT INTO `log_handle` VALUES (1249, '查询菜单管理中的所有菜单信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-04-20 10:27:32');
INSERT INTO `log_handle` VALUES (1250, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-04-20 10:27:32');
INSERT INTO `log_handle` VALUES (1251, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-04-20 10:44:10');
INSERT INTO `log_handle` VALUES (1252, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-04-20 10:44:10');
INSERT INTO `log_handle` VALUES (1253, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-04-20 10:44:11');
INSERT INTO `log_handle` VALUES (1254, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-20 10:44:39');
INSERT INTO `log_handle` VALUES (1255, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-04-20 10:44:39');
INSERT INTO `log_handle` VALUES (1256, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-04-20 10:45:48');
INSERT INTO `log_handle` VALUES (1257, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-04-20 10:45:48');
INSERT INTO `log_handle` VALUES (1258, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '23', '2023-04-20 10:45:49');
INSERT INTO `log_handle` VALUES (1259, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '44', '2023-04-20 14:06:53');
INSERT INTO `log_handle` VALUES (1260, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '32', '2023-04-20 14:06:53');
INSERT INTO `log_handle` VALUES (1261, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '27', '2023-04-20 14:06:54');
INSERT INTO `log_handle` VALUES (1262, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-04-20 14:07:14');
INSERT INTO `log_handle` VALUES (1263, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-04-20 14:07:15');
INSERT INTO `log_handle` VALUES (1264, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-04-20 14:07:15');
INSERT INTO `log_handle` VALUES (1265, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-04-20 14:07:30');
INSERT INTO `log_handle` VALUES (1266, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-04-20 14:07:30');
INSERT INTO `log_handle` VALUES (1267, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-04-20 14:07:31');
INSERT INTO `log_handle` VALUES (1268, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-20 14:09:50');
INSERT INTO `log_handle` VALUES (1269, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-04-20 14:09:50');
INSERT INTO `log_handle` VALUES (1270, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-04-20 14:09:51');
INSERT INTO `log_handle` VALUES (1271, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-04-20 14:12:24');
INSERT INTO `log_handle` VALUES (1272, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-04-20 14:12:25');
INSERT INTO `log_handle` VALUES (1273, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-04-20 14:12:25');
INSERT INTO `log_handle` VALUES (1274, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-04-20 14:53:34');
INSERT INTO `log_handle` VALUES (1275, '获取侧边菜单导航', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '32', '2023-04-20 14:53:34');
INSERT INTO `log_handle` VALUES (1276, '获取当前用户信息', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '37', '2023-04-20 14:53:35');
INSERT INTO `log_handle` VALUES (1277, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '48', '2023-06-03 09:37:11');
INSERT INTO `log_handle` VALUES (1278, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '47', '2023-06-03 09:37:11');
INSERT INTO `log_handle` VALUES (1279, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-06-03 09:37:37');
INSERT INTO `log_handle` VALUES (1280, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '25', '2023-06-03 09:37:37');
INSERT INTO `log_handle` VALUES (1281, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '42', '2023-06-03 09:55:27');
INSERT INTO `log_handle` VALUES (1282, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '46', '2023-06-03 09:55:27');
INSERT INTO `log_handle` VALUES (1283, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-06-03 09:55:32');
INSERT INTO `log_handle` VALUES (1284, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '144', '2023-06-03 11:20:14');
INSERT INTO `log_handle` VALUES (1285, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '176', '2023-06-03 11:20:14');
INSERT INTO `log_handle` VALUES (1286, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '26', '2023-06-03 11:20:35');
INSERT INTO `log_handle` VALUES (1287, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '30', '2023-06-03 11:22:32');
INSERT INTO `log_handle` VALUES (1288, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '47', '2023-06-03 11:22:36');
INSERT INTO `log_handle` VALUES (1289, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '38', '2023-06-03 11:22:36');
INSERT INTO `log_handle` VALUES (1290, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-06-03 11:22:47');
INSERT INTO `log_handle` VALUES (1291, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '121', '2023-06-03 11:22:47');
INSERT INTO `log_handle` VALUES (1292, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-06-03 11:22:48');
INSERT INTO `log_handle` VALUES (1293, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '26', '2023-06-03 11:22:48');
INSERT INTO `log_handle` VALUES (1294, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-03 11:22:49');
INSERT INTO `log_handle` VALUES (1295, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '19', '2023-06-03 11:22:49');
INSERT INTO `log_handle` VALUES (1296, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '17', '2023-06-03 11:22:52');
INSERT INTO `log_handle` VALUES (1297, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '21', '2023-06-03 11:22:54');
INSERT INTO `log_handle` VALUES (1298, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '34', '2023-06-03 11:22:54');
INSERT INTO `log_handle` VALUES (1299, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-06-03 11:22:55');
INSERT INTO `log_handle` VALUES (1300, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-06-03 11:22:55');
INSERT INTO `log_handle` VALUES (1301, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '55', '2023-06-03 11:27:05');
INSERT INTO `log_handle` VALUES (1302, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '70', '2023-06-03 11:27:05');
INSERT INTO `log_handle` VALUES (1303, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '26', '2023-06-03 11:27:09');
INSERT INTO `log_handle` VALUES (1304, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '31', '2023-06-03 11:27:09');
INSERT INTO `log_handle` VALUES (1305, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-06-03 11:27:13');
INSERT INTO `log_handle` VALUES (1306, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '31', '2023-06-03 11:27:13');
INSERT INTO `log_handle` VALUES (1307, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '42', '2023-06-03 11:27:15');
INSERT INTO `log_handle` VALUES (1308, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-06-03 11:27:15');
INSERT INTO `log_handle` VALUES (1309, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-06-03 11:27:16');
INSERT INTO `log_handle` VALUES (1310, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '7', '2023-06-03 11:27:17');
INSERT INTO `log_handle` VALUES (1311, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '16', '2023-06-03 11:27:18');
INSERT INTO `log_handle` VALUES (1312, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-06-03 11:29:35');
INSERT INTO `log_handle` VALUES (1313, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-03 11:29:35');
INSERT INTO `log_handle` VALUES (1314, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-06-03 11:29:36');
INSERT INTO `log_handle` VALUES (1315, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '35', '2023-06-03 11:29:36');
INSERT INTO `log_handle` VALUES (1316, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-03 11:29:36');
INSERT INTO `log_handle` VALUES (1317, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '6', '2023-06-03 11:29:36');
INSERT INTO `log_handle` VALUES (1318, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '3', '2023-06-03 11:29:37');
INSERT INTO `log_handle` VALUES (1319, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-06-03 11:29:41');
INSERT INTO `log_handle` VALUES (1320, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '2', '2023-06-03 11:29:56');
INSERT INTO `log_handle` VALUES (1321, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '3', '2023-06-03 11:29:57');
INSERT INTO `log_handle` VALUES (1322, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-03 11:29:58');
INSERT INTO `log_handle` VALUES (1323, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '16', '2023-06-03 11:29:58');
INSERT INTO `log_handle` VALUES (1324, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '24', '2023-06-03 11:29:58');
INSERT INTO `log_handle` VALUES (1325, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '56', '2023-06-03 11:42:49');
INSERT INTO `log_handle` VALUES (1326, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '54', '2023-06-03 11:42:49');
INSERT INTO `log_handle` VALUES (1327, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '43', '2023-06-03 18:15:31');
INSERT INTO `log_handle` VALUES (1328, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '116', '2023-06-03 18:15:31');
INSERT INTO `log_handle` VALUES (1329, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '17', '2023-06-03 18:15:37');
INSERT INTO `log_handle` VALUES (1330, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '96', '2023-06-03 18:15:38');
INSERT INTO `log_handle` VALUES (1331, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '52', '2023-06-03 18:15:46');
INSERT INTO `log_handle` VALUES (1332, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-06-03 18:15:54');
INSERT INTO `log_handle` VALUES (1333, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2023-06-03 18:15:54');
INSERT INTO `log_handle` VALUES (1334, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '18', '2023-06-03 18:19:55');
INSERT INTO `log_handle` VALUES (1335, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-06-03 18:19:55');
INSERT INTO `log_handle` VALUES (1336, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-06-03 22:35:13');
INSERT INTO `log_handle` VALUES (1337, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '63', '2023-06-03 22:35:13');
INSERT INTO `log_handle` VALUES (1338, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-06-03 22:35:17');
INSERT INTO `log_handle` VALUES (1339, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '73', '2023-06-03 22:35:23');
INSERT INTO `log_handle` VALUES (1340, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '26', '2023-06-03 22:35:23');
INSERT INTO `log_handle` VALUES (1341, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-06-03 22:35:27');
INSERT INTO `log_handle` VALUES (1342, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '15', '2023-06-03 22:35:27');
INSERT INTO `log_handle` VALUES (1343, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-06-03 22:35:33');
INSERT INTO `log_handle` VALUES (1344, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-06-03 22:35:33');
INSERT INTO `log_handle` VALUES (1345, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-06-03 22:35:48');
INSERT INTO `log_handle` VALUES (1346, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '15', '2023-06-03 22:35:48');
INSERT INTO `log_handle` VALUES (1347, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/5', 'GET', '', NULL, '12', '2023-06-03 22:35:52');
INSERT INTO `log_handle` VALUES (1348, '根据角色ID分配角色相应的菜单权限', 'Windows', '127.0.0.1', '/sys/role/perm/5', 'POST', '', NULL, '146', '2023-06-03 22:36:01');
INSERT INTO `log_handle` VALUES (1349, '根据角色ID分配角色相应的菜单权限', 'Windows', '127.0.0.1', '/sys/role/perm/5', 'POST', '', NULL, '194', '2023-06-03 22:36:06');
INSERT INTO `log_handle` VALUES (1350, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-06-03 22:36:08');
INSERT INTO `log_handle` VALUES (1351, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/5', 'GET', '', NULL, '6', '2023-06-03 22:36:10');
INSERT INTO `log_handle` VALUES (1352, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-06-03 22:36:36');
INSERT INTO `log_handle` VALUES (1353, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '18', '2023-06-03 22:36:36');
INSERT INTO `log_handle` VALUES (1354, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-06-03 22:36:39');
INSERT INTO `log_handle` VALUES (1355, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-03 22:36:39');
INSERT INTO `log_handle` VALUES (1356, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '5', '2023-06-03 22:36:41');
INSERT INTO `log_handle` VALUES (1357, '根据角色ID分配角色相应的菜单权限', 'Windows', '127.0.0.1', '/sys/role/perm/1', 'POST', '', NULL, '92', '2023-06-03 22:36:47');
INSERT INTO `log_handle` VALUES (1358, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '11', '2023-06-03 22:36:50');
INSERT INTO `log_handle` VALUES (1359, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-06-03 22:36:50');
INSERT INTO `log_handle` VALUES (1360, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-06-03 22:36:51');
INSERT INTO `log_handle` VALUES (1361, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-03 22:36:51');
INSERT INTO `log_handle` VALUES (1362, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-06-03 22:36:51');
INSERT INTO `log_handle` VALUES (1363, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-03 22:37:04');
INSERT INTO `log_handle` VALUES (1364, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-06-03 22:37:05');
INSERT INTO `log_handle` VALUES (1365, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-06-03 22:37:05');
INSERT INTO `log_handle` VALUES (1366, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-03 22:37:06');
INSERT INTO `log_handle` VALUES (1367, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-06-03 22:37:06');
INSERT INTO `log_handle` VALUES (1368, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/5', 'GET', '', NULL, '4', '2023-06-03 22:37:13');
INSERT INTO `log_handle` VALUES (1369, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2023-06-03 22:37:22');
INSERT INTO `log_handle` VALUES (1370, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '26', '2023-06-03 22:37:39');
INSERT INTO `log_handle` VALUES (1371, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '22', '2023-06-03 22:37:39');
INSERT INTO `log_handle` VALUES (1372, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-06-03 22:39:41');
INSERT INTO `log_handle` VALUES (1373, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-03 22:39:41');
INSERT INTO `log_handle` VALUES (1374, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-03 22:40:03');
INSERT INTO `log_handle` VALUES (1375, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-06-03 22:40:03');
INSERT INTO `log_handle` VALUES (1376, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-03 22:40:50');
INSERT INTO `log_handle` VALUES (1377, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '38', '2023-06-03 22:40:50');
INSERT INTO `log_handle` VALUES (1378, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-03 22:40:52');
INSERT INTO `log_handle` VALUES (1379, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-03 22:40:52');
INSERT INTO `log_handle` VALUES (1380, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '16', '2023-06-03 22:40:57');
INSERT INTO `log_handle` VALUES (1381, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-03 22:40:59');
INSERT INTO `log_handle` VALUES (1382, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-06-03 22:40:59');
INSERT INTO `log_handle` VALUES (1383, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-03 22:41:00');
INSERT INTO `log_handle` VALUES (1384, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-03 22:41:03');
INSERT INTO `log_handle` VALUES (1385, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-06-03 22:41:03');
INSERT INTO `log_handle` VALUES (1386, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '66', '2023-06-04 15:50:43');
INSERT INTO `log_handle` VALUES (1387, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '68', '2023-06-04 15:50:43');
INSERT INTO `log_handle` VALUES (1388, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '50', '2023-06-04 15:50:43');
INSERT INTO `log_handle` VALUES (1389, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '53', '2023-06-04 15:50:43');
INSERT INTO `log_handle` VALUES (1390, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '109', '2023-06-04 15:50:50');
INSERT INTO `log_handle` VALUES (1391, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '75', '2023-06-04 15:50:50');
INSERT INTO `log_handle` VALUES (1392, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-06-04 15:50:53');
INSERT INTO `log_handle` VALUES (1393, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-06-04 15:50:57');
INSERT INTO `log_handle` VALUES (1394, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '20', '2023-06-04 15:51:02');
INSERT INTO `log_handle` VALUES (1395, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-06-04 15:51:29');
INSERT INTO `log_handle` VALUES (1396, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '26', '2023-06-04 15:51:29');
INSERT INTO `log_handle` VALUES (1397, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '25', '2023-06-04 15:51:33');
INSERT INTO `log_handle` VALUES (1398, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-06-04 15:51:34');
INSERT INTO `log_handle` VALUES (1399, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '16', '2023-06-04 15:51:37');
INSERT INTO `log_handle` VALUES (1400, '根据角色ID分配角色相应的菜单权限', 'Windows', '127.0.0.1', '/sys/role/perm/1', 'POST', '', NULL, '1871', '2023-06-04 15:51:40');
INSERT INTO `log_handle` VALUES (1401, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-06-04 15:51:44');
INSERT INTO `log_handle` VALUES (1402, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-06-04 15:51:45');
INSERT INTO `log_handle` VALUES (1403, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '19', '2023-06-04 15:51:45');
INSERT INTO `log_handle` VALUES (1404, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-06-04 15:51:46');
INSERT INTO `log_handle` VALUES (1405, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-06-04 15:57:55');
INSERT INTO `log_handle` VALUES (1406, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '27', '2023-06-04 15:58:50');
INSERT INTO `log_handle` VALUES (1407, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '23', '2023-06-04 15:58:50');
INSERT INTO `log_handle` VALUES (1408, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-06-04 15:59:28');
INSERT INTO `log_handle` VALUES (1409, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-06-04 15:59:28');
INSERT INTO `log_handle` VALUES (1410, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-06-04 15:59:31');
INSERT INTO `log_handle` VALUES (1411, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '47', '2023-06-04 16:06:31');
INSERT INTO `log_handle` VALUES (1412, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '27', '2023-06-04 16:12:04');
INSERT INTO `log_handle` VALUES (1413, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '30', '2023-06-04 16:12:04');
INSERT INTO `log_handle` VALUES (1414, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-06-04 16:12:08');
INSERT INTO `log_handle` VALUES (1415, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '21', '2023-06-04 16:12:08');
INSERT INTO `log_handle` VALUES (1416, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '11', '2023-06-04 16:12:11');
INSERT INTO `log_handle` VALUES (1417, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '25', '2023-06-04 16:12:11');
INSERT INTO `log_handle` VALUES (1418, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '2', '2023-06-04 16:12:14');
INSERT INTO `log_handle` VALUES (1419, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '148', '2023-06-04 16:12:17');
INSERT INTO `log_handle` VALUES (1420, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-06-04 16:12:19');
INSERT INTO `log_handle` VALUES (1421, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '12', '2023-06-04 16:12:27');
INSERT INTO `log_handle` VALUES (1422, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '36', '2023-06-04 16:12:27');
INSERT INTO `log_handle` VALUES (1423, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '12', '2023-06-04 16:12:27');
INSERT INTO `log_handle` VALUES (1424, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-06-04 16:12:27');
INSERT INTO `log_handle` VALUES (1425, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '24', '2023-06-04 16:12:27');
INSERT INTO `log_handle` VALUES (1426, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-06-04 16:12:54');
INSERT INTO `log_handle` VALUES (1427, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '150', '2023-06-04 16:12:57');
INSERT INTO `log_handle` VALUES (1428, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 16:12:59');
INSERT INTO `log_handle` VALUES (1429, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '2', '2023-06-04 16:13:00');
INSERT INTO `log_handle` VALUES (1430, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '78', '2023-06-04 16:13:03');
INSERT INTO `log_handle` VALUES (1431, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:13:05');
INSERT INTO `log_handle` VALUES (1432, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '24', '2023-06-04 16:13:18');
INSERT INTO `log_handle` VALUES (1433, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:13:18');
INSERT INTO `log_handle` VALUES (1434, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 16:13:18');
INSERT INTO `log_handle` VALUES (1435, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 16:13:20');
INSERT INTO `log_handle` VALUES (1436, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:13:20');
INSERT INTO `log_handle` VALUES (1437, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 16:13:20');
INSERT INTO `log_handle` VALUES (1438, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 16:13:23');
INSERT INTO `log_handle` VALUES (1439, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '6', '2023-06-04 16:13:26');
INSERT INTO `log_handle` VALUES (1440, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '5', '2023-06-04 16:13:27');
INSERT INTO `log_handle` VALUES (1441, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '4', '2023-06-04 16:13:28');
INSERT INTO `log_handle` VALUES (1442, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '6', '2023-06-04 16:13:29');
INSERT INTO `log_handle` VALUES (1443, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '5', '2023-06-04 16:13:30');
INSERT INTO `log_handle` VALUES (1444, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 16:13:31');
INSERT INTO `log_handle` VALUES (1445, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 16:13:31');
INSERT INTO `log_handle` VALUES (1446, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 16:13:31');
INSERT INTO `log_handle` VALUES (1447, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 16:13:32');
INSERT INTO `log_handle` VALUES (1448, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 16:13:34');
INSERT INTO `log_handle` VALUES (1449, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 16:13:34');
INSERT INTO `log_handle` VALUES (1450, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 16:13:34');
INSERT INTO `log_handle` VALUES (1451, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 16:13:35');
INSERT INTO `log_handle` VALUES (1452, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:13:35');
INSERT INTO `log_handle` VALUES (1453, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 16:13:36');
INSERT INTO `log_handle` VALUES (1454, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '22', '2023-06-04 16:13:48');
INSERT INTO `log_handle` VALUES (1455, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:13:57');
INSERT INTO `log_handle` VALUES (1456, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-06-04 16:13:57');
INSERT INTO `log_handle` VALUES (1457, '根据名称查询二级菜单', 'Windows', '127.0.0.1', '/sys/menu/select_menu_title/用户', 'GET', '', NULL, '5', '2023-06-04 16:14:12');
INSERT INTO `log_handle` VALUES (1458, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-06-04 16:14:13');
INSERT INTO `log_handle` VALUES (1459, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '22', '2023-06-04 16:14:13');
INSERT INTO `log_handle` VALUES (1460, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 16:14:23');
INSERT INTO `log_handle` VALUES (1461, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '29', '2023-06-04 16:14:23');
INSERT INTO `log_handle` VALUES (1462, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-06-04 16:29:32');
INSERT INTO `log_handle` VALUES (1463, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:29:32');
INSERT INTO `log_handle` VALUES (1464, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 16:30:17');
INSERT INTO `log_handle` VALUES (1465, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '2', '2023-06-04 16:30:20');
INSERT INTO `log_handle` VALUES (1466, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '2', '2023-06-04 16:30:35');
INSERT INTO `log_handle` VALUES (1467, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '1', '2023-06-04 16:30:39');
INSERT INTO `log_handle` VALUES (1468, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:30:50');
INSERT INTO `log_handle` VALUES (1469, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-06-04 16:30:50');
INSERT INTO `log_handle` VALUES (1470, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-06-04 16:30:51');
INSERT INTO `log_handle` VALUES (1471, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-06-04 16:30:52');
INSERT INTO `log_handle` VALUES (1472, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-06-04 16:30:52');
INSERT INTO `log_handle` VALUES (1473, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-04 16:30:53');
INSERT INTO `log_handle` VALUES (1474, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-06-04 16:30:53');
INSERT INTO `log_handle` VALUES (1475, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '15', '2023-06-04 16:30:58');
INSERT INTO `log_handle` VALUES (1476, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '9', '2023-06-04 16:31:58');
INSERT INTO `log_handle` VALUES (1477, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-06-04 16:31:58');
INSERT INTO `log_handle` VALUES (1478, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:32:02');
INSERT INTO `log_handle` VALUES (1479, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:32:03');
INSERT INTO `log_handle` VALUES (1480, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:32:03');
INSERT INTO `log_handle` VALUES (1481, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '21', '2023-06-04 16:32:12');
INSERT INTO `log_handle` VALUES (1482, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-06-04 16:33:37');
INSERT INTO `log_handle` VALUES (1483, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:33:39');
INSERT INTO `log_handle` VALUES (1484, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 16:33:40');
INSERT INTO `log_handle` VALUES (1485, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 16:33:40');
INSERT INTO `log_handle` VALUES (1486, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-06-04 16:33:40');
INSERT INTO `log_handle` VALUES (1487, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-06-04 16:33:41');
INSERT INTO `log_handle` VALUES (1488, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-06-04 16:33:41');
INSERT INTO `log_handle` VALUES (1489, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-06-04 16:33:49');
INSERT INTO `log_handle` VALUES (1490, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-04 16:33:49');
INSERT INTO `log_handle` VALUES (1491, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-06-04 16:33:53');
INSERT INTO `log_handle` VALUES (1492, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-04 16:33:53');
INSERT INTO `log_handle` VALUES (1493, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '20', '2023-06-04 16:35:36');
INSERT INTO `log_handle` VALUES (1494, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '18', '2023-06-04 16:35:38');
INSERT INTO `log_handle` VALUES (1495, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '15', '2023-06-04 16:35:58');
INSERT INTO `log_handle` VALUES (1496, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '19', '2023-06-04 16:35:58');
INSERT INTO `log_handle` VALUES (1497, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '17', '2023-06-04 16:36:01');
INSERT INTO `log_handle` VALUES (1498, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '28', '2023-06-04 16:36:01');
INSERT INTO `log_handle` VALUES (1499, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-06-04 16:36:02');
INSERT INTO `log_handle` VALUES (1500, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '18', '2023-06-04 16:36:02');
INSERT INTO `log_handle` VALUES (1501, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '29', '2023-06-04 16:36:02');
INSERT INTO `log_handle` VALUES (1502, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:36:03');
INSERT INTO `log_handle` VALUES (1503, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2023-06-04 16:36:03');
INSERT INTO `log_handle` VALUES (1504, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:36:06');
INSERT INTO `log_handle` VALUES (1505, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 16:36:06');
INSERT INTO `log_handle` VALUES (1506, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '3', '2023-06-04 16:36:13');
INSERT INTO `log_handle` VALUES (1507, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '2', '2023-06-04 16:36:17');
INSERT INTO `log_handle` VALUES (1508, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '183', '2023-06-04 16:36:21');
INSERT INTO `log_handle` VALUES (1509, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '6', '2023-06-04 16:36:23');
INSERT INTO `log_handle` VALUES (1510, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/2', 'GET', '', NULL, '3', '2023-06-04 16:36:27');
INSERT INTO `log_handle` VALUES (1511, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '10', '2023-06-04 16:36:32');
INSERT INTO `log_handle` VALUES (1512, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-06-04 16:36:32');
INSERT INTO `log_handle` VALUES (1513, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-06-04 16:36:33');
INSERT INTO `log_handle` VALUES (1514, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 16:36:33');
INSERT INTO `log_handle` VALUES (1515, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '21', '2023-06-04 16:36:33');
INSERT INTO `log_handle` VALUES (1516, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/3', 'GET', '', NULL, '2', '2023-06-04 16:36:55');
INSERT INTO `log_handle` VALUES (1517, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '1094', '2023-06-04 16:36:59');
INSERT INTO `log_handle` VALUES (1518, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 16:37:02');
INSERT INTO `log_handle` VALUES (1519, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/4', 'GET', '', NULL, '3', '2023-06-04 16:37:05');
INSERT INTO `log_handle` VALUES (1520, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '422', '2023-06-04 16:37:08');
INSERT INTO `log_handle` VALUES (1521, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 16:37:11');
INSERT INTO `log_handle` VALUES (1522, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/5', 'GET', '', NULL, '2', '2023-06-04 16:37:13');
INSERT INTO `log_handle` VALUES (1523, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '866', '2023-06-04 16:37:19');
INSERT INTO `log_handle` VALUES (1524, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 16:37:22');
INSERT INTO `log_handle` VALUES (1525, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:37:25');
INSERT INTO `log_handle` VALUES (1526, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '20', '2023-06-04 16:37:25');
INSERT INTO `log_handle` VALUES (1527, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 16:37:36');
INSERT INTO `log_handle` VALUES (1528, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 16:37:36');
INSERT INTO `log_handle` VALUES (1529, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:37:37');
INSERT INTO `log_handle` VALUES (1530, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 16:37:37');
INSERT INTO `log_handle` VALUES (1531, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '3', '2023-06-04 16:37:39');
INSERT INTO `log_handle` VALUES (1532, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-04 16:37:39');
INSERT INTO `log_handle` VALUES (1533, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 16:37:42');
INSERT INTO `log_handle` VALUES (1534, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 16:37:42');
INSERT INTO `log_handle` VALUES (1535, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-06-04 16:38:03');
INSERT INTO `log_handle` VALUES (1536, '按ID查询菜单信息', 'Windows', '127.0.0.1', '/sys/menu/info/1', 'GET', '', NULL, '1', '2023-06-04 16:38:27');
INSERT INTO `log_handle` VALUES (1537, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-04 16:39:06');
INSERT INTO `log_handle` VALUES (1538, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:39:09');
INSERT INTO `log_handle` VALUES (1539, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:39:10');
INSERT INTO `log_handle` VALUES (1540, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-06-04 16:39:12');
INSERT INTO `log_handle` VALUES (1541, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '10', '2023-06-04 16:39:23');
INSERT INTO `log_handle` VALUES (1542, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-06-04 16:39:27');
INSERT INTO `log_handle` VALUES (1543, '按ID查询菜单信息', 'Windows', '127.0.0.1', '/sys/menu/info/72', 'GET', '', NULL, '2', '2023-06-04 16:40:54');
INSERT INTO `log_handle` VALUES (1544, '按ID查询菜单信息', 'Windows', '127.0.0.1', '/sys/menu/info/72', 'GET', '', NULL, '1', '2023-06-04 16:41:08');
INSERT INTO `log_handle` VALUES (1545, '更新菜单', 'Windows', '127.0.0.1', '/sys/menu/update', 'POST', '', NULL, '59', '2023-06-04 16:41:41');
INSERT INTO `log_handle` VALUES (1546, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-04 16:41:43');
INSERT INTO `log_handle` VALUES (1547, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-06-04 16:42:01');
INSERT INTO `log_handle` VALUES (1548, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2023-06-04 16:42:28');
INSERT INTO `log_handle` VALUES (1549, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-06-04 16:42:28');
INSERT INTO `log_handle` VALUES (1550, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 16:42:29');
INSERT INTO `log_handle` VALUES (1551, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '23', '2023-06-04 16:42:29');
INSERT INTO `log_handle` VALUES (1552, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-06-04 16:42:30');
INSERT INTO `log_handle` VALUES (1553, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '5', '2023-06-04 16:42:30');
INSERT INTO `log_handle` VALUES (1554, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '13', '2023-06-04 16:42:32');
INSERT INTO `log_handle` VALUES (1555, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '7', '2023-06-04 16:43:02');
INSERT INTO `log_handle` VALUES (1556, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '2', '2023-06-04 16:43:09');
INSERT INTO `log_handle` VALUES (1557, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '3', '2023-06-04 16:43:10');
INSERT INTO `log_handle` VALUES (1558, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '4', '2023-06-04 16:43:11');
INSERT INTO `log_handle` VALUES (1559, '精确搜索岗位', 'Windows', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-06-04 16:43:14');
INSERT INTO `log_handle` VALUES (1560, '精确搜索岗位', 'Windows', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-06-04 16:43:15');
INSERT INTO `log_handle` VALUES (1561, '精确搜索岗位', 'Windows', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '1', '2023-06-04 16:43:16');
INSERT INTO `log_handle` VALUES (1562, '精确搜索岗位', 'Windows', '127.0.0.1', '/sys/job/searchAnd', 'POST', '', NULL, '2', '2023-06-04 16:43:17');
INSERT INTO `log_handle` VALUES (1563, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', '', NULL, '1', '2023-06-04 16:43:20');
INSERT INTO `log_handle` VALUES (1564, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '5', '2023-06-04 16:43:27');
INSERT INTO `log_handle` VALUES (1565, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-06-04 16:43:30');
INSERT INTO `log_handle` VALUES (1566, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-06-04 16:43:31');
INSERT INTO `log_handle` VALUES (1567, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-06-04 16:43:31');
INSERT INTO `log_handle` VALUES (1568, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 16:43:32');
INSERT INTO `log_handle` VALUES (1569, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '16', '2023-06-04 16:43:32');
INSERT INTO `log_handle` VALUES (1570, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 16:44:16');
INSERT INTO `log_handle` VALUES (1571, '修改用户头像', 'Windows', '127.0.0.1', '/sys/user/update_avatar', 'POST', '', NULL, '760', '2023-06-04 16:44:32');
INSERT INTO `log_handle` VALUES (1572, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-06-04 16:44:34');
INSERT INTO `log_handle` VALUES (1573, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 16:44:34');
INSERT INTO `log_handle` VALUES (1574, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '14', '2023-06-04 20:27:52');
INSERT INTO `log_handle` VALUES (1575, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:54:16');
INSERT INTO `log_handle` VALUES (1576, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '15', '2023-06-04 20:54:16');
INSERT INTO `log_handle` VALUES (1577, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-06-04 20:54:21');
INSERT INTO `log_handle` VALUES (1578, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 20:54:21');
INSERT INTO `log_handle` VALUES (1579, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:54:50');
INSERT INTO `log_handle` VALUES (1580, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 20:54:50');
INSERT INTO `log_handle` VALUES (1581, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '5', '2023-06-04 20:54:56');
INSERT INTO `log_handle` VALUES (1582, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '7', '2023-06-04 20:54:56');
INSERT INTO `log_handle` VALUES (1583, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:55:00');
INSERT INTO `log_handle` VALUES (1584, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:55:00');
INSERT INTO `log_handle` VALUES (1585, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:56:24');
INSERT INTO `log_handle` VALUES (1586, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:56:24');
INSERT INTO `log_handle` VALUES (1587, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:56:30');
INSERT INTO `log_handle` VALUES (1588, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 20:56:30');
INSERT INTO `log_handle` VALUES (1589, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 20:56:32');
INSERT INTO `log_handle` VALUES (1590, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:56:32');
INSERT INTO `log_handle` VALUES (1591, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-06-04 20:56:38');
INSERT INTO `log_handle` VALUES (1592, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '7', '2023-06-04 20:56:38');
INSERT INTO `log_handle` VALUES (1593, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '6', '2023-06-04 20:56:39');
INSERT INTO `log_handle` VALUES (1594, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '5', '2023-06-04 20:56:39');
INSERT INTO `log_handle` VALUES (1595, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '7', '2023-06-04 20:57:17');
INSERT INTO `log_handle` VALUES (1596, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:57:17');
INSERT INTO `log_handle` VALUES (1597, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:57:48');
INSERT INTO `log_handle` VALUES (1598, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-06-04 20:57:48');
INSERT INTO `log_handle` VALUES (1599, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:57:52');
INSERT INTO `log_handle` VALUES (1600, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:57:52');
INSERT INTO `log_handle` VALUES (1601, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:57:56');
INSERT INTO `log_handle` VALUES (1602, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:57:56');
INSERT INTO `log_handle` VALUES (1603, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '6', '2023-06-04 20:58:44');
INSERT INTO `log_handle` VALUES (1604, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:58:44');
INSERT INTO `log_handle` VALUES (1605, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-06-04 20:58:48');
INSERT INTO `log_handle` VALUES (1606, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-06-04 20:58:48');
INSERT INTO `log_handle` VALUES (1607, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '8', '2023-06-04 20:59:18');
INSERT INTO `log_handle` VALUES (1608, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 20:59:18');
INSERT INTO `log_handle` VALUES (1609, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '12', '2023-06-04 20:59:55');
INSERT INTO `log_handle` VALUES (1610, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-06-04 21:00:03');
INSERT INTO `log_handle` VALUES (1611, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-06-04 21:00:03');
INSERT INTO `log_handle` VALUES (1612, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '18', '2023-06-04 21:00:38');
INSERT INTO `log_handle` VALUES (1613, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-06-04 21:00:38');
INSERT INTO `log_handle` VALUES (1614, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:01:13');
INSERT INTO `log_handle` VALUES (1615, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 21:01:13');
INSERT INTO `log_handle` VALUES (1616, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:01:26');
INSERT INTO `log_handle` VALUES (1617, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:01:26');
INSERT INTO `log_handle` VALUES (1618, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:01:34');
INSERT INTO `log_handle` VALUES (1619, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:01:34');
INSERT INTO `log_handle` VALUES (1620, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:01:37');
INSERT INTO `log_handle` VALUES (1621, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:01:37');
INSERT INTO `log_handle` VALUES (1622, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:01:49');
INSERT INTO `log_handle` VALUES (1623, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:01:49');
INSERT INTO `log_handle` VALUES (1624, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:02:05');
INSERT INTO `log_handle` VALUES (1625, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 21:02:05');
INSERT INTO `log_handle` VALUES (1626, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:02:08');
INSERT INTO `log_handle` VALUES (1627, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:02:08');
INSERT INTO `log_handle` VALUES (1628, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:02:50');
INSERT INTO `log_handle` VALUES (1629, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 21:02:50');
INSERT INTO `log_handle` VALUES (1630, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:02:52');
INSERT INTO `log_handle` VALUES (1631, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:02:52');
INSERT INTO `log_handle` VALUES (1632, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:02:53');
INSERT INTO `log_handle` VALUES (1633, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:02:53');
INSERT INTO `log_handle` VALUES (1634, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-06-04 21:02:58');
INSERT INTO `log_handle` VALUES (1635, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:02:58');
INSERT INTO `log_handle` VALUES (1636, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:03:02');
INSERT INTO `log_handle` VALUES (1637, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 21:03:02');
INSERT INTO `log_handle` VALUES (1638, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:05:55');
INSERT INTO `log_handle` VALUES (1639, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:05:55');
INSERT INTO `log_handle` VALUES (1640, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-06-04 21:05:55');
INSERT INTO `log_handle` VALUES (1641, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '11', '2023-06-04 21:06:01');
INSERT INTO `log_handle` VALUES (1642, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '11', '2023-06-04 21:06:01');
INSERT INTO `log_handle` VALUES (1643, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '19', '2023-06-04 21:06:01');
INSERT INTO `log_handle` VALUES (1644, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:06:29');
INSERT INTO `log_handle` VALUES (1645, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:06:29');
INSERT INTO `log_handle` VALUES (1646, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:06:53');
INSERT INTO `log_handle` VALUES (1647, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:06:53');
INSERT INTO `log_handle` VALUES (1648, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:06:58');
INSERT INTO `log_handle` VALUES (1649, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:06:58');
INSERT INTO `log_handle` VALUES (1650, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-06-04 21:07:55');
INSERT INTO `log_handle` VALUES (1651, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '14', '2023-06-04 21:07:56');
INSERT INTO `log_handle` VALUES (1652, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-06-04 21:07:56');
INSERT INTO `log_handle` VALUES (1653, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-06-04 21:07:56');
INSERT INTO `log_handle` VALUES (1654, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '9', '2023-06-04 21:07:56');
INSERT INTO `log_handle` VALUES (1655, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:08:14');
INSERT INTO `log_handle` VALUES (1656, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 21:08:14');
INSERT INTO `log_handle` VALUES (1657, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:08:19');
INSERT INTO `log_handle` VALUES (1658, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:08:19');
INSERT INTO `log_handle` VALUES (1659, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:08:25');
INSERT INTO `log_handle` VALUES (1660, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:08:25');
INSERT INTO `log_handle` VALUES (1661, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:08:27');
INSERT INTO `log_handle` VALUES (1662, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:08:27');
INSERT INTO `log_handle` VALUES (1663, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-06-04 21:10:53');
INSERT INTO `log_handle` VALUES (1664, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '16', '2023-06-04 21:10:53');
INSERT INTO `log_handle` VALUES (1665, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:10:55');
INSERT INTO `log_handle` VALUES (1666, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:10:55');
INSERT INTO `log_handle` VALUES (1667, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:11:07');
INSERT INTO `log_handle` VALUES (1668, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 21:11:07');
INSERT INTO `log_handle` VALUES (1669, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:11:24');
INSERT INTO `log_handle` VALUES (1670, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 21:11:24');
INSERT INTO `log_handle` VALUES (1671, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:11:28');
INSERT INTO `log_handle` VALUES (1672, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:11:28');
INSERT INTO `log_handle` VALUES (1673, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:11:31');
INSERT INTO `log_handle` VALUES (1674, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:11:31');
INSERT INTO `log_handle` VALUES (1675, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:11:43');
INSERT INTO `log_handle` VALUES (1676, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:11:43');
INSERT INTO `log_handle` VALUES (1677, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:11:56');
INSERT INTO `log_handle` VALUES (1678, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:11:56');
INSERT INTO `log_handle` VALUES (1679, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:11:57');
INSERT INTO `log_handle` VALUES (1680, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:11:57');
INSERT INTO `log_handle` VALUES (1681, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '8', '2023-06-04 21:12:09');
INSERT INTO `log_handle` VALUES (1682, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-06-04 21:12:09');
INSERT INTO `log_handle` VALUES (1683, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:12:10');
INSERT INTO `log_handle` VALUES (1684, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:12:10');
INSERT INTO `log_handle` VALUES (1685, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '10', '2023-06-04 21:12:10');
INSERT INTO `log_handle` VALUES (1686, '分配用户角色', 'Windows', '127.0.0.1', '/sys/user/perm_role/', 'POST', '', NULL, '499', '2023-06-04 21:12:43');
INSERT INTO `log_handle` VALUES (1687, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:12:45');
INSERT INTO `log_handle` VALUES (1688, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:14:34');
INSERT INTO `log_handle` VALUES (1689, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:14:34');
INSERT INTO `log_handle` VALUES (1690, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:14:38');
INSERT INTO `log_handle` VALUES (1691, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 21:14:38');
INSERT INTO `log_handle` VALUES (1692, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:15:33');
INSERT INTO `log_handle` VALUES (1693, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 21:15:33');
INSERT INTO `log_handle` VALUES (1694, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-06-04 21:15:34');
INSERT INTO `log_handle` VALUES (1695, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 21:15:34');
INSERT INTO `log_handle` VALUES (1696, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:15:40');
INSERT INTO `log_handle` VALUES (1697, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:15:40');
INSERT INTO `log_handle` VALUES (1698, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:15:42');
INSERT INTO `log_handle` VALUES (1699, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:15:42');
INSERT INTO `log_handle` VALUES (1700, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:15:46');
INSERT INTO `log_handle` VALUES (1701, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:15:46');
INSERT INTO `log_handle` VALUES (1702, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:16:00');
INSERT INTO `log_handle` VALUES (1703, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:16:00');
INSERT INTO `log_handle` VALUES (1704, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:16:03');
INSERT INTO `log_handle` VALUES (1705, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:16:03');
INSERT INTO `log_handle` VALUES (1706, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:16:08');
INSERT INTO `log_handle` VALUES (1707, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:16:08');
INSERT INTO `log_handle` VALUES (1708, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:16:36');
INSERT INTO `log_handle` VALUES (1709, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:16:36');
INSERT INTO `log_handle` VALUES (1710, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:16:38');
INSERT INTO `log_handle` VALUES (1711, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:16:38');
INSERT INTO `log_handle` VALUES (1712, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:16:40');
INSERT INTO `log_handle` VALUES (1713, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:16:40');
INSERT INTO `log_handle` VALUES (1714, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:16:44');
INSERT INTO `log_handle` VALUES (1715, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-06-04 21:16:44');
INSERT INTO `log_handle` VALUES (1716, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:16:46');
INSERT INTO `log_handle` VALUES (1717, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:16:46');
INSERT INTO `log_handle` VALUES (1718, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:16:53');
INSERT INTO `log_handle` VALUES (1719, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:16:53');
INSERT INTO `log_handle` VALUES (1720, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:16:54');
INSERT INTO `log_handle` VALUES (1721, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:16:54');
INSERT INTO `log_handle` VALUES (1722, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:17:09');
INSERT INTO `log_handle` VALUES (1723, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:17:09');
INSERT INTO `log_handle` VALUES (1724, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:17:12');
INSERT INTO `log_handle` VALUES (1725, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:17:12');
INSERT INTO `log_handle` VALUES (1726, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:17:25');
INSERT INTO `log_handle` VALUES (1727, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-06-04 21:17:25');
INSERT INTO `log_handle` VALUES (1728, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:17:43');
INSERT INTO `log_handle` VALUES (1729, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:17:43');
INSERT INTO `log_handle` VALUES (1730, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:17:45');
INSERT INTO `log_handle` VALUES (1731, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:17:45');
INSERT INTO `log_handle` VALUES (1732, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:17:49');
INSERT INTO `log_handle` VALUES (1733, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '7', '2023-06-04 21:17:49');
INSERT INTO `log_handle` VALUES (1734, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-06-04 21:17:58');
INSERT INTO `log_handle` VALUES (1735, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:17:58');
INSERT INTO `log_handle` VALUES (1736, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:18:04');
INSERT INTO `log_handle` VALUES (1737, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:18:04');
INSERT INTO `log_handle` VALUES (1738, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:18:07');
INSERT INTO `log_handle` VALUES (1739, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:18:07');
INSERT INTO `log_handle` VALUES (1740, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:18:11');
INSERT INTO `log_handle` VALUES (1741, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:18:11');
INSERT INTO `log_handle` VALUES (1742, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:18:15');
INSERT INTO `log_handle` VALUES (1743, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '10', '2023-06-04 21:18:15');
INSERT INTO `log_handle` VALUES (1744, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:18:18');
INSERT INTO `log_handle` VALUES (1745, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:18:18');
INSERT INTO `log_handle` VALUES (1746, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '2', '2023-06-04 21:18:21');
INSERT INTO `log_handle` VALUES (1747, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '8', '2023-06-04 21:18:21');
INSERT INTO `log_handle` VALUES (1748, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:18:26');
INSERT INTO `log_handle` VALUES (1749, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-06-04 21:18:26');
INSERT INTO `log_handle` VALUES (1750, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '3', '2023-06-04 21:18:29');
INSERT INTO `log_handle` VALUES (1751, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '12', '2023-06-04 21:18:29');
INSERT INTO `log_handle` VALUES (1752, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '4', '2023-06-04 21:18:36');
INSERT INTO `log_handle` VALUES (1753, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '11', '2023-06-04 21:18:36');
INSERT INTO `log_handle` VALUES (1754, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-06-04 21:20:49');
INSERT INTO `log_handle` VALUES (1755, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '13', '2023-06-04 21:20:49');
INSERT INTO `log_handle` VALUES (1756, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '19', '2023-06-04 21:50:37');
INSERT INTO `log_handle` VALUES (1757, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/get_userinfo', 'GET', '', NULL, '19', '2023-06-04 21:50:37');
INSERT INTO `log_handle` VALUES (1758, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '38', '2023-06-06 13:37:51');
INSERT INTO `log_handle` VALUES (1759, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '81', '2023-06-06 13:37:51');
INSERT INTO `log_handle` VALUES (1760, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '31', '2023-06-06 13:38:19');
INSERT INTO `log_handle` VALUES (1761, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '15', '2023-06-06 13:41:08');
INSERT INTO `log_handle` VALUES (1762, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-06-06 13:41:08');
INSERT INTO `log_handle` VALUES (1763, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-06-06 13:41:08');
INSERT INTO `log_handle` VALUES (1764, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '58', '2023-06-06 15:33:56');
INSERT INTO `log_handle` VALUES (1765, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-06-06 15:33:56');
INSERT INTO `log_handle` VALUES (1766, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '38', '2023-06-06 15:33:56');
INSERT INTO `log_handle` VALUES (1767, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '68', '2023-06-06 15:34:56');
INSERT INTO `log_handle` VALUES (1768, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '37', '2023-06-06 15:34:56');
INSERT INTO `log_handle` VALUES (1769, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '40', '2023-06-06 15:34:57');
INSERT INTO `log_handle` VALUES (1770, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-06-06 15:37:33');
INSERT INTO `log_handle` VALUES (1771, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-06-06 15:37:33');
INSERT INTO `log_handle` VALUES (1772, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '26', '2023-06-06 15:37:33');
INSERT INTO `log_handle` VALUES (1773, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '61', '2023-06-07 14:19:02');
INSERT INTO `log_handle` VALUES (1774, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '101', '2023-06-07 14:19:02');
INSERT INTO `log_handle` VALUES (1775, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '67', '2023-06-27 10:21:15');
INSERT INTO `log_handle` VALUES (1776, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '291', '2023-06-27 10:21:15');
INSERT INTO `log_handle` VALUES (1777, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '42', '2023-07-04 09:45:59');
INSERT INTO `log_handle` VALUES (1778, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '459', '2023-07-04 09:45:59');
INSERT INTO `log_handle` VALUES (1779, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-07-04 09:46:08');
INSERT INTO `log_handle` VALUES (1780, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '23', '2023-07-04 09:46:08');
INSERT INTO `log_handle` VALUES (1781, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '52', '2023-07-15 16:57:35');
INSERT INTO `log_handle` VALUES (1782, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '1359', '2023-07-15 16:57:35');
INSERT INTO `log_handle` VALUES (1783, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '19', '2023-07-15 16:57:39');
INSERT INTO `log_handle` VALUES (1784, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '92', '2023-07-15 16:57:39');
INSERT INTO `log_handle` VALUES (1785, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '34', '2023-07-15 16:57:56');
INSERT INTO `log_handle` VALUES (1786, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '5', '2023-07-15 16:58:00');
INSERT INTO `log_handle` VALUES (1787, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-07-15 16:58:01');
INSERT INTO `log_handle` VALUES (1788, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '62', '2023-07-15 16:58:27');
INSERT INTO `log_handle` VALUES (1789, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '27', '2023-07-15 16:58:31');
INSERT INTO `log_handle` VALUES (1790, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-07-15 16:58:33');
INSERT INTO `log_handle` VALUES (1791, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '42', '2023-07-15 16:58:34');
INSERT INTO `log_handle` VALUES (1792, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '21', '2023-07-15 16:58:34');
INSERT INTO `log_handle` VALUES (1793, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1794, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '22', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1795, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '51', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1796, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1797, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '16', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1798, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '52', '2023-07-15 16:58:35');
INSERT INTO `log_handle` VALUES (1799, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '44', '2023-07-15 16:58:36');
INSERT INTO `log_handle` VALUES (1800, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-07-15 16:58:42');
INSERT INTO `log_handle` VALUES (1801, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-07-15 16:58:47');
INSERT INTO `log_handle` VALUES (1802, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '18', '2023-07-15 16:58:47');
INSERT INTO `log_handle` VALUES (1803, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '19', '2023-07-15 16:58:55');
INSERT INTO `log_handle` VALUES (1804, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-07-15 16:58:56');
INSERT INTO `log_handle` VALUES (1805, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-07-15 16:58:56');
INSERT INTO `log_handle` VALUES (1806, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-07-15 16:58:57');
INSERT INTO `log_handle` VALUES (1807, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-07-15 16:58:57');
INSERT INTO `log_handle` VALUES (1808, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '20', '2023-07-15 16:58:57');
INSERT INTO `log_handle` VALUES (1809, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1810, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1811, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1812, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1813, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1814, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-07-15 16:58:58');
INSERT INTO `log_handle` VALUES (1815, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-07-15 16:59:08');
INSERT INTO `log_handle` VALUES (1816, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-07-15 16:59:08');
INSERT INTO `log_handle` VALUES (1817, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '6', '2023-07-15 16:59:09');
INSERT INTO `log_handle` VALUES (1818, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '9', '2023-07-15 16:59:09');
INSERT INTO `log_handle` VALUES (1819, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-07-15 16:59:09');
INSERT INTO `log_handle` VALUES (1820, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-07-15 16:59:11');
INSERT INTO `log_handle` VALUES (1821, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '15', '2023-07-15 16:59:11');
INSERT INTO `log_handle` VALUES (1822, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-07-15 16:59:16');
INSERT INTO `log_handle` VALUES (1823, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-07-15 16:59:17');
INSERT INTO `log_handle` VALUES (1824, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '13', '2023-07-15 16:59:17');
INSERT INTO `log_handle` VALUES (1825, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-07-15 16:59:46');
INSERT INTO `log_handle` VALUES (1826, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '7', '2023-07-15 16:59:50');
INSERT INTO `log_handle` VALUES (1827, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', 'name=%5B%5D', NULL, '16', '2023-07-15 16:59:56');
INSERT INTO `log_handle` VALUES (1828, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-07-15 17:00:02');
INSERT INTO `log_handle` VALUES (1829, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-07-15 17:00:08');
INSERT INTO `log_handle` VALUES (1830, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '61', '2023-07-15 17:00:10');
INSERT INTO `log_handle` VALUES (1831, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-07-15 17:02:44');
INSERT INTO `log_handle` VALUES (1832, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2023-07-15 17:02:44');
INSERT INTO `log_handle` VALUES (1833, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '43', '2023-07-15 17:02:45');
INSERT INTO `log_handle` VALUES (1834, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '81', '2023-07-15 17:02:45');
INSERT INTO `log_handle` VALUES (1835, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2023-07-15 17:04:42');
INSERT INTO `log_handle` VALUES (1836, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-07-15 17:04:42');
INSERT INTO `log_handle` VALUES (1837, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', 'name=%5B%5D', NULL, '3', '2023-07-15 17:04:43');
INSERT INTO `log_handle` VALUES (1838, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '2', '2023-07-15 17:04:44');
INSERT INTO `log_handle` VALUES (1839, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-07-15 17:04:45');
INSERT INTO `log_handle` VALUES (1840, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '14', '2023-07-15 17:04:45');
INSERT INTO `log_handle` VALUES (1841, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '13', '2023-07-15 17:07:42');
INSERT INTO `log_handle` VALUES (1842, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-07-15 17:07:42');
INSERT INTO `log_handle` VALUES (1843, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-07-15 17:09:32');
INSERT INTO `log_handle` VALUES (1844, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '21', '2023-07-15 17:13:32');
INSERT INTO `log_handle` VALUES (1845, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-07-15 17:13:34');
INSERT INTO `log_handle` VALUES (1846, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-07-15 17:13:40');
INSERT INTO `log_handle` VALUES (1847, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-07-15 17:13:42');
INSERT INTO `log_handle` VALUES (1848, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-07-15 17:13:46');
INSERT INTO `log_handle` VALUES (1849, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '5', '2023-07-15 17:14:03');
INSERT INTO `log_handle` VALUES (1850, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-07-15 17:14:05');
INSERT INTO `log_handle` VALUES (1851, '新增菜单', 'Windows', '127.0.0.1', '/sys/menu/insert', 'POST', '', NULL, '392', '2023-07-15 17:14:51');
INSERT INTO `log_handle` VALUES (1852, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '3', '2023-07-15 17:14:54');
INSERT INTO `log_handle` VALUES (1853, '按ID查询菜单信息', 'Windows', '127.0.0.1', '/sys/menu/info/73', 'GET', '', NULL, '2', '2023-07-15 17:15:12');
INSERT INTO `log_handle` VALUES (1854, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '4', '2023-07-15 17:15:46');
INSERT INTO `log_handle` VALUES (1855, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '20', '2023-07-15 17:15:46');
INSERT INTO `log_handle` VALUES (1856, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '13', '2023-07-15 17:15:49');
INSERT INTO `log_handle` VALUES (1857, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '3', '2023-07-15 17:15:53');
INSERT INTO `log_handle` VALUES (1858, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/2', 'GET', '', NULL, '3', '2023-07-15 17:15:57');
INSERT INTO `log_handle` VALUES (1859, '删除角色', 'Windows', '127.0.0.1', '/sys/role/delete', 'DELETE', '', NULL, '200', '2023-07-15 17:16:08');
INSERT INTO `log_handle` VALUES (1860, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2023-07-15 17:16:10');
INSERT INTO `log_handle` VALUES (1861, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '5', '2023-07-15 17:22:33');
INSERT INTO `log_handle` VALUES (1862, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '55', '2023-07-15 18:05:49');
INSERT INTO `log_handle` VALUES (1863, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '24', '2023-07-15 18:05:50');
INSERT INTO `log_handle` VALUES (1864, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '30', '2023-07-15 18:05:50');
INSERT INTO `log_handle` VALUES (1865, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '62', '2023-07-15 18:05:50');
INSERT INTO `log_handle` VALUES (1866, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '86', '2023-07-15 18:05:50');
INSERT INTO `log_handle` VALUES (1867, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '34', '2023-07-15 18:05:54');
INSERT INTO `log_handle` VALUES (1868, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/1', 'GET', '', NULL, '2', '2023-07-15 18:05:55');
INSERT INTO `log_handle` VALUES (1869, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/2', 'GET', '', NULL, '3', '2023-07-15 18:06:00');
INSERT INTO `log_handle` VALUES (1870, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/3', 'GET', '', NULL, '2', '2023-07-15 18:06:03');
INSERT INTO `log_handle` VALUES (1871, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '83', '2023-07-15 18:42:30');
INSERT INTO `log_handle` VALUES (1872, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '67', '2023-07-15 18:42:30');
INSERT INTO `log_handle` VALUES (1873, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '45', '2023-07-15 18:42:30');
INSERT INTO `log_handle` VALUES (1874, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '126', '2023-07-15 18:42:30');
INSERT INTO `log_handle` VALUES (1875, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/1', 'GET', '', NULL, '2', '2023-07-15 18:43:35');
INSERT INTO `log_handle` VALUES (1876, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '19', '2023-07-15 18:43:43');
INSERT INTO `log_handle` VALUES (1877, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '15', '2023-07-15 18:43:43');
INSERT INTO `log_handle` VALUES (1878, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '12', '2023-07-15 18:43:49');
INSERT INTO `log_handle` VALUES (1879, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-07-15 18:43:49');
INSERT INTO `log_handle` VALUES (1880, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/3', 'GET', '', NULL, '4', '2023-07-15 18:43:52');
INSERT INTO `log_handle` VALUES (1881, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-07-15 18:43:57');
INSERT INTO `log_handle` VALUES (1882, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '10', '2023-07-15 18:44:07');
INSERT INTO `log_handle` VALUES (1883, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', 'name=%5B%5D', NULL, '13', '2023-07-15 18:44:18');
INSERT INTO `log_handle` VALUES (1884, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '5', '2023-07-15 18:44:21');
INSERT INTO `log_handle` VALUES (1885, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '12', '2023-07-15 18:44:23');
INSERT INTO `log_handle` VALUES (1886, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-07-15 18:44:51');
INSERT INTO `log_handle` VALUES (1887, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-07-15 18:44:51');
INSERT INTO `log_handle` VALUES (1888, '根据角色ID获取菜单权限信息', 'Windows', '127.0.0.1', '/sys/role/info/1', 'GET', '', NULL, '13', '2023-07-15 18:44:53');
INSERT INTO `log_handle` VALUES (1889, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '4', '2023-07-15 18:45:16');
INSERT INTO `log_handle` VALUES (1890, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '6', '2023-07-15 18:45:17');
INSERT INTO `log_handle` VALUES (1891, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '21', '2023-07-15 18:45:18');
INSERT INTO `log_handle` VALUES (1892, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '31', '2023-07-15 18:45:18');
INSERT INTO `log_handle` VALUES (1893, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-07-15 18:45:19');
INSERT INTO `log_handle` VALUES (1894, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-07-15 18:45:19');
INSERT INTO `log_handle` VALUES (1895, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '13', '2023-07-15 18:45:21');
INSERT INTO `log_handle` VALUES (1896, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-07-15 18:45:47');
INSERT INTO `log_handle` VALUES (1897, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2023-07-15 18:45:47');
INSERT INTO `log_handle` VALUES (1898, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '5', '2023-07-15 18:45:48');
INSERT INTO `log_handle` VALUES (1899, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '17', '2023-07-15 18:45:48');
INSERT INTO `log_handle` VALUES (1900, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-07-15 18:45:49');
INSERT INTO `log_handle` VALUES (1901, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '7', '2023-07-15 18:45:50');
INSERT INTO `log_handle` VALUES (1902, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '19', '2023-07-15 18:45:50');
INSERT INTO `log_handle` VALUES (1903, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-07-15 18:45:56');
INSERT INTO `log_handle` VALUES (1904, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '8', '2023-07-15 18:46:03');
INSERT INTO `log_handle` VALUES (1905, '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', 'name=%5B%5D', NULL, '6', '2023-07-15 18:46:14');
INSERT INTO `log_handle` VALUES (1906, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '17', '2023-07-15 18:48:58');
INSERT INTO `log_handle` VALUES (1907, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-07-15 18:48:58');
INSERT INTO `log_handle` VALUES (1908, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '45', '2023-07-16 22:54:25');
INSERT INTO `log_handle` VALUES (1909, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '76', '2023-07-16 22:54:25');
INSERT INTO `log_handle` VALUES (1910, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '137', '2023-07-16 22:54:32');
INSERT INTO `log_handle` VALUES (1911, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '135', '2023-07-16 22:54:32');
INSERT INTO `log_handle` VALUES (1912, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-07-16 22:54:37');
INSERT INTO `log_handle` VALUES (1913, '更新用户信息', 'Windows', '127.0.0.1', '/sys/user/update', 'POST', '', NULL, '70', '2023-07-16 22:55:08');
INSERT INTO `log_handle` VALUES (1914, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-07-16 22:55:11');
INSERT INTO `log_handle` VALUES (1915, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '13', '2023-07-16 23:15:44');
INSERT INTO `log_handle` VALUES (1916, '更新用户信息', 'Windows', '127.0.0.1', '/sys/user/update', 'POST', '', '修改用户信息失败', '52', '2023-07-16 23:15:50');
INSERT INTO `log_handle` VALUES (1917, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '52', '2023-07-16 23:18:14');
INSERT INTO `log_handle` VALUES (1918, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-07-16 23:18:15');
INSERT INTO `log_handle` VALUES (1919, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '46', '2023-07-16 23:18:15');
INSERT INTO `log_handle` VALUES (1920, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '111', '2023-07-16 23:18:15');
INSERT INTO `log_handle` VALUES (1921, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '141', '2023-07-16 23:18:15');
INSERT INTO `log_handle` VALUES (1922, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '3', '2023-07-16 23:18:17');
INSERT INTO `log_handle` VALUES (1923, '更新用户信息', 'Windows', '127.0.0.1', '/sys/user/update', 'POST', '', '修改用户信息失败', '23', '2023-07-16 23:18:27');
INSERT INTO `log_handle` VALUES (1924, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-07-16 23:23:41');
INSERT INTO `log_handle` VALUES (1925, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-07-16 23:23:41');
INSERT INTO `log_handle` VALUES (1926, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '54', '2023-07-16 23:23:41');
INSERT INTO `log_handle` VALUES (1927, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '139', '2023-07-16 23:23:41');
INSERT INTO `log_handle` VALUES (1928, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '116', '2023-07-16 23:23:41');
INSERT INTO `log_handle` VALUES (1929, '根据ID获取用户信息', 'Windows', '127.0.0.1', '/sys/user/info/1', 'GET', '', NULL, '4', '2023-07-16 23:23:43');
INSERT INTO `log_handle` VALUES (1930, '更新用户信息', 'Windows', '127.0.0.1', '/sys/user/update', 'POST', '', NULL, '150', '2023-07-16 23:23:48');
INSERT INTO `log_handle` VALUES (1931, '获取全部用户信息', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '21', '2023-07-16 23:23:50');
INSERT INTO `log_handle` VALUES (1932, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '71', '2023-07-19 13:28:00');
INSERT INTO `log_handle` VALUES (1933, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '401', '2023-07-19 13:28:00');
INSERT INTO `log_handle` VALUES (1934, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '20', '2023-07-19 16:06:08');
INSERT INTO `log_handle` VALUES (1935, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '100', '2023-07-19 16:06:08');
INSERT INTO `log_handle` VALUES (1936, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-07-19 16:15:11');
INSERT INTO `log_handle` VALUES (1937, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '81', '2023-07-19 16:15:11');
INSERT INTO `log_handle` VALUES (1938, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '4', '2023-07-19 16:15:18');
INSERT INTO `log_handle` VALUES (1939, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '90', '2023-07-19 16:18:19');
INSERT INTO `log_handle` VALUES (1940, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '65', '2023-07-19 16:18:19');
INSERT INTO `log_handle` VALUES (1941, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '24', '2023-07-19 16:18:26');
INSERT INTO `log_handle` VALUES (1942, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '107', '2023-07-19 21:07:47');
INSERT INTO `log_handle` VALUES (1943, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '198', '2023-07-19 21:07:47');
INSERT INTO `log_handle` VALUES (1944, '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '41', '2023-07-19 21:07:51');
INSERT INTO `log_handle` VALUES (1945, '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '25', '2023-07-19 21:07:51');
INSERT INTO `log_handle` VALUES (1946, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '231', '2023-07-19 21:08:03');
INSERT INTO `log_handle` VALUES (1947, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '39', '2023-07-19 21:13:12');
INSERT INTO `log_handle` VALUES (1948, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '23', '2023-07-19 21:13:12');
INSERT INTO `log_handle` VALUES (1949, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '81', '2023-07-19 21:13:12');
INSERT INTO `log_handle` VALUES (1950, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '6', '2023-07-19 21:13:13');
INSERT INTO `log_handle` VALUES (1951, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '39', '2023-07-19 21:13:13');
INSERT INTO `log_handle` VALUES (1952, '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-07-19 21:13:13');
INSERT INTO `log_handle` VALUES (1953, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '12', '2023-07-19 21:13:15');
INSERT INTO `log_handle` VALUES (1954, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '8', '2023-07-19 21:13:15');
INSERT INTO `log_handle` VALUES (1955, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '9', '2023-07-19 21:13:16');
INSERT INTO `log_handle` VALUES (1956, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '21', '2023-07-19 21:13:16');
INSERT INTO `log_handle` VALUES (1957, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:13:24');
INSERT INTO `log_handle` VALUES (1958, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '182', '2023-07-19 21:13:24');
INSERT INTO `log_handle` VALUES (1959, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/1', 'GET', '', NULL, '4', '2023-07-19 21:13:27');
INSERT INTO `log_handle` VALUES (1960, '通过id获取单个信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_by_id/1', 'GET', '', NULL, '5', '2023-07-19 21:13:30');
INSERT INTO `log_handle` VALUES (1961, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '19', '2023-07-19 21:13:35');
INSERT INTO `log_handle` VALUES (1962, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-07-19 21:13:38');
INSERT INTO `log_handle` VALUES (1963, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '22', '2023-07-19 21:13:38');
INSERT INTO `log_handle` VALUES (1964, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-07-19 21:18:47');
INSERT INTO `log_handle` VALUES (1965, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '17', '2023-07-19 21:18:47');
INSERT INTO `log_handle` VALUES (1966, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '42', '2023-07-19 21:18:49');
INSERT INTO `log_handle` VALUES (1967, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-07-19 21:18:49');
INSERT INTO `log_handle` VALUES (1968, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-07-19 21:18:49');
INSERT INTO `log_handle` VALUES (1969, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '6', '2023-07-19 21:18:49');
INSERT INTO `log_handle` VALUES (1970, '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '34', '2023-07-19 21:18:50');
INSERT INTO `log_handle` VALUES (1971, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '26', '2023-07-19 21:18:50');
INSERT INTO `log_handle` VALUES (1972, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '7', '2023-07-19 21:18:50');
INSERT INTO `log_handle` VALUES (1973, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '14', '2023-07-19 21:18:50');
INSERT INTO `log_handle` VALUES (1974, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-07-19 21:18:51');
INSERT INTO `log_handle` VALUES (1975, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '6', '2023-07-19 21:18:51');
INSERT INTO `log_handle` VALUES (1976, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '9', '2023-07-19 21:18:51');
INSERT INTO `log_handle` VALUES (1977, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '49', '2023-07-19 21:18:51');
INSERT INTO `log_handle` VALUES (1978, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:18:52');
INSERT INTO `log_handle` VALUES (1979, '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '55', '2023-07-19 21:18:52');
INSERT INTO `log_handle` VALUES (1980, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '50', '2023-07-19 21:18:52');
INSERT INTO `log_handle` VALUES (1981, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '12', '2023-07-19 21:18:53');
INSERT INTO `log_handle` VALUES (1982, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:18:53');
INSERT INTO `log_handle` VALUES (1983, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '129', '2023-07-19 21:18:53');
INSERT INTO `log_handle` VALUES (1984, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:18:54');
INSERT INTO `log_handle` VALUES (1985, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '20', '2023-07-19 21:18:54');
INSERT INTO `log_handle` VALUES (1986, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2023-07-19 21:18:55');
INSERT INTO `log_handle` VALUES (1987, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '17', '2023-07-19 21:18:56');
INSERT INTO `log_handle` VALUES (1988, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:18:56');
INSERT INTO `log_handle` VALUES (1989, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2023-07-19 21:18:58');
INSERT INTO `log_handle` VALUES (1990, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '18', '2023-07-19 21:18:59');
INSERT INTO `log_handle` VALUES (1991, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:18:59');
INSERT INTO `log_handle` VALUES (1992, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '7', '2023-07-19 21:19:01');
INSERT INTO `log_handle` VALUES (1993, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '10', '2023-07-19 21:19:01');
INSERT INTO `log_handle` VALUES (1994, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '46', '2023-07-19 21:19:01');
INSERT INTO `log_handle` VALUES (1995, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-07-19 21:19:01');
INSERT INTO `log_handle` VALUES (1996, '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '20', '2023-07-19 21:19:02');
INSERT INTO `log_handle` VALUES (1997, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '13', '2023-07-19 21:19:02');
INSERT INTO `log_handle` VALUES (1998, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '14', '2023-07-19 21:19:02');
INSERT INTO `log_handle` VALUES (1999, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '12', '2023-07-19 21:19:02');
INSERT INTO `log_handle` VALUES (2000, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-07-19 21:19:03');
INSERT INTO `log_handle` VALUES (2001, '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '10', '2023-07-19 21:19:03');
INSERT INTO `log_handle` VALUES (2002, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '8', '2023-07-19 21:19:03');
INSERT INTO `log_handle` VALUES (2003, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '7', '2023-07-19 21:19:03');
INSERT INTO `log_handle` VALUES (2004, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '7', '2023-07-19 21:19:04');
INSERT INTO `log_handle` VALUES (2005, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '14', '2023-07-19 21:19:04');
INSERT INTO `log_handle` VALUES (2006, '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '29', '2023-07-19 21:19:04');
INSERT INTO `log_handle` VALUES (2007, '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '14', '2023-07-19 21:19:05');
INSERT INTO `log_handle` VALUES (2008, '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '13', '2023-07-19 21:19:05');
INSERT INTO `log_handle` VALUES (2009, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '7', '2023-07-19 21:19:05');
INSERT INTO `log_handle` VALUES (2010, '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '5', '2023-07-19 21:19:07');
INSERT INTO `log_handle` VALUES (2011, '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '66', '2023-07-19 21:19:07');
INSERT INTO `log_handle` VALUES (2012, '获取模块分页信息', 'Windows', '127.0.0.1', '/breze/portal/modeCard/find_mode_info', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '3', '2023-07-19 21:19:08');

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
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (38, 1, 0, '2023-03-15 13:23:01', NULL, NULL, NULL);
INSERT INTO `log_login` VALUES (39, 1, 0, '2023-03-17 15:54:38', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (40, 1, 0, '2023-03-17 16:40:41', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (41, 1, 0, '2023-03-27 13:54:55', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (42, 1, 0, '2023-03-28 17:07:03', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (43, 1, 0, '2023-03-28 17:07:18', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (44, 1, 0, '2023-03-28 17:07:33', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (45, 1, 0, '2023-03-28 17:13:19', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (46, 1, 0, '2023-03-28 19:41:27', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (47, 1, 0, '2023-03-28 19:42:45', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (48, 1, 0, '2023-03-28 20:03:53', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (49, 1, 0, '2023-03-29 15:50:13', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (50, 1, 0, '2023-03-29 16:09:59', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (51, 1, 0, '2023-03-29 16:10:08', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (52, 1, 0, '2023-03-29 16:12:17', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (53, 1, 0, '2023-03-30 14:44:11', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (54, 1, 0, '2023-03-31 11:12:22', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (55, 1, 0, '2023-03-31 11:25:27', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (56, 1, 0, '2023-03-31 11:26:23', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (57, 1, 0, '2023-03-31 15:46:50', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (58, 1, 0, '2023-03-31 15:47:37', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (59, 1, 0, '2023-03-31 15:47:48', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (60, 1, 0, '2023-04-04 10:25:02', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (61, 1, 0, '2023-04-11 14:11:59', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (62, 1, 0, '2023-04-11 14:14:07', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (63, 1, 0, '2023-04-11 14:14:24', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (64, 1, 0, '2023-04-20 10:18:20', '127.0.0.1', '服务器用户', NULL);
INSERT INTO `log_login` VALUES (65, 1, 0, '2023-04-20 17:22:50', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (66, 1, 0, '2023-04-20 22:32:18', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (67, 1, 0, '2023-04-20 22:33:59', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (68, 1, 0, '2023-04-20 22:35:36', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (69, 1, 0, '2023-04-20 22:36:28', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (70, 1, 0, '2023-04-20 22:39:09', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (71, 1, 0, '2023-04-20 22:39:09', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (72, 1, 0, '2023-04-20 22:39:26', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (73, 1, 0, '2023-04-20 22:39:27', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (74, 1, 0, '2023-04-20 22:39:41', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (75, 1, 0, '2023-04-20 22:39:41', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (76, 1, 0, '2023-04-20 22:40:26', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (77, 1, 0, '2023-04-20 22:40:26', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (78, 1, 0, '2023-04-21 09:33:58', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (79, 1, 0, '2023-04-21 09:36:05', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (80, 1, 0, '2023-04-21 16:26:28', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (81, 1, 0, '2023-04-21 16:26:55', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (82, 2, 0, '2023-04-21 16:27:37', '127.0.0.1', '服务器用户', 'Unknown');
INSERT INTO `log_login` VALUES (83, 1, 0, '2023-06-03 09:37:10', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (84, 1, 0, '2023-06-03 11:19:27', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (85, 1, 0, '2023-06-03 11:20:14', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (86, 1, 0, '2023-06-03 11:27:09', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (87, 1, 0, '2023-06-03 22:35:12', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (88, 1, 0, '2023-06-03 22:36:35', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (89, 1, 0, '2023-06-04 21:20:49', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (90, 1, 0, '2023-06-04 21:21:03', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (91, 1, 0, '2023-06-04 21:23:32', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (92, 1, 0, '2023-06-04 21:50:37', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (93, 1, 0, '2023-06-27 10:21:14', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (94, 1, 0, '2023-07-04 09:46:08', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (95, 1, 0, '2023-07-15 16:57:29', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (96, 1, 0, '2023-07-15 16:57:29', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (97, 1, 0, '2023-07-15 16:57:34', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (98, 1, 0, '2023-07-19 16:06:07', '127.0.0.1', '服务器用户', 'Windows 10 or Windows Server 2016');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置项中文名',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置项键',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置项值',
  `state` int(8) NULL DEFAULT 1 COMMENT '状态（开关）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主题配置', 'Theme', 'normal', 0, NULL, '2023-07-19 15:07:42', NULL, NULL, '配置系统主题颜色', 1, 0, 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典 id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `state` int(1) NULL DEFAULT NULL COMMENT '字典状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典备注',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '用户性别\r\n', 'sys_user_sex\r\n', 0, NULL, NULL, '2023-04-20 13:50:14', NULL, NULL, 0, 0, 0);
INSERT INTO `sys_dict` VALUES (2, '状态类型\r\n', 'sys_state', 0, NULL, NULL, '2023-04-20 13:50:40', NULL, NULL, 0, 0, 0);
INSERT INTO `sys_dict` VALUES (3, '菜单类型\r\n', 'sys_menu_type\r\n', 0, NULL, NULL, '2023-04-20 13:51:01', NULL, NULL, 0, 0, 0);
INSERT INTO `sys_dict` VALUES (4, '通知开关\r\n', 'sys_notice_disable\r\n', 0, NULL, NULL, '2023-04-20 13:51:13', NULL, NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典数据 id',
  `dict_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `dict_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据键',
  `dict_value` int(1) NULL DEFAULT NULL COMMENT '字典数据值',
  `state` int(1) NULL DEFAULT NULL COMMENT '字典数据状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据描述',
  `value_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应tag标签class名',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 'sys_user_sex\r\n', '男', 1, 1, '男性\r\n', 'primary', NULL, '2023-04-20 13:52:16', NULL, NULL, 1, 0, 0);
INSERT INTO `sys_dict_data` VALUES (2, 'sys_user_sex\r\n', '女', 2, 1, '女性\r\n', 'danger', NULL, '2023-04-20 13:52:27', NULL, NULL, 2, 0, 0);
INSERT INTO `sys_dict_data` VALUES (3, 'sys_user_sex\r\n', '未知', 0, 1, '未知\r\n', 'warning', NULL, '2023-04-20 13:52:33', NULL, NULL, 3, 0, 0);
INSERT INTO `sys_dict_data` VALUES (4, 'sys_state', '正常', 1, 1, '正常可用状态\r\n', 'success', NULL, '2023-04-20 13:52:47', NULL, NULL, 1, 0, 0);
INSERT INTO `sys_dict_data` VALUES (5, 'sys_state', '禁用', 0, 1, '不可用状态\r\n', 'info', NULL, '2023-04-20 13:52:53', NULL, NULL, 2, 0, 0);
INSERT INTO `sys_dict_data` VALUES (6, 'sys_menu_type\r\n', '目录', 0, 1, '目录\r\n', 'success', NULL, '2023-04-20 13:53:40', NULL, NULL, 1, 0, 0);
INSERT INTO `sys_dict_data` VALUES (7, 'sys_menu_type\r\n', '菜单', 1, 1, '菜单\r\n', 'primary', NULL, '2023-04-20 13:53:45', NULL, NULL, 2, 0, 0);
INSERT INTO `sys_dict_data` VALUES (8, 'sys_menu_type\r\n', '按钮', 2, 1, '按钮\r\n', 'info', NULL, '2023-04-20 13:53:50', NULL, NULL, 3, 0, 0);
INSERT INTO `sys_dict_data` VALUES (9, 'sys_notice_disable\r\n', '打开', 1, 1, '打开状态\r\n', 'success', NULL, '2023-04-20 13:54:08', NULL, NULL, 1, 0, 0);
INSERT INTO `sys_dict_data` VALUES (10, 'sys_notice_disable\r\n', '关闭', 0, 1, '关闭状态\r\n', 'info', NULL, '2023-04-20 13:54:17', NULL, NULL, 2, 0, 0);

-- ----------------------------
-- Table structure for sys_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_feedback`;
CREATE TABLE `sys_feedback`  (
  `id` bigint(20) NOT NULL COMMENT '主键 id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态（0：普通，1：紧急）',
  `backlog` int(11) NULL DEFAULT NULL COMMENT '待办情况（0：一般问题，1：重大问题）',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统问题反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_feedback
-- ----------------------------

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
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES (1, 0, '技术研发部', 0, '', NULL, '2022-03-11 18:06:51', NULL, '2022-08-17 14:14:48', 0, 0, 0);
INSERT INTO `sys_group` VALUES (2, 0, '媒体运营部', 0, '', NULL, '2022-03-11 18:06:55', NULL, '2022-08-17 14:14:51', 0, 0, 0);
INSERT INTO `sys_group` VALUES (3, 0, '测试运维部', 0, '', NULL, '2022-03-11 18:06:57', NULL, '2022-08-17 14:14:54', 0, 0, 0);
INSERT INTO `sys_group` VALUES (4, 0, '人事行政部', 0, '', NULL, '2022-03-11 18:06:59', NULL, '2022-08-17 14:14:56', 0, 0, 0);
INSERT INTO `sys_group` VALUES (5, 0, '机械开发部', 0, '', NULL, '2022-03-11 18:07:01', NULL, '2022-08-17 14:14:58', 0, 0, 0);
INSERT INTO `sys_group` VALUES (6, 0, '销售宣推部', 0, '', NULL, '2022-03-25 18:21:53', NULL, '2022-08-17 14:15:01', 0, 0, 0);
INSERT INTO `sys_group` VALUES (7, 3, '质量管理部', 0, '', NULL, '2022-05-20 23:20:58', NULL, '2022-08-17 14:15:03', 0, 0, 0);
INSERT INTO `sys_group` VALUES (8, 1, '售后技术部', 0, '', NULL, '2022-05-20 23:21:19', NULL, '2022-08-17 14:15:06', 0, 0, 0);
INSERT INTO `sys_group` VALUES (9, 2, '财务市场部', 0, '', NULL, '2022-05-20 23:24:22', NULL, '2022-08-17 14:15:08', 0, 0, 0);

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
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '技术部经理', 0, '隶属于技术部团队', NULL, '2022-09-25 20:41:59', NULL, '2022-09-25 20:42:10', NULL, 0, 0);
INSERT INTO `sys_job` VALUES (2, '技术部组长', 0, '隶属于技术部团队', NULL, '2022-09-25 20:42:02', NULL, '2022-09-25 20:42:12', NULL, 0, 0);
INSERT INTO `sys_job` VALUES (3, '技术部组员', 0, '隶属于技术部团队', NULL, '2022-09-25 20:42:04', NULL, '2022-09-25 20:42:14', NULL, 0, 0);
INSERT INTO `sys_job` VALUES (4, '技术部实习生', 0, '隶属于技术部团队', NULL, '2022-09-25 20:42:07', NULL, '2022-09-25 20:42:16', NULL, 0, 0);
INSERT INTO `sys_job` VALUES (5, '技术部工程师', 0, '隶属技术部管理', NULL, '2023-04-13 20:42:26', NULL, '2023-04-13 20:42:26', NULL, 0, 0);

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
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '授权编码（多个用逗号分隔，如：user:list,user:create）',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单组件位置（匹配前端动态生成）',
  `type` int(5) NOT NULL COMMENT '类型（0：目录   1：菜单   2：按钮）',
  `state` int(5) NOT NULL COMMENT '菜单状态',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'Sys', 'el-icon-s-operation', 1, 'sys:manage', '', '', 0, 0, NULL, '2021-01-15 18:58:18', NULL, '2022-03-19 18:04:58', 0, 0);
INSERT INTO `sys_menu` VALUES (2, 1, '角色管理', 'Sys.Role', 'el-icon-postcard', 1, 'sys:role:select', '/sys/role', 'sys/Role', 1, 0, NULL, '2021-01-15 19:03:45', NULL, '2022-04-15 18:26:32', 0, 0);
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', 'Sys.User', 'el-icon-s-custom', 2, 'sys:user:select', '/sys/user', 'sys/User', 1, 0, NULL, '2021-01-15 19:03:45', NULL, '2022-04-15 18:26:38', 0, 0);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'Sys.Menu', 'el-icon-menu', 3, 'sys:menu:select', '/sys/menu', 'sys/Menu', 1, 0, NULL, '2021-01-15 19:03:45', NULL, '2022-04-15 18:26:43', 0, 0);
INSERT INTO `sys_menu` VALUES (5, 0, '系统工具', 'Tool', 'el-icon-setting', 2, 'sys:tool', '', '', 0, 0, NULL, '2021-01-15 19:06:11', NULL, '2022-08-05 15:56:11', 0, 0);
INSERT INTO `sys_menu` VALUES (6, 0, '门户管理', 'Portal', 'el-icon-s-platform', 3, 'portal:manage', '', '', 0, 0, NULL, '2022-10-09 20:52:50', NULL, '2022-10-09 20:52:50', 0, 0);
INSERT INTO `sys_menu` VALUES (7, 2, '添加角色', 'Sys.Role.Add', '', 1, 'sys:role:insert', '', '', 2, 0, NULL, '2021-01-15 23:02:25', NULL, '2022-03-09 22:20:40', 0, 0);
INSERT INTO `sys_menu` VALUES (9, 3, '新增用户', 'Sys.User.Add', NULL, 1, 'sys:user:insert', '', NULL, 2, 0, NULL, '2021-01-17 21:48:32', NULL, '2022-03-24 17:36:12', 0, 0);
INSERT INTO `sys_menu` VALUES (10, 3, '编辑用户', 'Sys.User.Edit', NULL, 2, 'sys:user:update', NULL, NULL, 2, 0, NULL, '2021-01-17 21:49:03', NULL, '2022-03-24 17:36:41', 0, 0);
INSERT INTO `sys_menu` VALUES (11, 3, '删除用户', 'Sys.User.Delete', NULL, 3, 'sys:user:delete', NULL, NULL, 2, 0, NULL, '2021-01-17 21:49:21', NULL, '2022-08-17 14:25:27', 0, 0);
INSERT INTO `sys_menu` VALUES (12, 3, '分配角色', 'Sys.User.Role', NULL, 4, 'sys:user:role', NULL, NULL, 2, 0, NULL, '2021-01-17 21:49:58', NULL, '2022-08-17 14:25:30', 0, 0);
INSERT INTO `sys_menu` VALUES (13, 3, '重置密码', 'Sys.User.Reset', NULL, 5, 'sys:user:repass', NULL, NULL, 2, 0, NULL, '2021-01-17 21:50:36', NULL, '2022-08-17 14:25:32', 0, 0);
INSERT INTO `sys_menu` VALUES (14, 2, '修改角色', 'Sys.Role.Edit', NULL, 2, 'sys:role:update', NULL, NULL, 2, 0, NULL, '2021-01-17 21:51:14', NULL, '2022-08-17 14:25:35', 0, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '删除角色', 'Sys.Role.Delete', NULL, 3, 'sys:role:delete', NULL, NULL, 2, 0, NULL, '2021-01-17 21:51:39', NULL, '2022-08-17 14:25:37', 0, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '分配权限', 'Sys.Role.Perm', NULL, 5, 'sys:role:perm', NULL, NULL, 2, 0, NULL, '2021-01-17 21:52:02', NULL, '2022-08-17 14:25:40', 0, 0);
INSERT INTO `sys_menu` VALUES (17, 4, '添加菜单', 'Sys.Menu.Add', NULL, 1, 'sys:menu:insert', NULL, NULL, 2, 0, NULL, '2021-01-17 21:53:53', NULL, '2021-01-17 21:55:28', 0, 0);
INSERT INTO `sys_menu` VALUES (18, 4, '修改菜单', 'Sys.Menu.Edit', NULL, 2, 'sys:menu:update', NULL, NULL, 2, 0, NULL, '2021-01-17 21:56:12', NULL, '2022-08-17 14:25:43', 0, 0);
INSERT INTO `sys_menu` VALUES (19, 4, '删除菜单', 'Sys.Menu.Delete', NULL, 3, 'sys:menu:delete', NULL, NULL, 2, 0, NULL, '2021-01-17 21:56:36', NULL, '2022-08-17 14:25:45', 0, 0);
INSERT INTO `sys_menu` VALUES (23, 0, '关于项目', 'About', 'el-icon-info', 11, 'sys:about', NULL, NULL, 0, 0, NULL, '2022-03-12 00:46:34', NULL, '2022-07-06 16:52:06', 0, 0);
INSERT INTO `sys_menu` VALUES (24, 23, '项目介绍', 'About.ProjectInfo', 'el-icon-s-claim', 1, 'sys:about:project', '/about/about', 'about/About', 1, 0, NULL, '2022-03-12 16:08:37', NULL, '2022-03-24 17:12:40', 0, 0);
INSERT INTO `sys_menu` VALUES (25, 23, '关于我们', 'About.Aboutme', 'el-icon-magic-stick', 2, 'sys:about:me', '/about/our', 'about/Aboutme', 1, 0, NULL, '2022-03-13 10:13:55', NULL, '2022-04-21 22:57:54', 0, 0);
INSERT INTO `sys_menu` VALUES (47, 6, '首页管理', 'Portal.IndexManage', 'el-icon-c-scale-to-original', 1, 'portal:manage:index', '/portal/indexmanage', 'portal/IndexManage', 1, 0, NULL, '2022-03-27 12:31:36', NULL, '2022-08-05 15:56:00', 0, 0);
INSERT INTO `sys_menu` VALUES (60, 0, '日志管理', 'Log', 'el-icon-tickets', 8, 'log:manage', NULL, NULL, 0, 0, NULL, '2022-06-23 16:21:16', NULL, '2022-06-23 16:21:25', 0, 0);
INSERT INTO `sys_menu` VALUES (61, 60, '登录日志', 'Log.LoginLog', 'el-icon-notebook-2', 1, 'log:manage:login', '/log/loginlog', 'log/LoginLog', 1, 0, NULL, '2022-06-23 16:24:42', NULL, '2022-08-17 14:25:50', 0, 0);
INSERT INTO `sys_menu` VALUES (62, 60, '操作日志', 'Log.HandleLog', 'el-icon-edit-outline', 2, 'log:manage:handle', '/log/handlelog', 'log/HandleLog', 1, 0, NULL, '2022-06-23 16:26:01', NULL, '2022-06-23 16:29:42', 0, 0);
INSERT INTO `sys_menu` VALUES (63, 0, '项目开发', 'Dev', 'el-icon-sunny', 9, 'project:develop', NULL, NULL, 0, 0, NULL, '2022-06-29 13:47:59', NULL, '2022-08-17 14:25:53', 0, 0);
INSERT INTO `sys_menu` VALUES (64, 63, '代码生成', 'Dev.CodeGener', 'el-icon-s-opportunity', 1, 'project:develop:codegener', '/develop/codegener', 'develop/CodeGener', 1, 0, NULL, '2022-06-29 14:10:35', NULL, '2022-06-29 14:13:00', 0, 0);
INSERT INTO `sys_menu` VALUES (65, 0, '平台监控', 'Monitor', 'el-icon-monitor', 10, 'sys:monitor', NULL, NULL, 0, 0, NULL, '2022-07-06 16:51:58', NULL, '2022-08-17 14:25:57', 0, 0);
INSERT INTO `sys_menu` VALUES (66, 65, '服务器监控', 'Monitor.Server', 'el-icon-coin', 1, 'sys:monitor:server', '/monitor/servermonitor', 'monitor/ServerMonitor', 1, 0, NULL, '2022-07-06 16:54:08', NULL, '2022-08-17 14:25:59', 0, 0);
INSERT INTO `sys_menu` VALUES (67, 1, '部门管理', 'Sys.Group', 'el-icon-office-building', 4, 'sys:department:select', '/sys/group', 'sys/Group', 1, 0, NULL, '2022-07-13 20:49:51', NULL, '2022-08-05 16:01:24', 0, 0);
INSERT INTO `sys_menu` VALUES (68, 63, '接口文档', 'Dev.Swagger', 'el-icon-document', 2, 'project:develop:document', '/develop/swagger', 'develop/Swagger', 1, 0, NULL, '2022-08-05 13:50:38', NULL, '2022-08-05 13:50:49', 0, 0);
INSERT INTO `sys_menu` VALUES (69, 65, '数据库监控', 'Monitor.Druid', 'el-icon-coin', 2, 'sys:monitor:druid', '/monitor/druid', 'monitor/Druid', 1, 0, NULL, '2022-08-05 15:44:29', NULL, '2022-08-17 14:26:02', 0, 0);
INSERT INTO `sys_menu` VALUES (70, 5, '数据字典', 'Tool.Dict', 'el-icon-collection', 2, 'sys:tool:dict', '/tool/dict', 'tool/Dict', 1, 0, NULL, '2022-08-05 15:54:38', NULL, '2022-08-17 14:26:05', 0, 0);
INSERT INTO `sys_menu` VALUES (71, 1, '岗位管理', 'Sys.Job', 'el-icon-medal', 5, 'sys:job:select', '/sys/job', 'sys/Job', 1, 0, NULL, '2022-09-25 21:09:55', NULL, '2022-09-25 21:09:55', 0, 0);
INSERT INTO `sys_menu` VALUES (72, 5, '流程设计', 'Dev.WorkFlow', 'el-icon-rank', 3, 'sys:tool:workflow', '/bpmn/bpmn', 'bpmn/Bpmn', 1, 0, NULL, '2023-04-20 10:24:21', NULL, '2023-06-04 16:41:41', 0, 0);
INSERT INTO `sys_menu` VALUES (73, 63, '响应枚举', '', 'el-icon-orange', 4, 'dev:enum', NULL, NULL, 1, 0, NULL, '2023-07-15 17:14:51', NULL, '2023-07-15 17:14:51', 0, 0);

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
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'Super_Admin', 0, '系统默认最高权限拥有者，除管理人员外任何人不可操作', NULL, '2022-03-04 12:54:18', NULL, '2022-03-27 14:43:57', NULL, 0, 0);
INSERT INTO `sys_role` VALUES (2, '普通用户', 'User', 0, '只能进行基础功能操作', NULL, '2022-03-04 12:55:00', NULL, '2022-07-13 23:10:03', NULL, 0, 0);
INSERT INTO `sys_role` VALUES (3, '微信用户', 'WeChat_User', 0, '通过微信小程序登录的用户', NULL, '2022-03-09 22:12:56', NULL, '2022-03-09 22:17:00', NULL, 0, 0);
INSERT INTO `sys_role` VALUES (4, '开发人员', 'Developer', 0, '相当于超级管理员，放行系统管理之外的其它权限', NULL, '2022-03-19 20:16:21', NULL, '2022-08-17 14:19:34', NULL, 0, 0);
INSERT INTO `sys_role` VALUES (5, '普通管理员', 'Admin', 0, '赋予除系统管理核心权限之外的其它功能', NULL, '2022-03-24 21:59:04', NULL, '2022-08-17 14:19:37', NULL, 0, 0);
INSERT INTO `sys_role` VALUES (7, '访客用户', 'guest', 0, '访客用户，只展示首页与关于项目菜单', NULL, '2022-09-25 15:40:55', NULL, '2022-09-25 15:40:55', NULL, 0, 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 7, 23);
INSERT INTO `sys_role_menu` VALUES (3, 7, 24);
INSERT INTO `sys_role_menu` VALUES (4, 7, 25);
INSERT INTO `sys_role_menu` VALUES (181, 5, 4);
INSERT INTO `sys_role_menu` VALUES (182, 5, 17);
INSERT INTO `sys_role_menu` VALUES (183, 5, 18);
INSERT INTO `sys_role_menu` VALUES (184, 5, 19);
INSERT INTO `sys_role_menu` VALUES (185, 5, 67);
INSERT INTO `sys_role_menu` VALUES (186, 5, 23);
INSERT INTO `sys_role_menu` VALUES (187, 5, 24);
INSERT INTO `sys_role_menu` VALUES (188, 5, 25);
INSERT INTO `sys_role_menu` VALUES (217, 1, 1);
INSERT INTO `sys_role_menu` VALUES (218, 1, 2);
INSERT INTO `sys_role_menu` VALUES (219, 1, 7);
INSERT INTO `sys_role_menu` VALUES (220, 1, 14);
INSERT INTO `sys_role_menu` VALUES (221, 1, 15);
INSERT INTO `sys_role_menu` VALUES (222, 1, 16);
INSERT INTO `sys_role_menu` VALUES (223, 1, 3);
INSERT INTO `sys_role_menu` VALUES (224, 1, 9);
INSERT INTO `sys_role_menu` VALUES (225, 1, 10);
INSERT INTO `sys_role_menu` VALUES (226, 1, 11);
INSERT INTO `sys_role_menu` VALUES (227, 1, 12);
INSERT INTO `sys_role_menu` VALUES (228, 1, 13);
INSERT INTO `sys_role_menu` VALUES (229, 1, 4);
INSERT INTO `sys_role_menu` VALUES (230, 1, 17);
INSERT INTO `sys_role_menu` VALUES (231, 1, 18);
INSERT INTO `sys_role_menu` VALUES (232, 1, 19);
INSERT INTO `sys_role_menu` VALUES (233, 1, 67);
INSERT INTO `sys_role_menu` VALUES (234, 1, 71);
INSERT INTO `sys_role_menu` VALUES (235, 1, 5);
INSERT INTO `sys_role_menu` VALUES (236, 1, 70);
INSERT INTO `sys_role_menu` VALUES (237, 1, 6);
INSERT INTO `sys_role_menu` VALUES (238, 1, 47);
INSERT INTO `sys_role_menu` VALUES (239, 1, 60);
INSERT INTO `sys_role_menu` VALUES (240, 1, 61);
INSERT INTO `sys_role_menu` VALUES (241, 1, 62);
INSERT INTO `sys_role_menu` VALUES (242, 1, 63);
INSERT INTO `sys_role_menu` VALUES (243, 1, 64);
INSERT INTO `sys_role_menu` VALUES (244, 1, 68);
INSERT INTO `sys_role_menu` VALUES (245, 1, 72);
INSERT INTO `sys_role_menu` VALUES (246, 1, 65);
INSERT INTO `sys_role_menu` VALUES (247, 1, 66);
INSERT INTO `sys_role_menu` VALUES (248, 1, 69);
INSERT INTO `sys_role_menu` VALUES (249, 1, 23);
INSERT INTO `sys_role_menu` VALUES (250, 1, 24);
INSERT INTO `sys_role_menu` VALUES (251, 1, 25);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一登录用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `true_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` int(1) NULL DEFAULT 0 COMMENT '性别',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户电话',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `state` int(5) NOT NULL COMMENT '用户状态',
  `login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `login_warn` int(1) NULL DEFAULT 0 COMMENT '登录邮件提醒',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序号',
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `version` int(255) NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'breze', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '系统管理员', 0, 'http://qiniuyun.tylt.xyz/be9ec89bd4324452940180c0f749a95e.jpg', 'tylt6688@gmail.com', '16666666667', '山东济南', 1, '2023-07-19 16:06:07', 0, NULL, '2022-02-28 22:42:39', NULL, '2023-07-16 23:23:48', NULL, 0, 1);
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', 0, '', 'admin@admin.om', '15766174399', '山东潍坊', 1, '2023-04-21 16:27:37', 0, NULL, '2022-03-12 01:06:10', NULL, '2022-05-07 16:45:35', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 0, 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 1, '2022-06-04 15:48:48', 0, NULL, '2022-03-12 01:06:13', NULL, '2022-03-29 10:32:23', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 0, 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 1, '2022-08-17 13:15:06', 0, NULL, '2022-03-19 20:17:18', NULL, '2022-03-29 16:02:25', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 0, 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999999', '山东济宁', 1, '2022-06-24 10:03:23', 0, NULL, '2022-04-19 13:37:58', NULL, '2022-06-12 15:05:01', NULL, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (14, 1, 1);
INSERT INTO `sys_user_role` VALUES (15, 2, 5);
INSERT INTO `sys_user_role` VALUES (16, 3, 2);
INSERT INTO `sys_user_role` VALUES (20, 4, 7);
INSERT INTO `sys_user_role` VALUES (21, 5, 7);

SET FOREIGN_KEY_CHECKS = 1;
