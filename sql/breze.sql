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

 Date: 24/10/2023 21:55:03
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
) ENGINE = InnoDB AUTO_INCREMENT = 2735 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_handle
-- ----------------------------
INSERT INTO `log_handle` VALUES (2733, 'breze', '获取当前用户信息', 'Windows', '127.0.0.1', '/sys/user/current_userinfo', 'GET', '', NULL, '56', '2023-10-24 17:13:24');
INSERT INTO `log_handle` VALUES (2734, 'breze', '获取侧边菜单导航', 'Windows', '127.0.0.1', '/sys/menu/nav', 'GET', '', NULL, '65', '2023-10-24 17:13:24');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (5, 1, 0, '2023-10-24 17:13:23', '127.0.0.1', '服务器地址', 'Windows 10 or Windows Server 2016');

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
INSERT INTO `sys_user` VALUES (1, 'breze', '$2a$10$WPyXip2DQEdsckzwtfVvROP962uEhqeIhb7WIRqY0LaNk8yW4vGrO', '系统管理员', 0, 'http://qiniuyun.tylt.xyz/be9ec89bd4324452940180c0f749a95e.jpg', 'tylt6688@gmail.com', '16666666668', '山东济南', 1, '2023-10-24 17:13:23', 0, NULL, '2022-02-28 22:42:39', NULL, '2023-07-20 23:32:20', 0, 0, 2);
INSERT INTO `sys_user` VALUES (2, 'breeze101', '$2a$10$QOrz.68OkCyt4kpKVlIh1ehkT1SRa1vS5KY/t8M5WV40pWau68U5m', '李四', 0, '', 'admin@admin.om', '15766174399', '山东潍坊', 1, '2023-08-14 16:45:37', 0, NULL, '2022-03-12 01:06:10', NULL, '2022-05-07 16:45:35', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (3, 'breeze102', '$2a$10$J2SodmknbR2FW6yNsSixwuS3EYucFhtY4XkjmExKPlGBRM7qai0dG', '赵四', 0, 'http://qiniuyun.tylt.xyz/ce6b53ba93794ee1868fe2ce5f2152d8.jpg', 'user@user.com', '11012011912', '山东东营', 1, '2022-06-04 15:48:48', 0, NULL, '2022-03-12 01:06:13', NULL, '2022-03-29 10:32:23', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (4, 'breeze103', '$2a$10$0OX73ra8f.tWdd5bObU3venfIpRKTxo8SE6nbapTuj.mpmdfanU7W', '刘能', 0, 'http://qiniuyun.tylt.xyz/0f0f564bae7b4a7cab62da135209df72.jpg', 'teacher@teacher.com', '15666666666', '山东威海', 1, '2022-08-17 13:15:06', 0, NULL, '2022-03-19 20:17:18', NULL, '2022-03-29 16:02:25', NULL, 0, 0);
INSERT INTO `sys_user` VALUES (5, 'breeze104', '$2a$10$a8FSO2gyzSd145dUDHZTOuOHf2xhHv7ur/8i5slslrS/pnvLtBKEy', '张三', 0, 'http://qiniuyun.tylt.xyz/605a0a61fd344cdab47e2cee5a4161aa.jpg', '2584896007@qq.com', '13799999998', '山东济宁', 1, '2022-06-24 10:03:23', 0, NULL, '2022-04-19 13:37:58', NULL, '2023-07-21 09:47:06', NULL, 1, 1);

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
