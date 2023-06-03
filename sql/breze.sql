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

 Date: 03/06/2023 11:35:17
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
) ENGINE = InnoDB AUTO_INCREMENT = 1325 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

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
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '用户性别\r\n', 'sys_user_sex\r\n', 0, NULL, '2023-04-20 13:50:14', NULL);
INSERT INTO `sys_dict` VALUES (2, '状态类型\r\n', 'sys_state', 0, NULL, '2023-04-20 13:50:40', NULL);
INSERT INTO `sys_dict` VALUES (3, '菜单类型\r\n', 'sys_menu_type\r\n', 0, NULL, '2023-04-20 13:51:01', NULL);
INSERT INTO `sys_dict` VALUES (4, '通知开关\r\n', 'sys_notice_disable\r\n', 0, NULL, '2023-04-20 13:51:13', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典数据 id',
  `dict_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据键',
  `value` int(1) NULL DEFAULT NULL COMMENT '字典数据值',
  `state` int(1) NULL DEFAULT NULL COMMENT '字典数据状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据描述',
  `value_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应tag标签class名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 'sys_user_sex\r\n', '男', 1, 0, '男性\r\n', 'primary', '2023-04-20 13:52:16', NULL, 1);
INSERT INTO `sys_dict_data` VALUES (2, 'sys_user_sex\r\n', '女', 2, 0, '女性\r\n', 'danger', '2023-04-20 13:52:27', NULL, 2);
INSERT INTO `sys_dict_data` VALUES (3, 'sys_user_sex\r\n', '未知', 0, 0, '未知\r\n', 'warning', '2023-04-20 13:52:33', NULL, 3);
INSERT INTO `sys_dict_data` VALUES (4, 'sys_state', '正常', 0, 0, '正常可用状态\r\n', 'success', '2023-04-20 13:52:47', NULL, 1);
INSERT INTO `sys_dict_data` VALUES (5, 'sys_state', '禁用', 1, 0, '不可用状态\r\n', 'info', '2023-04-20 13:52:53', NULL, 2);
INSERT INTO `sys_dict_data` VALUES (6, 'sys_menu_type\r\n', '目录', 0, 0, '目录\r\n', 'success', '2023-04-20 13:53:40', NULL, 1);
INSERT INTO `sys_dict_data` VALUES (7, 'sys_menu_type\r\n', '菜单', 1, 0, '菜单\r\n', 'primary', '2023-04-20 13:53:45', NULL, 2);
INSERT INTO `sys_dict_data` VALUES (8, 'sys_menu_type\r\n', '按钮', 2, 0, '按钮\r\n', 'info', '2023-04-20 13:53:50', NULL, 3);
INSERT INTO `sys_dict_data` VALUES (9, 'sys_notice_disable\r\n', '打开', 0, 0, '打开状态\r\n', 'success', '2023-04-20 13:54:08', NULL, 1);
INSERT INTO `sys_dict_data` VALUES (10, 'sys_notice_disable\r\n', '关闭', 1, 0, '关闭状态\r\n', 'info', '2023-04-20 13:54:17', NULL, 2);

