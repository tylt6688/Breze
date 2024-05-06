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

 Date: 28/12/2023 15:18:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_handle
-- ----------------------------
DROP TABLE IF EXISTS `log_handle`;
CREATE TABLE `log_handle`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '操作日志编号',
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
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
) ENGINE = InnoDB AUTO_INCREMENT = 3114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (2733, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '56', '2023-10-24 17:13:24');
INSERT INTO `log_handle` VALUES (2734, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '65', '2023-10-24 17:13:24');
INSERT INTO `log_handle` VALUES (2735, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '91', '2023-11-08 16:19:58');
INSERT INTO `log_handle` VALUES (2736, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '150', '2023-11-08 16:22:34');
INSERT INTO `log_handle` VALUES (2737, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-08 16:23:01');
INSERT INTO `log_handle` VALUES (2738, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '24', '2023-11-08 16:23:01');
INSERT INTO `log_handle` VALUES (2739, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-08 16:23:03');
INSERT INTO `log_handle` VALUES (2740, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-08 16:24:16');
INSERT INTO `log_handle` VALUES (2741, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-08 16:24:59');
INSERT INTO `log_handle` VALUES (2742, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '18', '2023-11-08 16:25:56');
INSERT INTO `log_handle` VALUES (2743, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-08 16:26:20');
INSERT INTO `log_handle` VALUES (2744, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-08 16:26:35');
INSERT INTO `log_handle` VALUES (2745, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-08 16:27:45');
INSERT INTO `log_handle` VALUES (2746, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-08 16:28:01');
INSERT INTO `log_handle` VALUES (2747, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 16:28:01');
INSERT INTO `log_handle` VALUES (2748, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-08 16:30:56');
INSERT INTO `log_handle` VALUES (2749, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-11-08 16:30:56');
INSERT INTO `log_handle` VALUES (2750, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 16:31:01');
INSERT INTO `log_handle` VALUES (2751, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-08 16:31:01');
INSERT INTO `log_handle` VALUES (2752, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 16:31:57');
INSERT INTO `log_handle` VALUES (2753, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-11-08 16:39:57');
INSERT INTO `log_handle` VALUES (2754, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-11-08 16:40:13');
INSERT INTO `log_handle` VALUES (2755, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 16:42:46');
INSERT INTO `log_handle` VALUES (2756, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-08 16:42:46');
INSERT INTO `log_handle` VALUES (2757, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 16:43:11');
INSERT INTO `log_handle` VALUES (2758, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 16:43:11');
INSERT INTO `log_handle` VALUES (2759, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-08 16:43:15');
INSERT INTO `log_handle` VALUES (2760, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 16:44:04');
INSERT INTO `log_handle` VALUES (2761, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 16:44:08');
INSERT INTO `log_handle` VALUES (2762, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 16:44:42');
INSERT INTO `log_handle` VALUES (2763, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 16:44:42');
INSERT INTO `log_handle` VALUES (2764, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 16:58:54');
INSERT INTO `log_handle` VALUES (2765, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-08 16:59:50');
INSERT INTO `log_handle` VALUES (2766, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 17:00:06');
INSERT INTO `log_handle` VALUES (2767, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:02:59');
INSERT INTO `log_handle` VALUES (2768, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:03:31');
INSERT INTO `log_handle` VALUES (2769, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-08 17:03:31');
INSERT INTO `log_handle` VALUES (2770, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-08 17:03:44');
INSERT INTO `log_handle` VALUES (2771, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:03:53');
INSERT INTO `log_handle` VALUES (2772, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-08 17:03:53');
INSERT INTO `log_handle` VALUES (2773, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:08:52');
INSERT INTO `log_handle` VALUES (2774, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-08 17:08:52');
INSERT INTO `log_handle` VALUES (2775, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 17:09:27');
INSERT INTO `log_handle` VALUES (2776, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 17:09:27');
INSERT INTO `log_handle` VALUES (2777, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:21:49');
INSERT INTO `log_handle` VALUES (2778, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-08 17:21:49');
INSERT INTO `log_handle` VALUES (2779, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 17:22:04');
INSERT INTO `log_handle` VALUES (2780, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 17:22:04');
INSERT INTO `log_handle` VALUES (2781, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:22:24');
INSERT INTO `log_handle` VALUES (2782, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:22:27');
INSERT INTO `log_handle` VALUES (2783, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:22:27');
INSERT INTO `log_handle` VALUES (2784, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-08 17:23:52');
INSERT INTO `log_handle` VALUES (2785, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:23:52');
INSERT INTO `log_handle` VALUES (2786, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:23:52');
INSERT INTO `log_handle` VALUES (2787, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-08 17:24:53');
INSERT INTO `log_handle` VALUES (2788, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:24:53');
INSERT INTO `log_handle` VALUES (2789, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 17:27:28');
INSERT INTO `log_handle` VALUES (2790, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-08 17:27:28');
INSERT INTO `log_handle` VALUES (2791, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:27:45');
INSERT INTO `log_handle` VALUES (2792, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-08 17:27:45');
INSERT INTO `log_handle` VALUES (2793, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 17:28:33');
INSERT INTO `log_handle` VALUES (2794, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:28:33');
INSERT INTO `log_handle` VALUES (2795, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-08 17:29:33');
INSERT INTO `log_handle` VALUES (2796, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-08 17:29:33');
INSERT INTO `log_handle` VALUES (2797, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-08 17:30:08');
INSERT INTO `log_handle` VALUES (2798, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-08 17:30:08');
INSERT INTO `log_handle` VALUES (2799, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '46', '2023-11-09 10:02:45');
INSERT INTO `log_handle` VALUES (2800, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-11-09 10:02:46');
INSERT INTO `log_handle` VALUES (2801, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '75', '2023-11-09 10:02:46');
INSERT INTO `log_handle` VALUES (2802, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-09 10:05:13');
INSERT INTO `log_handle` VALUES (2803, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '18', '2023-11-09 10:05:13');
INSERT INTO `log_handle` VALUES (2804, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-09 10:06:18');
INSERT INTO `log_handle` VALUES (2805, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:06:18');
INSERT INTO `log_handle` VALUES (2806, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-09 10:06:40');
INSERT INTO `log_handle` VALUES (2807, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '25', '2023-11-09 10:06:40');
INSERT INTO `log_handle` VALUES (2808, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:06:55');
INSERT INTO `log_handle` VALUES (2809, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-09 10:06:55');
INSERT INTO `log_handle` VALUES (2810, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:07:11');
INSERT INTO `log_handle` VALUES (2811, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:07:11');
INSERT INTO `log_handle` VALUES (2812, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:07:50');
INSERT INTO `log_handle` VALUES (2813, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-09 10:07:50');
INSERT INTO `log_handle` VALUES (2814, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-09 10:08:26');
INSERT INTO `log_handle` VALUES (2815, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:08:26');
INSERT INTO `log_handle` VALUES (2816, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:09:03');
INSERT INTO `log_handle` VALUES (2817, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 10:09:03');
INSERT INTO `log_handle` VALUES (2818, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-09 10:09:31');
INSERT INTO `log_handle` VALUES (2819, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:09:31');
INSERT INTO `log_handle` VALUES (2820, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:12:05');
INSERT INTO `log_handle` VALUES (2821, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 10:12:05');
INSERT INTO `log_handle` VALUES (2822, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:15:51');
INSERT INTO `log_handle` VALUES (2823, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 10:15:51');
INSERT INTO `log_handle` VALUES (2824, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:16:15');
INSERT INTO `log_handle` VALUES (2825, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:16:15');
INSERT INTO `log_handle` VALUES (2826, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:16:25');
INSERT INTO `log_handle` VALUES (2827, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:16:25');
INSERT INTO `log_handle` VALUES (2828, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-09 10:30:53');
INSERT INTO `log_handle` VALUES (2829, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-09 10:30:56');
INSERT INTO `log_handle` VALUES (2830, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:41:40');
INSERT INTO `log_handle` VALUES (2831, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-09 10:41:53');
INSERT INTO `log_handle` VALUES (2832, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 10:41:53');
INSERT INTO `log_handle` VALUES (2833, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:42:12');
INSERT INTO `log_handle` VALUES (2834, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 10:42:12');
INSERT INTO `log_handle` VALUES (2835, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-09 10:58:22');
INSERT INTO `log_handle` VALUES (2836, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 10:58:22');
INSERT INTO `log_handle` VALUES (2837, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 10:59:38');
INSERT INTO `log_handle` VALUES (2838, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-09 10:59:38');
INSERT INTO `log_handle` VALUES (2839, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-09 11:01:20');
INSERT INTO `log_handle` VALUES (2840, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-09 11:01:20');
INSERT INTO `log_handle` VALUES (2841, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-09 11:01:24');
INSERT INTO `log_handle` VALUES (2842, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-09 11:03:00');
INSERT INTO `log_handle` VALUES (2843, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:03:25');
INSERT INTO `log_handle` VALUES (2844, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:03:35');
INSERT INTO `log_handle` VALUES (2845, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-09 11:03:56');
INSERT INTO `log_handle` VALUES (2846, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:03:56');
INSERT INTO `log_handle` VALUES (2847, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:03:58');
INSERT INTO `log_handle` VALUES (2848, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:08:58');
INSERT INTO `log_handle` VALUES (2849, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:09:07');
INSERT INTO `log_handle` VALUES (2850, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-11-09 11:10:42');
INSERT INTO `log_handle` VALUES (2851, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:13:16');
INSERT INTO `log_handle` VALUES (2852, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:13:18');
INSERT INTO `log_handle` VALUES (2853, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:13:23');
INSERT INTO `log_handle` VALUES (2854, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:13:24');
INSERT INTO `log_handle` VALUES (2855, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:13:25');
INSERT INTO `log_handle` VALUES (2856, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:13:27');
INSERT INTO `log_handle` VALUES (2857, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:13:59');
INSERT INTO `log_handle` VALUES (2858, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-09 11:14:01');
INSERT INTO `log_handle` VALUES (2859, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:14:01');
INSERT INTO `log_handle` VALUES (2860, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:14:03');
INSERT INTO `log_handle` VALUES (2861, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:14:53');
INSERT INTO `log_handle` VALUES (2862, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 11:16:24');
INSERT INTO `log_handle` VALUES (2863, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:40:28');
INSERT INTO `log_handle` VALUES (2864, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:40:31');
INSERT INTO `log_handle` VALUES (2865, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:40:37');
INSERT INTO `log_handle` VALUES (2866, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 11:40:39');
INSERT INTO `log_handle` VALUES (2867, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 11:40:41');
INSERT INTO `log_handle` VALUES (2868, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:41:08');
INSERT INTO `log_handle` VALUES (2869, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:41:16');
INSERT INTO `log_handle` VALUES (2870, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:42:13');
INSERT INTO `log_handle` VALUES (2871, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '4', '2023-11-09 11:42:30');
INSERT INTO `log_handle` VALUES (2872, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:43:19');
INSERT INTO `log_handle` VALUES (2873, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-09 11:44:13');
INSERT INTO `log_handle` VALUES (2874, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:44:13');
INSERT INTO `log_handle` VALUES (2875, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:44:17');
INSERT INTO `log_handle` VALUES (2876, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 11:44:18');
INSERT INTO `log_handle` VALUES (2877, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 11:47:15');
INSERT INTO `log_handle` VALUES (2878, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 11:49:04');
INSERT INTO `log_handle` VALUES (2879, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:49:27');
INSERT INTO `log_handle` VALUES (2880, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:49:38');
INSERT INTO `log_handle` VALUES (2881, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '4', '2023-11-09 11:57:00');
INSERT INTO `log_handle` VALUES (2882, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 11:57:13');
INSERT INTO `log_handle` VALUES (2883, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 11:58:44');
INSERT INTO `log_handle` VALUES (2884, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-09 14:08:26');
INSERT INTO `log_handle` VALUES (2885, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 14:08:43');
INSERT INTO `log_handle` VALUES (2886, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 14:09:06');
INSERT INTO `log_handle` VALUES (2887, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 14:09:07');
INSERT INTO `log_handle` VALUES (2888, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 14:09:10');
INSERT INTO `log_handle` VALUES (2889, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 14:10:21');
INSERT INTO `log_handle` VALUES (2890, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 14:14:33');
INSERT INTO `log_handle` VALUES (2891, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '9', '2023-11-09 14:14:33');
INSERT INTO `log_handle` VALUES (2892, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-09 14:27:26');
INSERT INTO `log_handle` VALUES (2893, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '20', '2023-11-09 14:27:26');
INSERT INTO `log_handle` VALUES (2894, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 14:27:29');
INSERT INTO `log_handle` VALUES (2895, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 14:27:30');
INSERT INTO `log_handle` VALUES (2896, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-09 15:58:06');
INSERT INTO `log_handle` VALUES (2897, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 15:59:16');
INSERT INTO `log_handle` VALUES (2898, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 15:59:30');
INSERT INTO `log_handle` VALUES (2899, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 16:02:41');
INSERT INTO `log_handle` VALUES (2900, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 16:03:43');
INSERT INTO `log_handle` VALUES (2901, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-09 16:05:55');
INSERT INTO `log_handle` VALUES (2902, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '15', '2023-11-09 16:05:55');
INSERT INTO `log_handle` VALUES (2903, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-11-09 16:06:25');
INSERT INTO `log_handle` VALUES (2904, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 16:06:30');
INSERT INTO `log_handle` VALUES (2905, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 16:06:41');
INSERT INTO `log_handle` VALUES (2906, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '8', '2023-11-09 16:38:55');
INSERT INTO `log_handle` VALUES (2907, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '466', '2023-11-09 16:38:55');
INSERT INTO `log_handle` VALUES (2908, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '7', '2023-11-09 17:01:08');
INSERT INTO `log_handle` VALUES (2909, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:01:09');
INSERT INTO `log_handle` VALUES (2910, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 17:01:12');
INSERT INTO `log_handle` VALUES (2911, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:01:36');
INSERT INTO `log_handle` VALUES (2912, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:02:10');
INSERT INTO `log_handle` VALUES (2913, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 17:02:16');
INSERT INTO `log_handle` VALUES (2914, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-09 17:02:41');
INSERT INTO `log_handle` VALUES (2915, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 17:02:45');
INSERT INTO `log_handle` VALUES (2916, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:02:55');
INSERT INTO `log_handle` VALUES (2917, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:03:07');
INSERT INTO `log_handle` VALUES (2918, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '6', '2023-11-09 17:04:07');
INSERT INTO `log_handle` VALUES (2919, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:18:49');
INSERT INTO `log_handle` VALUES (2920, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '5', '2023-11-09 17:24:45');
INSERT INTO `log_handle` VALUES (2921, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 17:25:58');
INSERT INTO `log_handle` VALUES (2922, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '8', '2023-11-09 17:26:28');
INSERT INTO `log_handle` VALUES (2923, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '9', '2023-11-09 17:26:28');
INSERT INTO `log_handle` VALUES (2924, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '36', '2023-11-10 15:43:16');
INSERT INTO `log_handle` VALUES (2925, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '32', '2023-11-10 15:43:17');
INSERT INTO `log_handle` VALUES (2926, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '21', '2023-11-10 15:43:17');
INSERT INTO `log_handle` VALUES (2927, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-10 15:43:18');
INSERT INTO `log_handle` VALUES (2928, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-11-10 15:45:19');
INSERT INTO `log_handle` VALUES (2929, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-10 15:45:59');
INSERT INTO `log_handle` VALUES (2930, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-10 15:46:05');
INSERT INTO `log_handle` VALUES (2931, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-10 15:46:05');
INSERT INTO `log_handle` VALUES (2932, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-10 15:46:11');
INSERT INTO `log_handle` VALUES (2933, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-10 15:46:17');
INSERT INTO `log_handle` VALUES (2934, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-11-10 15:46:17');
INSERT INTO `log_handle` VALUES (2935, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '137', '2023-11-16 17:20:42');
INSERT INTO `log_handle` VALUES (2936, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '97', '2023-11-16 17:20:42');
INSERT INTO `log_handle` VALUES (2937, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '26', '2023-11-16 17:20:45');
INSERT INTO `log_handle` VALUES (2938, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-16 17:20:49');
INSERT INTO `log_handle` VALUES (2939, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-11-16 17:20:49');
INSERT INTO `log_handle` VALUES (2940, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-16 17:21:48');
INSERT INTO `log_handle` VALUES (2941, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-11-16 17:21:48');
INSERT INTO `log_handle` VALUES (2942, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-16 17:21:59');
INSERT INTO `log_handle` VALUES (2943, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:21:59');
INSERT INTO `log_handle` VALUES (2944, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-11-16 17:22:15');
INSERT INTO `log_handle` VALUES (2945, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-11-16 17:22:15');
INSERT INTO `log_handle` VALUES (2946, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-16 17:22:22');
INSERT INTO `log_handle` VALUES (2947, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-16 17:22:22');
INSERT INTO `log_handle` VALUES (2948, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-16 17:23:00');
INSERT INTO `log_handle` VALUES (2949, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-11-16 17:23:00');
INSERT INTO `log_handle` VALUES (2950, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:23:14');
INSERT INTO `log_handle` VALUES (2951, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:23:14');
INSERT INTO `log_handle` VALUES (2952, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '2', '2023-11-16 17:23:45');
INSERT INTO `log_handle` VALUES (2953, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-16 17:23:45');
INSERT INTO `log_handle` VALUES (2954, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:23:54');
INSERT INTO `log_handle` VALUES (2955, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-16 17:23:54');
INSERT INTO `log_handle` VALUES (2956, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:24:26');
INSERT INTO `log_handle` VALUES (2957, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:24:26');
INSERT INTO `log_handle` VALUES (2958, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-16 17:24:30');
INSERT INTO `log_handle` VALUES (2959, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-16 17:24:34');
INSERT INTO `log_handle` VALUES (2960, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-11-16 17:24:34');
INSERT INTO `log_handle` VALUES (2961, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:24:43');
INSERT INTO `log_handle` VALUES (2962, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:24:46');
INSERT INTO `log_handle` VALUES (2963, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:24:46');
INSERT INTO `log_handle` VALUES (2964, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '9', '2023-11-16 17:24:47');
INSERT INTO `log_handle` VALUES (2965, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-11-16 17:24:47');
INSERT INTO `log_handle` VALUES (2966, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:24:47');
INSERT INTO `log_handle` VALUES (2967, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-11-16 17:24:48');
INSERT INTO `log_handle` VALUES (2968, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:24:49');
INSERT INTO `log_handle` VALUES (2969, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-11-16 17:24:49');
INSERT INTO `log_handle` VALUES (2970, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-11-16 17:25:11');
INSERT INTO `log_handle` VALUES (2971, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '12', '2023-11-16 17:25:11');
INSERT INTO `log_handle` VALUES (2972, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '79', '2023-11-27 14:43:30');
INSERT INTO `log_handle` VALUES (2973, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '279', '2023-11-27 14:43:30');
INSERT INTO `log_handle` VALUES (2974, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '15', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2975, 'breze', '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '20', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2976, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '69', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2977, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '8', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2978, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '8', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2979, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '18', '2023-11-27 14:43:43');
INSERT INTO `log_handle` VALUES (2980, 'breze', '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '11', '2023-11-27 14:43:44');
INSERT INTO `log_handle` VALUES (2981, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state,sys_menu_type%5D', NULL, '6', '2023-11-27 14:43:44');
INSERT INTO `log_handle` VALUES (2982, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '6', '2023-11-27 14:43:45');
INSERT INTO `log_handle` VALUES (2983, 'breze', '获取全部部门列表', 'Windows', '127.0.0.1', '/sys/group/select', 'GET', 'name=%5B%5D', NULL, '11', '2023-11-27 14:43:45');
INSERT INTO `log_handle` VALUES (2984, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-11-27 14:43:45');
INSERT INTO `log_handle` VALUES (2985, 'breze', '查询全部岗位信息', 'Windows', '127.0.0.1', '/sys/job/select', 'GET', 'name=%5B%5D', NULL, '129', '2023-11-27 14:43:45');
INSERT INTO `log_handle` VALUES (2986, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '3', '2023-11-27 14:43:48');
INSERT INTO `log_handle` VALUES (2987, 'breze', '获取字典分页信息', 'Windows', '127.0.0.1', '/sys/dict/get_dict_page', 'GET', 'dictName=%5B%5D&dictType=%5B%5D&current=%5B1%5D&size=%5B10%5D', NULL, '176', '2023-11-27 14:43:48');
INSERT INTO `log_handle` VALUES (2988, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '62', '2023-12-11 14:43:12');
INSERT INTO `log_handle` VALUES (2989, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-12-11 14:43:23');
INSERT INTO `log_handle` VALUES (2990, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-12-11 14:52:51');
INSERT INTO `log_handle` VALUES (2991, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '33', '2023-12-11 15:58:04');
INSERT INTO `log_handle` VALUES (2992, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '6', '2023-12-11 16:04:47');
INSERT INTO `log_handle` VALUES (2993, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-12-11 16:18:07');
INSERT INTO `log_handle` VALUES (2994, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '38', '2023-12-11 16:32:51');
INSERT INTO `log_handle` VALUES (2995, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '6', '2023-12-11 16:33:23');
INSERT INTO `log_handle` VALUES (2996, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '38', '2023-12-11 16:35:38');
INSERT INTO `log_handle` VALUES (2997, 'anonymousUser', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '7', '2023-12-11 16:37:06');
INSERT INTO `log_handle` VALUES (2998, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '8', '2023-12-11 16:39:04');
INSERT INTO `log_handle` VALUES (2999, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '46', '2023-12-11 16:39:04');
INSERT INTO `log_handle` VALUES (3000, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '5', '2023-12-11 16:39:44');
INSERT INTO `log_handle` VALUES (3001, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '26', '2023-12-11 16:39:44');
INSERT INTO `log_handle` VALUES (3002, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-12-11 16:47:15');
INSERT INTO `log_handle` VALUES (3003, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '4', '2023-12-11 16:47:19');
INSERT INTO `log_handle` VALUES (3004, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-12-11 16:47:19');
INSERT INTO `log_handle` VALUES (3005, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-12-11 16:47:20');
INSERT INTO `log_handle` VALUES (3006, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-12-11 16:47:25');
INSERT INTO `log_handle` VALUES (3007, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '13', '2023-12-11 16:47:25');
INSERT INTO `log_handle` VALUES (3008, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-12-11 16:53:56');
INSERT INTO `log_handle` VALUES (3009, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-12-11 16:54:03');
INSERT INTO `log_handle` VALUES (3010, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-12-11 16:54:03');
INSERT INTO `log_handle` VALUES (3011, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '11', '2023-12-11 16:54:05');
INSERT INTO `log_handle` VALUES (3012, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '3', '2023-12-11 16:54:07');
INSERT INTO `log_handle` VALUES (3013, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-12-11 16:54:07');
INSERT INTO `log_handle` VALUES (3014, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-12-11 16:54:08');
INSERT INTO `log_handle` VALUES (3015, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '10', '2023-12-11 17:00:06');
INSERT INTO `log_handle` VALUES (3016, 'breze', '获取轮播图排序信息', 'Android', '192.168.8.6', '/breze/portal/banner/select', 'GET', '', NULL, '55', '2023-12-11 17:23:55');
INSERT INTO `log_handle` VALUES (3017, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '57', '2023-12-11 17:23:55');
INSERT INTO `log_handle` VALUES (3018, 'breze', '获取当前用户信息', 'Android', '192.168.8.6', '/sys/user/current_userinfo', 'GET', '', NULL, '23', '2023-12-11 17:24:50');
INSERT INTO `log_handle` VALUES (3019, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '145', '2023-12-12 14:07:46');
INSERT INTO `log_handle` VALUES (3020, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '142', '2023-12-12 14:07:46');
INSERT INTO `log_handle` VALUES (3021, 'breze', '获取侧边菜单导航', 'Unknown', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '31', '2023-12-13 13:32:10');
INSERT INTO `log_handle` VALUES (3022, 'breze', '获取侧边菜单导航', 'Unknown', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-12-13 16:01:37');
INSERT INTO `log_handle` VALUES (3023, 'breze', '获取侧边菜单导航', 'Unknown', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-12-13 16:02:36');
INSERT INTO `log_handle` VALUES (3024, 'breze', '获取当前用户信息', 'Unknown', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '286', '2023-12-13 16:14:50');
INSERT INTO `log_handle` VALUES (3025, 'breze', '获取全部用户列表', 'Unknown', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '474', '2023-12-13 16:17:24');
INSERT INTO `log_handle` VALUES (3026, 'breze', '获取全部App配置列表', 'Unknown', '127.0.0.1', '/breze/app/config/select', 'POST', '', NULL, '12', '2023-12-13 16:21:44');
INSERT INTO `log_handle` VALUES (3027, 'breze', '获取全部App配置列表', 'Unknown', '127.0.0.1', '/breze/app/config/select', 'POST', '', NULL, '446', '2023-12-13 16:23:01');
INSERT INTO `log_handle` VALUES (3028, 'breze', '获取全部App配置列表', 'Unknown', '127.0.0.1', '/breze/app/config/select', 'POST', '', NULL, '71', '2023-12-13 16:36:31');
INSERT INTO `log_handle` VALUES (3029, 'breze', '获取全部App配置列表', 'Unknown', '127.0.0.1', '/breze/app/config/select', 'POST', '', NULL, '74', '2023-12-13 16:38:28');
INSERT INTO `log_handle` VALUES (3030, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '117', '2023-12-27 14:08:34');
INSERT INTO `log_handle` VALUES (3031, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '23', '2023-12-27 14:21:36');
INSERT INTO `log_handle` VALUES (3032, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '45', '2023-12-27 14:21:36');
INSERT INTO `log_handle` VALUES (3033, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '18', '2023-12-27 14:21:47');
INSERT INTO `log_handle` VALUES (3034, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '21', '2023-12-27 14:22:08');
INSERT INTO `log_handle` VALUES (3035, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-12-27 14:22:21');
INSERT INTO `log_handle` VALUES (3036, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-12-27 14:22:29');
INSERT INTO `log_handle` VALUES (3037, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '22', '2023-12-27 14:23:04');
INSERT INTO `log_handle` VALUES (3038, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-12-27 14:23:12');
INSERT INTO `log_handle` VALUES (3039, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-12-27 14:23:52');
INSERT INTO `log_handle` VALUES (3040, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '17', '2023-12-27 14:23:52');
INSERT INTO `log_handle` VALUES (3041, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '16', '2023-12-27 14:31:57');
INSERT INTO `log_handle` VALUES (3042, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-12-27 14:31:57');
INSERT INTO `log_handle` VALUES (3043, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '159', '2023-12-27 14:33:45');
INSERT INTO `log_handle` VALUES (3044, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '14', '2023-12-27 14:33:46');
INSERT INTO `log_handle` VALUES (3045, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '15', '2023-12-27 14:33:46');
INSERT INTO `log_handle` VALUES (3046, 'breze', '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '9', '2023-12-27 14:34:25');
INSERT INTO `log_handle` VALUES (3047, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '117', '2023-12-27 14:34:25');
INSERT INTO `log_handle` VALUES (3048, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '170', '2023-12-27 14:34:25');
INSERT INTO `log_handle` VALUES (3049, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '45', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3050, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '31', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3051, 'breze', '查询菜单管理中的所有菜单信息', 'Windows', '127.0.0.1', '/sys/menu/select', 'GET', '', NULL, '19', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3052, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '49', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3053, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '19', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3054, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', 'current=%5B1%5D&size=%5B10%5D', NULL, '104', '2023-12-27 16:16:06');
INSERT INTO `log_handle` VALUES (3055, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '3', '2023-12-27 16:16:28');
INSERT INTO `log_handle` VALUES (3056, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '10', '2023-12-27 16:16:28');
INSERT INTO `log_handle` VALUES (3057, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '26', '2023-12-27 16:16:29');
INSERT INTO `log_handle` VALUES (3058, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '57', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3059, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '44', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3060, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '61', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3061, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '18', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3062, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '153', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3063, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '156', '2023-12-27 16:24:08');
INSERT INTO `log_handle` VALUES (3064, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '56', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3065, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '44', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3066, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '65', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3067, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '16', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3068, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '145', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3069, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '86', '2023-12-27 16:34:03');
INSERT INTO `log_handle` VALUES (3070, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '59', '2023-12-27 17:00:50');
INSERT INTO `log_handle` VALUES (3071, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '46', '2023-12-27 17:00:50');
INSERT INTO `log_handle` VALUES (3072, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '49', '2023-12-27 17:00:51');
INSERT INTO `log_handle` VALUES (3073, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '15', '2023-12-27 17:00:51');
INSERT INTO `log_handle` VALUES (3074, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '91', '2023-12-27 17:00:51');
INSERT INTO `log_handle` VALUES (3075, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '82', '2023-12-27 17:00:51');
INSERT INTO `log_handle` VALUES (3076, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '22', '2023-12-27 17:01:06');
INSERT INTO `log_handle` VALUES (3077, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '18', '2023-12-27 17:01:06');
INSERT INTO `log_handle` VALUES (3078, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '6', '2023-12-27 17:01:07');
INSERT INTO `log_handle` VALUES (3079, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '44', '2023-12-27 17:01:07');
INSERT INTO `log_handle` VALUES (3080, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '61', '2023-12-27 17:01:07');
INSERT INTO `log_handle` VALUES (3081, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '49', '2023-12-27 17:01:07');
INSERT INTO `log_handle` VALUES (3082, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '152', '2023-12-27 17:04:00');
INSERT INTO `log_handle` VALUES (3083, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '43', '2023-12-27 17:04:00');
INSERT INTO `log_handle` VALUES (3084, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '76', '2023-12-27 17:04:01');
INSERT INTO `log_handle` VALUES (3085, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '19', '2023-12-27 17:04:01');
INSERT INTO `log_handle` VALUES (3086, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '149', '2023-12-27 17:04:01');
INSERT INTO `log_handle` VALUES (3087, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '141', '2023-12-27 17:04:01');
INSERT INTO `log_handle` VALUES (3088, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '61', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3089, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '34', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3090, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '38', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3091, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '12', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3092, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '83', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3093, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '75', '2023-12-27 17:09:04');
INSERT INTO `log_handle` VALUES (3094, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '54', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3095, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '51', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3096, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '60', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3097, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '18', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3098, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '148', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3099, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '166', '2023-12-27 17:12:10');
INSERT INTO `log_handle` VALUES (3100, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '62', '2023-12-27 17:14:22');
INSERT INTO `log_handle` VALUES (3101, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '35', '2023-12-27 17:14:23');
INSERT INTO `log_handle` VALUES (3102, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '41', '2023-12-27 17:14:24');
INSERT INTO `log_handle` VALUES (3103, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '25', '2023-12-27 17:14:24');
INSERT INTO `log_handle` VALUES (3104, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '129', '2023-12-27 17:14:24');
INSERT INTO `log_handle` VALUES (3105, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '113', '2023-12-27 17:14:24');
INSERT INTO `log_handle` VALUES (3106, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '16', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3107, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '21', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3108, 'breze', '删除字典信息', 'Windows', '127.0.0.1', '/sys/dict/data/get_dict_data_by_type', 'GET', 'dicts=%5Bsys_state%5D', NULL, '4', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3109, 'breze', '分页获取角色列表', 'Windows', '127.0.0.1', '/sys/role/select_page', 'GET', '', NULL, '13', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3110, 'breze', '获取全部用户列表', 'Windows', '127.0.0.1', '/sys/user/select', 'POST', '', NULL, '27', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3111, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '33', '2023-12-27 17:15:08');
INSERT INTO `log_handle` VALUES (3112, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '67', '2023-12-28 15:04:28');
INSERT INTO `log_handle` VALUES (3113, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '67', '2023-12-28 15:04:28');

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (5, 1, 0, '2023-10-24 17:13:23', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (6, 1, 0, '2023-11-08 16:19:56', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (7, 1, 0, '2023-11-08 16:23:00', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (8, 1, 0, '2023-11-09 11:03:55', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (9, 1, 0, '2023-11-10 15:46:16', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (10, 1, 0, '2023-11-16 17:24:34', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (11, 1, 0, '2023-11-27 14:43:20', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (12, 1, 0, '2023-11-27 14:43:30', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (13, 1, 0, '2023-12-11 14:42:38', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (14, 1, 0, '2023-12-11 14:43:22', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (15, 1, 0, '2023-12-11 16:18:07', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (16, 1, 0, '2023-12-11 16:37:06', '192.168.8.6', '内网地址', 'Android');
INSERT INTO `log_login` VALUES (17, 1, 0, '2023-12-12 14:07:45', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (18, 1, 0, '2023-12-13 09:42:39', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (19, 1, 0, '2023-12-13 10:08:45', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (20, 1, 0, '2023-12-13 10:12:34', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (21, 1, 0, '2023-12-13 10:13:48', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (22, 1, 0, '2023-12-13 10:22:58', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (23, 1, 0, '2023-12-13 13:28:19', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (24, 1, 0, '2023-12-13 13:28:38', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (25, 1, 0, '2023-12-13 13:31:16', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (26, 1, 0, '2023-12-13 13:32:01', '127.0.0.1', '服务器地址', 'PostmanRuntime/7.36.0');
INSERT INTO `log_login` VALUES (27, 1, 0, '2023-12-27 14:08:33', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (28, 1, 0, '2023-12-27 14:22:20', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');
INSERT INTO `log_login` VALUES (29, 1, 0, '2023-12-28 15:00:15', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');

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
INSERT INTO `sys_dict` VALUES (1, '用户性别\r\n', 'sys_user_sex\r\n', 0, '用户性别字典值', NULL, '2023-04-20 13:50:14', NULL, '2023-09-26 20:22:23', 0, 0, 1);
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
INSERT INTO `sys_user` VALUES (1, 'breze', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '系统管理员', 0, '/be9ec89bd4324452940180c0f749a95e.jpg', 'tylt6688@gmail.com', '16666666668', '山东济南', 1, '2023-12-28 15:00:14', 0, NULL, '2022-02-28 22:42:39', NULL, '2023-07-20 23:32:20', 0, 0, 2);
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', 0, '', 'admin@admin.om', '15766174399', '山东潍坊', 1, '2023-08-14 16:45:37', 0, NULL, '2022-03-12 01:06:10', NULL, '2022-05-07 16:45:35', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 0, '/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 1, '2022-06-04 15:48:48', 0, NULL, '2022-03-12 01:06:13', NULL, '2022-03-29 10:32:23', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 0, '/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 1, '2022-08-17 13:15:06', 0, NULL, '2022-03-19 20:17:18', NULL, '2022-03-29 16:02:25', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 0, '/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999998', '山东济宁', 1, '2022-06-24 10:03:23', 0, NULL, '2022-04-19 13:37:58', NULL, '2023-07-21 09:47:06', NULL, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (14, 1, 1);
INSERT INTO `sys_user_role` VALUES (15, 2, 5);
INSERT INTO `sys_user_role` VALUES (16, 3, 2);
INSERT INTO `sys_user_role` VALUES (20, 4, 7);

SET FOREIGN_KEY_CHECKS = 1;
