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

 Date: 09/10/2022 20:55:46
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
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1482 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (1363, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '36', '2022-09-30 21:42:50');
INSERT INTO `log_handle` VALUES (1364, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '34', '2022-09-30 21:42:50');
INSERT INTO `log_handle` VALUES (1365, '获取当前用户信息', 'Server', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '37', '2022-09-30 21:42:50');
INSERT INTO `log_handle` VALUES (1366, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '18', '2022-09-30 21:43:28');
INSERT INTO `log_handle` VALUES (1367, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '29', '2022-09-30 21:43:28');
INSERT INTO `log_handle` VALUES (1368, '获取当前用户信息', 'Server', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '15', '2022-09-30 21:43:29');
INSERT INTO `log_handle` VALUES (1369, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '26', '2022-09-30 21:44:06');
INSERT INTO `log_handle` VALUES (1370, '获取侧边菜单导航', 'Server', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '125', '2022-09-30 21:44:06');
INSERT INTO `log_handle` VALUES (1371, '获取当前用户信息', 'Server', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '37', '2022-09-30 21:44:07');
INSERT INTO `log_handle` VALUES (1372, '获取侧边菜单导航', 'localhost', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '96', '2022-09-30 21:46:28');
INSERT INTO `log_handle` VALUES (1373, '获取侧边菜单导航', 'localhost', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '57', '2022-09-30 21:46:28');
INSERT INTO `log_handle` VALUES (1374, '获取当前用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '78', '2022-09-30 21:46:29');
INSERT INTO `log_handle` VALUES (1375, '获取当前用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '48', '2022-09-30 22:01:27');
INSERT INTO `log_handle` VALUES (1376, '查询菜单管理中的所有菜单信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '24', '2022-09-30 22:01:48');
INSERT INTO `log_handle` VALUES (1377, '获取角色列表', 'localhost', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '17', '2022-09-30 22:01:53');
INSERT INTO `log_handle` VALUES (1378, '根据用户名获取用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '34', '2022-09-30 22:01:53');
INSERT INTO `log_handle` VALUES (1379, '根据ID获取用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '15', '2022-09-30 22:01:54');
INSERT INTO `log_handle` VALUES (1380, '根据ID获取用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/info/2', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '16', '2022-09-30 22:02:04');
INSERT INTO `log_handle` VALUES (1381, '根据ID获取用户信息', 'localhost', '0:0:0:0:0:0:0:1', '/sys/user/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, '13', '2022-09-30 22:02:07');
INSERT INTO `log_handle` VALUES (1382, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '47', '2022-10-04 22:54:52');
INSERT INTO `log_handle` VALUES (1383, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '368', '2022-10-04 22:54:52');
INSERT INTO `log_handle` VALUES (1384, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '110', '2022-10-04 22:54:56');
INSERT INTO `log_handle` VALUES (1385, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '38', '2022-10-04 22:54:56');
INSERT INTO `log_handle` VALUES (1386, '新增用户', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '114869', '2022-10-04 22:55:11');
INSERT INTO `log_handle` VALUES (1387, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '44', '2022-10-04 22:57:46');
INSERT INTO `log_handle` VALUES (1388, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '37', '2022-10-04 22:57:46');
INSERT INTO `log_handle` VALUES (1389, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '64', '2022-10-04 22:57:46');
INSERT INTO `log_handle` VALUES (1390, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '88', '2022-10-04 22:57:46');
INSERT INTO `log_handle` VALUES (1391, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '64', '2022-10-04 22:57:46');
INSERT INTO `log_handle` VALUES (1392, '删除用户', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/delete', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '160', '2022-10-04 22:57:53');
INSERT INTO `log_handle` VALUES (1393, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '34', '2022-10-04 22:58:09');
INSERT INTO `log_handle` VALUES (1394, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '20', '2022-10-04 22:58:09');
INSERT INTO `log_handle` VALUES (1395, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '12', '2022-10-04 22:58:09');
INSERT INTO `log_handle` VALUES (1396, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '43', '2022-10-04 22:58:09');
INSERT INTO `log_handle` VALUES (1397, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '25', '2022-10-04 22:58:09');
INSERT INTO `log_handle` VALUES (1398, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '38', '2022-10-04 23:07:58');
INSERT INTO `log_handle` VALUES (1399, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '21', '2022-10-04 23:07:58');
INSERT INTO `log_handle` VALUES (1400, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '13', '2022-10-04 23:07:58');
INSERT INTO `log_handle` VALUES (1401, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '59', '2022-10-04 23:07:58');
INSERT INTO `log_handle` VALUES (1402, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '13', '2022-10-04 23:08:10');
INSERT INTO `log_handle` VALUES (1403, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '8', '2022-10-04 23:08:10');
INSERT INTO `log_handle` VALUES (1404, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '20', '2022-10-04 23:09:12');
INSERT INTO `log_handle` VALUES (1405, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '14', '2022-10-04 23:09:13');
INSERT INTO `log_handle` VALUES (1406, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '11', '2022-10-04 23:09:13');
INSERT INTO `log_handle` VALUES (1407, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '10', '2022-10-04 23:09:13');
INSERT INTO `log_handle` VALUES (1408, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '16', '2022-10-04 23:09:13');
INSERT INTO `log_handle` VALUES (1409, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-04 23:09:18');
INSERT INTO `log_handle` VALUES (1410, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '21', '2022-10-04 23:09:18');
INSERT INTO `log_handle` VALUES (1411, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-04 23:09:30');
INSERT INTO `log_handle` VALUES (1412, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '19', '2022-10-04 23:11:14');
INSERT INTO `log_handle` VALUES (1413, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '17', '2022-10-04 23:11:14');
INSERT INTO `log_handle` VALUES (1414, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '8', '2022-10-04 23:11:14');
INSERT INTO `log_handle` VALUES (1415, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '24', '2022-10-04 23:11:14');
INSERT INTO `log_handle` VALUES (1416, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '44', '2022-10-05 08:48:30');
INSERT INTO `log_handle` VALUES (1417, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '52', '2022-10-05 08:48:30');
INSERT INTO `log_handle` VALUES (1418, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '79', '2022-10-05 09:19:26');
INSERT INTO `log_handle` VALUES (1419, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '58', '2022-10-05 09:19:26');
INSERT INTO `log_handle` VALUES (1420, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '125', '2022-10-05 09:19:30');
INSERT INTO `log_handle` VALUES (1421, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '196', '2022-10-05 09:19:30');
INSERT INTO `log_handle` VALUES (1422, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '10', '2022-10-05 09:19:32');
INSERT INTO `log_handle` VALUES (1423, '根据用户名获取用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'username=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '26', '2022-10-05 09:19:34');
INSERT INTO `log_handle` VALUES (1424, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '10', '2022-10-05 09:19:36');
INSERT INTO `log_handle` VALUES (1425, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '62', '2022-10-08 22:18:51');
INSERT INTO `log_handle` VALUES (1426, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '133', '2022-10-08 22:18:51');
INSERT INTO `log_handle` VALUES (1427, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '49', '2022-10-08 22:30:29');
INSERT INTO `log_handle` VALUES (1428, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '188', '2022-10-08 22:30:29');
INSERT INTO `log_handle` VALUES (1429, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '38', '2022-10-08 22:30:50');
INSERT INTO `log_handle` VALUES (1430, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '30', '2022-10-08 22:30:50');
INSERT INTO `log_handle` VALUES (1431, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '10', '2022-10-08 22:30:50');
INSERT INTO `log_handle` VALUES (1432, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '15', '2022-10-08 22:30:50');
INSERT INTO `log_handle` VALUES (1433, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '106', '2022-10-08 22:30:50');
INSERT INTO `log_handle` VALUES (1434, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '8', '2022-10-08 22:32:03');
INSERT INTO `log_handle` VALUES (1435, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '9', '2022-10-08 22:32:03');
INSERT INTO `log_handle` VALUES (1436, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '4', '2022-10-08 22:32:14');
INSERT INTO `log_handle` VALUES (1437, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-08 22:32:14');
INSERT INTO `log_handle` VALUES (1438, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-10-08 22:32:20');
INSERT INTO `log_handle` VALUES (1439, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-08 22:32:20');
INSERT INTO `log_handle` VALUES (1440, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '6', '2022-10-08 22:32:31');
INSERT INTO `log_handle` VALUES (1441, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '7', '2022-10-08 22:32:31');
INSERT INTO `log_handle` VALUES (1442, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-08 22:32:36');
INSERT INTO `log_handle` VALUES (1443, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '5', '2022-10-08 22:32:36');
INSERT INTO `log_handle` VALUES (1444, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '100', '2022-10-09 09:36:04');
INSERT INTO `log_handle` VALUES (1445, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '100', '2022-10-09 09:36:04');
INSERT INTO `log_handle` VALUES (1446, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '49', '2022-10-09 20:47:00');
INSERT INTO `log_handle` VALUES (1447, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '151', '2022-10-09 20:47:00');
INSERT INTO `log_handle` VALUES (1448, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '11', '2022-10-09 20:50:14');
INSERT INTO `log_handle` VALUES (1449, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '29', '2022-10-09 20:50:17');
INSERT INTO `log_handle` VALUES (1450, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '17', '2022-10-09 20:50:17');
INSERT INTO `log_handle` VALUES (1451, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '19', '2022-10-09 20:50:17');
INSERT INTO `log_handle` VALUES (1452, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '14', '2022-10-09 20:50:21');
INSERT INTO `log_handle` VALUES (1453, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-09 20:50:26');
INSERT INTO `log_handle` VALUES (1454, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '9', '2022-10-09 20:50:26');
INSERT INTO `log_handle` VALUES (1455, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '4', '2022-10-09 20:51:58');
INSERT INTO `log_handle` VALUES (1456, '新增菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/insert', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '4', '2022-10-09 20:52:50');
INSERT INTO `log_handle` VALUES (1457, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '3', '2022-10-09 20:52:52');
INSERT INTO `log_handle` VALUES (1458, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '7', '2022-10-09 20:53:01');
INSERT INTO `log_handle` VALUES (1459, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '7', '2022-10-09 20:53:01');
INSERT INTO `log_handle` VALUES (1460, '根据ID获取角色信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/info/1', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '8', '2022-10-09 20:53:03');
INSERT INTO `log_handle` VALUES (1461, '根据角色ID获取菜单列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/perm/1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '33', '2022-10-09 20:53:05');
INSERT INTO `log_handle` VALUES (1462, '获取角色列表', 'PC', '0:0:0:0:0:0:0:1', '/sys/role/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'current=%5B1%5D&size=%5B10%5D', NULL, '3', '2022-10-09 20:53:07');
INSERT INTO `log_handle` VALUES (1463, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '5', '2022-10-09 20:53:11');
INSERT INTO `log_handle` VALUES (1464, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/47', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '3', '2022-10-09 20:53:20');
INSERT INTO `log_handle` VALUES (1465, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '115', '2022-10-09 20:53:47');
INSERT INTO `log_handle` VALUES (1466, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '5', '2022-10-09 20:53:50');
INSERT INTO `log_handle` VALUES (1467, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '16', '2022-10-09 20:53:55');
INSERT INTO `log_handle` VALUES (1468, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '12', '2022-10-09 20:53:55');
INSERT INTO `log_handle` VALUES (1469, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '9', '2022-10-09 20:53:56');
INSERT INTO `log_handle` VALUES (1470, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '20', '2022-10-09 20:53:56');
INSERT INTO `log_handle` VALUES (1471, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-09 20:54:33');
INSERT INTO `log_handle` VALUES (1472, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '21', '2022-10-09 20:54:58');
INSERT INTO `log_handle` VALUES (1473, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '18', '2022-10-09 20:54:59');
INSERT INTO `log_handle` VALUES (1474, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '5', '2022-10-09 20:55:02');
INSERT INTO `log_handle` VALUES (1475, '按ID查询菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/info/47', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '2', '2022-10-09 20:55:06');
INSERT INTO `log_handle` VALUES (1476, '更新菜单', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/update', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '8', '2022-10-09 20:55:16');
INSERT INTO `log_handle` VALUES (1477, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '4', '2022-10-09 20:55:18');
INSERT INTO `log_handle` VALUES (1478, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '14', '2022-10-09 20:55:25');
INSERT INTO `log_handle` VALUES (1479, '获取侧边菜单导航', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/nav', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '17', '2022-10-09 20:55:25');
INSERT INTO `log_handle` VALUES (1480, '查询菜单管理中的所有菜单信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/menu/select', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '6', '2022-10-09 20:55:25');
INSERT INTO `log_handle` VALUES (1481, '获取当前用户信息', 'PC', '0:0:0:0:0:0:0:1', '/sys/user/get_userinfo', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', NULL, '26', '2022-10-09 20:55:25');

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登录日志ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `state` int(11) NULL DEFAULT NULL COMMENT '当前状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `log_login` VALUES (19, 1, 0, '2022-08-24 21:57:34');
INSERT INTO `log_login` VALUES (20, 1, 0, '2022-08-28 20:40:42');
INSERT INTO `log_login` VALUES (21, 1, 0, '2022-08-28 20:44:47');
INSERT INTO `log_login` VALUES (22, 1, 0, '2022-08-28 21:03:05');
INSERT INTO `log_login` VALUES (23, 1, 0, '2022-08-29 13:14:33');
INSERT INTO `log_login` VALUES (24, 1, 0, '2022-09-24 08:40:10');
INSERT INTO `log_login` VALUES (25, 1, 0, '2022-09-30 21:09:20');
INSERT INTO `log_login` VALUES (26, 1, 0, '2022-09-30 21:09:51');
INSERT INTO `log_login` VALUES (27, 1, 0, '2022-09-30 21:29:59');
INSERT INTO `log_login` VALUES (28, 1, 0, '2022-09-30 21:41:06');
INSERT INTO `log_login` VALUES (29, 1, 0, '2022-10-05 08:48:30');
INSERT INTO `log_login` VALUES (30, 1, 0, '2022-10-05 09:19:02');
INSERT INTO `log_login` VALUES (31, 1, 0, '2022-10-05 09:19:26');

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级部门ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `state` int(5) NULL DEFAULT 0 COMMENT '部门状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES (1, 0, '技术研发部', 0, '', '2022-03-11 18:06:51', '2022-08-17 14:14:48');
INSERT INTO `sys_group` VALUES (2, 0, '媒体运营部', 0, '', '2022-03-11 18:06:55', '2022-08-17 14:14:51');
INSERT INTO `sys_group` VALUES (3, 0, '测试运维部', 0, '', '2022-03-11 18:06:57', '2022-08-17 14:14:54');
INSERT INTO `sys_group` VALUES (4, 0, '人事行政部', 0, '', '2022-03-11 18:06:59', '2022-08-17 14:14:56');
INSERT INTO `sys_group` VALUES (5, 0, '机械开发部', 0, '', '2022-03-11 18:07:01', '2022-08-17 14:14:58');
INSERT INTO `sys_group` VALUES (6, 0, '销售宣推部', 0, '', '2022-03-25 18:21:53', '2022-08-17 14:15:01');
INSERT INTO `sys_group` VALUES (7, 1, '质量管理部', 0, '', '2022-05-20 23:20:58', '2022-08-17 14:15:03');
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_group_job
-- ----------------------------
INSERT INTO `sys_group_job` VALUES (1, 1, 1);
INSERT INTO `sys_group_job` VALUES (2, 1, 2);
INSERT INTO `sys_group_job` VALUES (3, 1, 3);
INSERT INTO `sys_group_job` VALUES (4, 1, 4);
INSERT INTO `sys_group_job` VALUES (5, 5, 1);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '技术部经理', '2022-09-25 20:41:59', '2022-09-25 20:42:10', NULL, NULL);
INSERT INTO `sys_job` VALUES (2, '技术部组长', '2022-09-25 20:42:02', '2022-09-25 20:42:12', NULL, NULL);
INSERT INTO `sys_job` VALUES (3, '技术部组员', '2022-09-25 20:42:04', '2022-09-25 20:42:14', NULL, NULL);
INSERT INTO `sys_job` VALUES (4, '技术部实习生', '2022-09-25 20:42:07', '2022-09-25 20:42:16', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', '', 'sys:manage', '', 0, 'el-icon-s-operation', 1, 0, '2021-01-15 18:58:18', '2022-03-19 18:04:58');
INSERT INTO `sys_menu` VALUES (2, 1, '角色管理', '/sys/role', 'sys:role:select', 'sys/Role', 1, 'el-icon-postcard', 1, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:32');
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', '/sys/user', 'sys:user:select', 'sys/User', 1, 'el-icon-s-custom', 2, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:38');
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', '/sys/menu', 'sys:menu:select', 'sys/Menu', 1, 'el-icon-menu', 3, 0, '2021-01-15 19:03:45', '2022-04-15 18:26:43');
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
INSERT INTO `sys_menu` VALUES (25, 23, '关于我们', '/about/our', 'sys:about:me', 'about/Aboutme', 1, 'el-icon-magic-stick', 2, 0, '2022-03-13 10:13:55', '2022-04-21 22:57:54');
INSERT INTO `sys_menu` VALUES (47, 72, '首页管理', '/portal/indexmanage', 'portal:manage:index', 'portal/IndexManage', 1, 'el-icon-c-scale-to-original', 1, 0, '2022-03-27 12:31:36', '2022-08-05 15:56:00');
INSERT INTO `sys_menu` VALUES (60, 0, '日志管理', NULL, 'log:manage', NULL, 0, 'el-icon-tickets', 8, 0, '2022-06-23 16:21:16', '2022-06-23 16:21:25');
INSERT INTO `sys_menu` VALUES (61, 60, '登录日志', '/log/loginlog', 'log:manage:login', 'log/LoginLog', 1, 'el-icon-notebook-2', 1, 0, '2022-06-23 16:24:42', '2022-08-17 14:25:50');
INSERT INTO `sys_menu` VALUES (62, 60, '操作日志', '/log/handlelog', 'log:manage:handle', 'log/HandleLog', 1, 'el-icon-edit-outline', 2, 0, '2022-06-23 16:26:01', '2022-06-23 16:29:42');
INSERT INTO `sys_menu` VALUES (63, 0, '项目开发', NULL, 'project:develop', NULL, 0, 'el-icon-sunny', 9, 0, '2022-06-29 13:47:59', '2022-08-17 14:25:53');
INSERT INTO `sys_menu` VALUES (64, 63, '代码生成', '/develop/codegener', 'project:develop:codegener', 'develop/CodeGener', 1, 'el-icon-more-outline', 1, 0, '2022-06-29 14:10:35', '2022-06-29 14:13:00');
INSERT INTO `sys_menu` VALUES (65, 0, '平台监控', NULL, 'sys:monitor', NULL, 0, 'el-icon-monitor', 10, 0, '2022-07-06 16:51:58', '2022-08-17 14:25:57');
INSERT INTO `sys_menu` VALUES (66, 65, '服务器监控', '/monitor/servermonitor', 'sys:monitor:server', 'monitor/ServerMonitor', 1, 'el-icon-coin', 1, 0, '2022-07-06 16:54:08', '2022-08-17 14:25:59');
INSERT INTO `sys_menu` VALUES (67, 1, '部门管理', '/sys/group', 'sys:department:select', 'sys/Group', 1, 'el-icon-office-building', 4, 0, '2022-07-13 20:49:51', '2022-08-05 16:01:24');
INSERT INTO `sys_menu` VALUES (68, 63, '接口文档', '/develop/swagger', 'project:develop:document', 'develop/Swagger', 1, 'el-icon-document', 2, 0, '2022-08-05 13:50:38', '2022-08-05 13:50:49');
INSERT INTO `sys_menu` VALUES (69, 65, '数据库监控', '/monitor/druid', 'sys:monitor:druid', 'monitor/Druid', 1, 'el-icon-coin', 2, 0, '2022-08-05 15:44:29', '2022-08-17 14:26:02');
INSERT INTO `sys_menu` VALUES (70, 5, '数据字典', '/tool/dict', 'sys:tool:dict', 'tool/Dict', 1, 'el-icon-collection', 2, 0, '2022-08-05 15:54:38', '2022-08-17 14:26:05');
INSERT INTO `sys_menu` VALUES (71, 1, '岗位管理', '/sys/job', 'sys:job:select', 'sys/Job', 1, 'el-icon-medal', 5, 0, '2022-09-25 21:09:55', '2022-09-25 21:09:55');
INSERT INTO `sys_menu` VALUES (72, 0, '门户管理', NULL, 'portal:manage', NULL, 0, 'el-icon-s-platform', 3, 0, '2022-10-09 20:52:50', '2022-10-09 20:52:50');

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
INSERT INTO `sys_role` VALUES (4, '开发人员', 'developer', 0, '相当于超级管理员，放行系统管理之外的其它权限', '2022-03-19 20:16:21', '2022-08-17 14:19:34');
INSERT INTO `sys_role` VALUES (5, '普通管理员', 'admin', 0, '赋予除系统管理核心权限之外的其它功能', '2022-03-24 21:59:04', '2022-08-17 14:19:37');
INSERT INTO `sys_role` VALUES (6, '二级管理员', 'twoadmin', 0, '二级管理员', '2022-06-09 09:43:40', '2022-08-17 14:19:39');
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
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 7, 23);
INSERT INTO `sys_role_menu` VALUES (3, 7, 24);
INSERT INTO `sys_role_menu` VALUES (4, 7, 25);
INSERT INTO `sys_role_menu` VALUES (70, 1, 1);
INSERT INTO `sys_role_menu` VALUES (71, 1, 2);
INSERT INTO `sys_role_menu` VALUES (72, 1, 7);
INSERT INTO `sys_role_menu` VALUES (73, 1, 14);
INSERT INTO `sys_role_menu` VALUES (74, 1, 15);
INSERT INTO `sys_role_menu` VALUES (75, 1, 16);
INSERT INTO `sys_role_menu` VALUES (76, 1, 3);
INSERT INTO `sys_role_menu` VALUES (77, 1, 9);
INSERT INTO `sys_role_menu` VALUES (78, 1, 10);
INSERT INTO `sys_role_menu` VALUES (79, 1, 11);
INSERT INTO `sys_role_menu` VALUES (80, 1, 12);
INSERT INTO `sys_role_menu` VALUES (81, 1, 13);
INSERT INTO `sys_role_menu` VALUES (82, 1, 4);
INSERT INTO `sys_role_menu` VALUES (83, 1, 17);
INSERT INTO `sys_role_menu` VALUES (84, 1, 18);
INSERT INTO `sys_role_menu` VALUES (85, 1, 19);
INSERT INTO `sys_role_menu` VALUES (86, 1, 67);
INSERT INTO `sys_role_menu` VALUES (87, 1, 71);
INSERT INTO `sys_role_menu` VALUES (88, 1, 5);
INSERT INTO `sys_role_menu` VALUES (89, 1, 47);
INSERT INTO `sys_role_menu` VALUES (90, 1, 70);
INSERT INTO `sys_role_menu` VALUES (91, 1, 72);
INSERT INTO `sys_role_menu` VALUES (92, 1, 60);
INSERT INTO `sys_role_menu` VALUES (93, 1, 61);
INSERT INTO `sys_role_menu` VALUES (94, 1, 62);
INSERT INTO `sys_role_menu` VALUES (95, 1, 63);
INSERT INTO `sys_role_menu` VALUES (96, 1, 64);
INSERT INTO `sys_role_menu` VALUES (97, 1, 68);
INSERT INTO `sys_role_menu` VALUES (98, 1, 65);
INSERT INTO `sys_role_menu` VALUES (99, 1, 66);
INSERT INTO `sys_role_menu` VALUES (100, 1, 69);
INSERT INTO `sys_role_menu` VALUES (101, 1, 23);
INSERT INTO `sys_role_menu` VALUES (102, 1, 24);
INSERT INTO `sys_role_menu` VALUES (103, 1, 25);

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
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信openID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'tylt6688', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '天宇龙腾', 'http://qiniuyun.tylt.xyz/2dd364ee125c4a3885c6eb28cf5ce741.jpg', 'tylt6688@gmail.com', '17666666666', '山东济南', 0, '2022-10-05 09:19:25', 1, NULL, '2022-02-28 22:42:39', '2022-04-03 11:49:47');
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', '', 'admin@admin.om', '15766174399', '山东潍坊', 0, '2022-05-07 16:45:53', 1, NULL, '2022-03-12 01:06:10', '2022-05-07 16:45:35');
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 0, '2022-06-04 15:48:48', 1, NULL, '2022-03-12 01:06:13', '2022-03-29 10:32:23');
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 0, '2022-08-17 13:15:06', 1, NULL, '2022-03-19 20:17:18', '2022-03-29 16:02:25');
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999999', '山东济宁', 0, '2022-06-24 10:03:23', 1, NULL, '2022-04-19 13:37:58', '2022-06-12 15:05:01');

-- ----------------------------
-- Table structure for sys_user_group_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group_job`;
CREATE TABLE `sys_user_group_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户岗位ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `group_id` bigint(20) NOT NULL COMMENT '部门团队ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_group_job
-- ----------------------------
INSERT INTO `sys_user_group_job` VALUES (1, 1, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (2, 2, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (3, 3, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (4, 4, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (5, 5, 1, 1);
INSERT INTO `sys_user_group_job` VALUES (6, 1, 2, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 2, 1);
INSERT INTO `sys_user_role` VALUES (2, 4, 4);
INSERT INTO `sys_user_role` VALUES (3, 1, 1);
INSERT INTO `sys_user_role` VALUES (4, 3, 5);
INSERT INTO `sys_user_role` VALUES (5, 1, 2);
INSERT INTO `sys_user_role` VALUES (6, 5, 7);

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