-- ----------------------------
-- Table structure for sys_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_feedback`;
CREATE TABLE `sys_feedback`  (
  `id` bigint(20) NOT NULL COMMENT '主键 id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态（0：普通，1：紧急）',
  `backlog` int(11) NULL DEFAULT NULL COMMENT '待办情况（0：一般问题，1：重大问题）',
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '技术部经理', 0, '隶属于技术部团队', '2022-09-25 20:41:59', '2022-09-25 20:42:10');
INSERT INTO `sys_job` VALUES (2, '技术部组长', 0, '隶属于技术部团队', '2022-09-25 20:42:02', '2022-09-25 20:42:12');
INSERT INTO `sys_job` VALUES (3, '技术部组员', 0, '隶属于技术部团队', '2022-09-25 20:42:04', '2022-09-25 20:42:14');
INSERT INTO `sys_job` VALUES (4, '技术部实习生', 0, '隶属于技术部团队', '2022-09-25 20:42:07', '2022-09-25 20:42:16');
INSERT INTO `sys_job` VALUES (5, '技术部工程师', 0, '隶属技术部管理', '2023-04-13 20:42:26', '2023-04-13 20:42:26');

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
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_menu` VALUES (72, 63, '流程设计', 'Dev.WorkFlow', 'el-icon-rank', 3, 'dev:workflow', '/bpmn/bpmn', 'bpmn/Bpmn', 1, 0, '2023-04-20 10:24:21', '2023-04-20 10:27:24');

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
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 7, 23);
INSERT INTO `sys_role_menu` VALUES (3, 7, 24);
INSERT INTO `sys_role_menu` VALUES (4, 7, 25);
INSERT INTO `sys_role_menu` VALUES (138, 1, 1);
INSERT INTO `sys_role_menu` VALUES (139, 1, 2);
INSERT INTO `sys_role_menu` VALUES (140, 1, 7);
INSERT INTO `sys_role_menu` VALUES (141, 1, 14);
INSERT INTO `sys_role_menu` VALUES (142, 1, 15);
INSERT INTO `sys_role_menu` VALUES (143, 1, 16);
INSERT INTO `sys_role_menu` VALUES (144, 1, 3);
INSERT INTO `sys_role_menu` VALUES (145, 1, 9);
INSERT INTO `sys_role_menu` VALUES (146, 1, 10);
INSERT INTO `sys_role_menu` VALUES (147, 1, 11);
INSERT INTO `sys_role_menu` VALUES (148, 1, 12);
INSERT INTO `sys_role_menu` VALUES (149, 1, 13);
INSERT INTO `sys_role_menu` VALUES (150, 1, 4);
INSERT INTO `sys_role_menu` VALUES (151, 1, 17);
INSERT INTO `sys_role_menu` VALUES (152, 1, 18);
INSERT INTO `sys_role_menu` VALUES (153, 1, 19);
INSERT INTO `sys_role_menu` VALUES (154, 1, 67);
INSERT INTO `sys_role_menu` VALUES (155, 1, 71);
INSERT INTO `sys_role_menu` VALUES (156, 1, 5);
INSERT INTO `sys_role_menu` VALUES (157, 1, 70);
INSERT INTO `sys_role_menu` VALUES (158, 1, 6);
INSERT INTO `sys_role_menu` VALUES (159, 1, 47);
INSERT INTO `sys_role_menu` VALUES (160, 1, 60);
INSERT INTO `sys_role_menu` VALUES (161, 1, 61);
INSERT INTO `sys_role_menu` VALUES (162, 1, 62);
INSERT INTO `sys_role_menu` VALUES (163, 1, 63);
INSERT INTO `sys_role_menu` VALUES (164, 1, 64);
INSERT INTO `sys_role_menu` VALUES (165, 1, 68);
INSERT INTO `sys_role_menu` VALUES (166, 1, 72);
INSERT INTO `sys_role_menu` VALUES (167, 1, 65);
INSERT INTO `sys_role_menu` VALUES (168, 1, 66);
INSERT INTO `sys_role_menu` VALUES (169, 1, 69);
INSERT INTO `sys_role_menu` VALUES (170, 1, 23);
INSERT INTO `sys_role_menu` VALUES (171, 1, 24);
INSERT INTO `sys_role_menu` VALUES (172, 1, 25);

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
  `login_warn` int(11) NULL DEFAULT 0 COMMENT '登录邮件提醒',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'breze', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '系统管理员', 'http://qiniuyun.tylt.xyz/45691c9294d9452b91e8f923f040b377.jpg', 'tylt6688@gmail.com', '17666666666', '山东-济南', 1, '2023-06-03 11:27:09', 0, '2022-02-28 22:42:39', '2022-04-03 11:49:47');
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', '', 'admin@admin.om', '15766174399', '山东潍坊', 1, '2023-04-21 16:27:37', 0, '2022-03-12 01:06:10', '2022-05-07 16:45:35');
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 1, '2022-06-04 15:48:48', 0, '2022-03-12 01:06:13', '2022-03-29 10:32:23');
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 1, '2022-08-17 13:15:06', 0, '2022-03-19 20:17:18', '2022-03-29 16:02:25');
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999999', '山东济宁', 1, '2022-06-24 10:03:23', 0, '2022-04-19 13:37:58', '2022-06-12 15:05:01');

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

SET FOREIGN_KEY_CHECKS = 1;
