/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : easycode-auth

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-11-14 21:00:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_generator
-- ----------------------------
DROP TABLE IF EXISTS `sys_generator`;
CREATE TABLE `sys_generator` (
  `generatorType` varchar(32) NOT NULL COMMENT '类型 - 主键生成器类型',
  `initialVal` varchar(32) NOT NULL COMMENT '初始值',
  `currentVal` varchar(32) NOT NULL COMMENT '当前值',
  `maxVal` varchar(32) DEFAULT NULL COMMENT '最大值',
  `fetchSize` int(9) NOT NULL COMMENT '批次容量 - 每批获取的数目大小',
  `increment` int(9) NOT NULL COMMENT '增长值 - 每次增加多少',
  `isCycle` int(1) NOT NULL COMMENT '是否循环 - 值是否循环累加',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`generatorType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主键生成器 - 主键生成器';

-- ----------------------------
-- Records of sys_generator
-- ----------------------------
INSERT INTO `sys_generator` VALUES ('group_id', '359', '7359', '2147483647', '500', '1', '0', '1', '2015-03-04 12:55:40', '1', '2016-09-29 14:03:52');
INSERT INTO `sys_generator` VALUES ('img_name', 'a15b6', 'a15b6', null, '500', '1', '0', '0', '2015-10-13 08:40:41', '1', '2016-09-30 16:09:54');
INSERT INTO `sys_generator` VALUES ('key', 'a15db6f', 'a15gglr', null, '500', '49', '0', '1', '2015-03-24 16:25:49', '1', '2016-09-29 23:34:08');
INSERT INTO `sys_generator` VALUES ('log_id', '10059', '109611', '9223372036854775807', '500', '1', '0', 'a162y', '2015-04-01 12:09:43', '1', '2016-11-14 20:46:50');
INSERT INTO `sys_generator` VALUES ('nickname', 'a15b6', 'a1g42', null, '500', '1', '0', 'a162y', '2015-03-25 17:02:04', '1', '2016-09-29 21:40:16');
INSERT INTO `sys_generator` VALUES ('partner_id', 'a15b6', 'a4xvu', null, '500', '59', '1', '1', '2015-03-24 16:25:49', '1', '2016-09-29 23:34:08');
INSERT INTO `sys_generator` VALUES ('permission_id', '350', '9359', '2147483647', '500', '1', '1', '1', '2015-02-11 12:07:53', '1', '2016-09-29 22:42:43');
INSERT INTO `sys_generator` VALUES ('project_id', '359', '6859', '2147483647', '500', '1', '1', '1', '2015-03-04 14:02:33', '1', '2016-10-28 14:52:15');
INSERT INTO `sys_generator` VALUES ('role_id', '359', '10859', '2147483647', '500', '1', '0', '1', '2015-03-04 09:11:50', '1', '2016-11-01 22:42:37');
INSERT INTO `sys_generator` VALUES ('user_id', 'a15b6', 'a1jyy', null, '500', '1', '0', '1', '2015-03-04 15:38:24', '1', '2016-09-29 21:40:16');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `title` varchar(512) DEFAULT NULL COMMENT '标题',
  `method` varchar(1024) DEFAULT NULL COMMENT '方法 - 执行的方法',
  `url` varchar(1024) DEFAULT NULL COMMENT '请求地址',
  `params` varchar(2048) DEFAULT NULL COMMENT '请求参数',
  `moduleType` int(9) DEFAULT NULL COMMENT '模块类型',
  `logLevel` int(1) DEFAULT NULL COMMENT '日志级别',
  `result` varchar(2048) DEFAULT NULL COMMENT '返回数据',
  `clientIp` varchar(32) DEFAULT NULL COMMENT '客户端IP',
  `errorMsg` varchar(2048) DEFAULT NULL COMMENT '错误信息',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志 - 记录系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('109111', '导入权限', 'com.easycodebox.auth.core.service.user.impl.PermissionServiceImpl.importFromXml(java.io.FileInputStream@15991eab)', 'http://localhost:7080/permission/imports', '', '2', '2', null, '0:0:0:0:0:0:0:1', null, '1', '2016-11-14 20:46:50');
INSERT INTO `sys_log` VALUES ('109112', '导入权限', 'com.easycodebox.auth.core.service.user.impl.PermissionServiceImpl.importFromXml(java.io.FileInputStream@6453f897)', 'http://localhost:7080/permission/imports', '', '2', '2', null, '0:0:0:0:0:0:0:1', null, '1', '2016-11-14 20:49:20');
INSERT INTO `sys_log` VALUES ('109113', '开启关闭权限', 'com.easycodebox.auth.core.service.user.impl.PermissionServiceImpl.openClose([Ljava.lang.Long;@5541048b, CLOSE)', 'http://localhost:7080/permission/openClose.json', 'status=CLOSE&ids=101030000', '2', '2', '1', '0:0:0:0:0:0:0:1', null, '1', '2016-11-14 21:00:05');
INSERT INTO `sys_log` VALUES ('109114', '开启关闭权限', 'com.easycodebox.auth.core.service.user.impl.PermissionServiceImpl.openClose([Ljava.lang.Long;@3c73d44a, OPEN)', 'http://localhost:7080/permission/openClose.json', 'status=OPEN&ids=101030000', '2', '2', '1', '0:0:0:0:0:0:0:1', null, '1', '2016-11-14 21:00:07');

-- ----------------------------
-- Table structure for sys_partner
-- ----------------------------
DROP TABLE IF EXISTS `sys_partner`;
CREATE TABLE `sys_partner` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '合作商名',
  `partnerKey` varchar(32) NOT NULL COMMENT '密钥 - 加密解密数据的密钥值',
  `website` varchar(512) DEFAULT NULL COMMENT '网址',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `contract` varchar(512) DEFAULT NULL COMMENT '合同',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作商 - 合作商调用接口配置';

-- ----------------------------
-- Records of sys_partner
-- ----------------------------
INSERT INTO `sys_partner` VALUES ('a15b6', '云商', 'a15db6f', '', '0', '0', '0', 'contract/partner/6a59f.jpg', '  ', '1', '2015-03-24 16:25:49', '1', '2016-11-12 00:11:06');

-- ----------------------------
-- Table structure for sys_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_project`;
CREATE TABLE `sys_project` (
  `id` int(9) NOT NULL COMMENT '主键',
  `name` varchar(32) NOT NULL COMMENT '项目名',
  `projectNo` varchar(32) NOT NULL COMMENT '项目编号',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `num` int(9) NOT NULL COMMENT '项目数量 - 从1开始依次递增',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目 - 受权限管理的项目';

-- ----------------------------
-- Records of sys_project
-- ----------------------------
INSERT INTO `sys_project` VALUES ('1359', '权限项目（后台）', 'EASYCODE-AUTH-BACKEND', '0', '0', '7', '1', '  ', '1', '2015-03-11 17:00:36', '1', '2016-08-12 16:19:34');
INSERT INTO `sys_project` VALUES ('5859', 'EasyCodeExample', 'EASYCODE-EXAMPLE', '0', '0', '0', '2', '', '1', '2016-10-27 13:00:28', '1', '2016-11-03 21:13:39');

-- ----------------------------
-- Table structure for u_group
-- ----------------------------
DROP TABLE IF EXISTS `u_group`;
CREATE TABLE `u_group` (
  `id` int(9) NOT NULL COMMENT '主键',
  `parentId` int(9) DEFAULT NULL COMMENT '上级组织',
  `name` varchar(32) NOT NULL COMMENT '组名',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组 - 用户组';

-- ----------------------------
-- Records of u_group
-- ----------------------------
INSERT INTO `u_group` VALUES ('360', null, '研发部', '55', '0', '0', '1', '2015-03-04 13:00:27', 'a162y', '2016-10-18 19:32:40');
INSERT INTO `u_group` VALUES ('362', null, '市场部', '2', '0', '0', '1', '2015-03-04 13:21:19', '1', '2016-07-20 12:45:19');

-- ----------------------------
-- Table structure for u_group_role
-- ----------------------------
DROP TABLE IF EXISTS `u_group_role`;
CREATE TABLE `u_group_role` (
  `roleId` int(9) NOT NULL COMMENT '角色ID',
  `groupId` int(9) NOT NULL COMMENT '用户组ID',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组角色 - 用户组与角色对应的关系';

-- ----------------------------
-- Records of u_group_role
-- ----------------------------
INSERT INTO `u_group_role` VALUES ('1361', '360', 'a162y', '2016-10-18 19:32:09');

-- ----------------------------
-- Table structure for u_permission
-- ----------------------------
DROP TABLE IF EXISTS `u_permission`;
CREATE TABLE `u_permission` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `parentId` int(9) DEFAULT NULL COMMENT '上级权限',
  `projectId` int(9) NOT NULL COMMENT '项目ID',
  `name` varchar(128) NOT NULL COMMENT '权限名',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `isMenu` int(1) NOT NULL COMMENT '菜单 - 是否为菜单按钮',
  `url` varchar(128) DEFAULT NULL COMMENT '地址',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `icon` varchar(128) DEFAULT NULL COMMENT '图标',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限 - 权限';

-- ----------------------------
-- Records of u_permission
-- ----------------------------
INSERT INTO `u_permission` VALUES ('101000000', null, '1359', '系统管理', '0', '0', '1', null, '0', 'fa fa-cogs', '系统管理', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101010000', '101000000', '1359', '日志管理', '0', '0', '1', 'log', '0', null, '日志管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101015000', '101010000', '1359', '日志列表', '0', '0', '0', 'log/list', '0', null, '日志列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101015100', '101010000', '1359', '日志详情', '0', '0', '0', 'log/load', '0', null, '日志详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101015200', '101010000', '1359', '删除日志', '0', '0', '0', 'log/removePhy', '0', null, '删除日志', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101020000', '101000000', '1359', '授权项目管理', '0', '0', '1', 'project', '0', null, '授权项目管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101025000', '101020000', '1359', '授权项目列表', '0', '0', '0', 'project/list', '0', null, '授权项目列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101025100', '101020000', '1359', '授权项目详情', '0', '0', '0', 'project/load', '0', null, '授权项目详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101025200', '101020000', '1359', '修改授权项目', '0', '0', '0', 'project/update', '0', null, '修改授权项目', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101025300', '101020000', '1359', '删除授权项目', '0', '0', '0', 'project/remove', '0', null, '删除授权项目', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101025400', '101020000', '1359', '启用/禁用授权项目', '0', '0', '0', 'project/openClose', '0', null, '启用/禁用授权项目', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101030000', '101000000', '1359', '生成策略管理', '0', '0', '1', 'generator', '0', null, '生成策略管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 21:00:07');
INSERT INTO `u_permission` VALUES ('101035000', '101030000', '1359', '生成策略列表', '0', '0', '0', 'generator/list', '0', null, '生成策略列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101035100', '101030000', '1359', '生成策略详情', '0', '0', '0', 'generator/load', '0', null, '生成策略详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101035200', '101030000', '1359', '修改生成策略', '0', '0', '0', 'generator/update', '0', null, '修改生成策略', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101040000', '101000000', '1359', '合作商管理', '0', '0', '1', 'partner', '0', null, '合作商管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101045000', '101040000', '1359', '合作商列表', '0', '0', '0', 'partner/list', '0', null, '合作商列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101045100', '101040000', '1359', '合作商详情', '0', '0', '0', 'partner/load', '0', null, '合作商详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101045200', '101040000', '1359', '修改合作商', '0', '0', '0', 'partner/update', '0', null, '修改合作商', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101045300', '101040000', '1359', '删除合作商', '0', '0', '0', 'partner/remove', '0', null, '删除合作商', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('101045400', '101040000', '1359', '启用/禁用合作商', '0', '0', '0', 'partner/openClose', '0', null, '启用/禁用合作商', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102000000', null, '1359', '用户管理', '0', '0', '1', null, '0', 'fa fa-user', '用户管理', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102010000', '102000000', '1359', '用户管理', '0', '0', '1', 'user', '0', null, '用户管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015000', '102010000', '1359', '用户列表', '0', '0', '0', 'user/list', '0', null, '用户列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015100', '102010000', '1359', '用户详情', '0', '0', '0', 'user/load', '0', null, '用户详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015200', '102010000', '1359', '修改用户', '0', '0', '0', 'user/update', '0', null, '修改用户', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015300', '102010000', '1359', '添加用户', '0', '0', '0', 'user/add', '0', null, '添加用户', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015400', '102010000', '1359', '删除用户', '0', '0', '0', 'user/remove', '0', null, '删除用户', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015500', '102010000', '1359', '启用/禁用用户', '0', '0', '0', 'user/openClose', '0', null, '启用/禁用用户', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015600', '102010000', '1359', '配置用户角色', '0', '0', '0', 'role/cfgByUserId', '0', null, '配置用户角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102015700', '102010000', '1359', '重置密码', '0', '0', '0', 'user/resetpwd', '0', null, '重置指定用户的密码', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102020000', '102000000', '1359', '组织管理', '0', '0', '1', 'group', '0', null, '组织管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025000', '102020000', '1359', '组织列表', '0', '0', '0', 'group/list', '0', null, '组织列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025100', '102020000', '1359', '组织详情', '0', '0', '0', 'group/load', '0', null, '组织详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025200', '102020000', '1359', '修改组织', '0', '0', '0', 'group/update', '0', null, '修改组织', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025300', '102020000', '1359', '添加组织', '0', '0', '0', 'group/add', '0', null, '添加组织', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025400', '102020000', '1359', '删除组织', '0', '0', '0', 'group/remove', '0', null, '删除组织', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025500', '102020000', '1359', '启用/禁用组织', '0', '0', '0', 'group/openClose', '0', null, '启用/禁用组织', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102025600', '102020000', '1359', '配置组织角色', '0', '0', '0', 'role/cfgByGroupId', '0', null, '配置组织角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102030000', '102000000', '1359', '角色管理', '0', '0', '1', 'role', '0', null, '角色管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035000', '102030000', '1359', '角色列表', '0', '0', '0', 'role/list', '0', null, '角色列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035100', '102030000', '1359', '角色详情', '0', '0', '0', 'role/load', '0', null, '角色详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035200', '102030000', '1359', '修改角色', '0', '0', '0', 'role/update', '0', null, '修改角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035300', '102030000', '1359', '添加角色', '0', '0', '0', 'role/add', '0', null, '添加角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035400', '102030000', '1359', '删除角色', '0', '0', '0', 'role/remove', '0', null, '删除角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035500', '102030000', '1359', '启用/禁用角色', '0', '0', '0', 'role/openClose', '0', null, '启用/禁用角色', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102035600', '102030000', '1359', '角色授权', '0', '0', '0', 'permission/authoriseRole', '0', null, '角色授权', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102040000', '102000000', '1359', '权限管理', '0', '0', '1', 'permission', '0', null, '权限管理页面', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045000', '102040000', '1359', '权限列表', '0', '0', '0', 'permission/list', '0', null, '权限列表', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045100', '102040000', '1359', '权限详情', '0', '0', '0', 'permission/load', '0', null, '权限详情', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045200', '102040000', '1359', '修改权限', '0', '0', '0', 'permission/update', '0', null, '修改权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045300', '102040000', '1359', '添加权限', '0', '0', '0', 'permission/add', '0', null, '添加权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045400', '102040000', '1359', '删除权限', '0', '0', '0', 'permission/remove', '0', null, '删除权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045500', '102040000', '1359', '启用/禁用权限', '0', '0', '0', 'permission/openClose', '0', null, '启用/禁用权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045600', '102040000', '1359', '导入权限', '0', '0', '0', 'permission/imports', '0', null, '导入权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('102045700', '102040000', '1359', '导出权限', '0', '0', '0', 'permission/exports', '0', null, '导出权限', null, '1', '2016-11-14 20:49:20', '1', '2016-11-14 20:49:20');
INSERT INTO `u_permission` VALUES ('201000000', null, '5859', '系统管理', '0', '0', '1', null, '0', 'fa fa-cogs', '系统管理', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201010000', '201000000', '5859', '生成策略管理', '0', '0', '1', 'generator', '0', null, '生成策略管理页面', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201015000', '201010000', '5859', '生成策略列表', '0', '0', '0', 'generator/list', '0', null, '生成策略列表', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201015100', '201010000', '5859', '生成策略详情', '0', '0', '0', 'generator/load', '0', null, '生成策略详情', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201015200', '201010000', '5859', '修改生成策略', '0', '0', '0', 'generator/update', '0', null, '修改生成策略', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201020000', '201000000', '5859', '合作商管理', '0', '0', '1', 'partner', '0', null, '合作商管理页面', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201025000', '201020000', '5859', '合作商列表', '0', '0', '0', 'partner/list', '0', null, '合作商列表', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201025100', '201020000', '5859', '合作商详情', '0', '0', '0', 'partner/load', '0', null, '合作商详情', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201025200', '201020000', '5859', '修改合作商', '0', '0', '0', 'partner/update', '0', null, '修改合作商', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201025300', '201020000', '5859', '删除合作商', '0', '0', '0', 'partner/remove', '0', null, '删除合作商', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');
INSERT INTO `u_permission` VALUES ('201025400', '201020000', '5859', '启用/禁用合作商', '0', '0', '0', 'partner/openClose', '0', null, '启用/禁用合作商', null, '1', '2016-10-28 10:09:51', '1', '2016-10-28 10:09:51');

-- ----------------------------
-- Table structure for u_role
-- ----------------------------
DROP TABLE IF EXISTS `u_role`;
CREATE TABLE `u_role` (
  `id` int(9) NOT NULL COMMENT '主键',
  `name` varchar(32) NOT NULL COMMENT '角色名',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色 - 角色';

-- ----------------------------
-- Records of u_role
-- ----------------------------
INSERT INTO `u_role` VALUES ('1359', '市场营销', '0', '0', '0', ' ', ' ', 'a162y', '2015-03-25 14:43:36', 'a162y', '2015-03-25 14:43:36');
INSERT INTO `u_role` VALUES ('1361', '商家管理员', '0', '0', '0', ' ', ' ', '1', '2015-03-26 14:20:54', '1', '2016-07-22 18:35:24');
INSERT INTO `u_role` VALUES ('3859', '管理员', '9', '0', '0', 'xxx', null, '1', '2015-04-08 15:27:05', '1', '2016-11-14 16:42:42');
INSERT INTO `u_role` VALUES ('8859', 'test', '9', '0', '1', 'xxx', null, '1', '2016-10-03 13:38:50', 'a162y', '2016-10-20 00:04:52');
INSERT INTO `u_role` VALUES ('10359', 'test', '0', '0', '0', '2', '2', '1', '2016-11-01 22:42:37', '1', '2016-11-14 16:45:19');

-- ----------------------------
-- Table structure for u_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `u_role_permission`;
CREATE TABLE `u_role_permission` (
  `roleId` int(9) NOT NULL COMMENT '角色ID',
  `permissionId` bigint(18) NOT NULL COMMENT '权限ID',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限 - 角色与权限的对应关系';

-- ----------------------------
-- Records of u_role_permission
-- ----------------------------
INSERT INTO `u_role_permission` VALUES ('3859', '101000000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101010000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101015000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101015100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101015200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101020000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101025000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101025100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101025200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101025300', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101025400', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101030000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101035000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101035100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101035200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101040000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101045000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101045100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101045200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101045300', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '101045400', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102000000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102010000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015300', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015400', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015500', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015600', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015700', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102015800', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102020000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025100', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025300', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025400', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025500', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025600', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102025700', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102030000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035000', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035100', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102035200', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035300', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035400', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102035500', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035600', '1', '2016-11-03 21:14:38');
INSERT INTO `u_role_permission` VALUES ('3859', '102035700', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102040000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045100', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045200', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045300', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045400', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045500', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045600', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '102045700', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201000000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201010000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201015000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201015100', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201015200', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201020000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201025000', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201025100', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201025200', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201025300', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_permission` VALUES ('3859', '201025400', '1', '2016-11-03 21:14:39');

-- ----------------------------
-- Table structure for u_role_project
-- ----------------------------
DROP TABLE IF EXISTS `u_role_project`;
CREATE TABLE `u_role_project` (
  `roleId` int(9) NOT NULL COMMENT '角色ID',
  `projectId` int(9) NOT NULL COMMENT '项目ID',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleId`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色项目 - 角色与项目的对应关系';

-- ----------------------------
-- Records of u_role_project
-- ----------------------------
INSERT INTO `u_role_project` VALUES ('3859', '1359', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_project` VALUES ('3859', '5859', '1', '2016-11-03 21:14:39');
INSERT INTO `u_role_project` VALUES ('8859', '1359', '1', '2016-10-03 13:39:15');

-- ----------------------------
-- Table structure for u_user
-- ----------------------------
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `groupId` int(9) DEFAULT NULL COMMENT '用户组ID',
  `userNo` varchar(32) DEFAULT NULL COMMENT '员工编号',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `nickname` varchar(32) NOT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `status` int(1) NOT NULL COMMENT '状态',
  `deleted` int(1) NOT NULL COMMENT '是否删除',
  `isSuperAdmin` int(1) NOT NULL COMMENT '是否是超级管理员 - 超级管理员具备任何权限',
  `pic` varchar(512) DEFAULT NULL COMMENT '用户头像',
  `sort` int(9) NOT NULL COMMENT '排序值',
  `gender` int(1) DEFAULT NULL COMMENT '性别',
  `email` varchar(512) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `loginFail` int(9) NOT NULL DEFAULT '0' COMMENT '错误登陆 - 连续错误登陆次数，正确登录后清零',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `modifier` varchar(32) NOT NULL COMMENT '修改人',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户 - 用户登录后台的用户';

-- ----------------------------
-- Records of u_user
-- ----------------------------
INSERT INTO `u_user` VALUES ('1', null, '1', 'superadmin', '超级管理员', '96e79218965eb72c92a549dd5a330112', '超级管理员', '0', '0', '1', null, '1000', '0', null, null, '0', '0', '2015-02-02 12:35:12', '1', '2016-09-16 00:38:04');
INSERT INTO `u_user` VALUES ('a15b7', null, '12321', 'test', 'test', '96e79218965eb72c92a549dd5a330112', 'user', '0', '1', '0', null, '34', '0', null, null, '0', '1', '2015-03-04 15:57:53', '1', '2015-03-04 16:01:18');
INSERT INTO `u_user` VALUES ('a162y', '360', '', 'admin', '管理员', '96e79218965eb72c92a549dd5a330112', null, '0', '0', '0', null, '2', null, null, null, '0', '1', '2015-03-09 13:17:43', '1', '2016-10-03 13:47:20');

-- ----------------------------
-- Table structure for u_user_role
-- ----------------------------
DROP TABLE IF EXISTS `u_user_role`;
CREATE TABLE `u_user_role` (
  `userId` varchar(32) NOT NULL COMMENT '用户ID',
  `roleId` int(9) NOT NULL COMMENT '角色ID',
  `creator` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色 - 用户与角色的对应关系';

-- ----------------------------
-- Records of u_user_role
-- ----------------------------
INSERT INTO `u_user_role` VALUES ('a162y', '3859', '1', '2016-10-18 16:13:54');
