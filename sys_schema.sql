/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : sys_schema

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-05-15 17:14:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) NOT NULL COMMENT '上级部门ID',
  `name` varchar(20) NOT NULL COMMENT '部门名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '0', '开发部', '2019-01-01 00:00:00');
INSERT INTO `tb_dept` VALUES ('2', '1', '开发一部', '2019-02-02 13:08:33');
INSERT INTO `tb_dept` VALUES ('3', '1', '开发二部', '2019-02-02 13:08:57');
INSERT INTO `tb_dept` VALUES ('4', '0', '测试部', '2019-01-01 00:00:00');
INSERT INTO `tb_dept` VALUES ('5', '4', '测试一部', '2019-02-02 13:09:11');
INSERT INTO `tb_dept` VALUES ('6', '0', '人事部', '2019-01-01 00:00:00');

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `operation` varchar(20) DEFAULT NULL COMMENT '操作描述',
  `time` bigint(20) DEFAULT NULL COMMENT '耗时(毫秒)',
  `method` varchar(100) DEFAULT NULL COMMENT '操作方法',
  `params` varchar(255) DEFAULT NULL COMMENT '操作参数',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `location` varchar(20) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('1', 'admin', '查看用户列表', '20', 'cn.tycoding.system.controller.UserController.queryList()', ' queryPage\"QueryPage(pageCode=1, pageSize=6)\" user\"User(id=null, username=null, password=null, salt=null, deptId=null, deptName=null, createTime=null, modifyTime=null, avatar=null, phone=null, sex=null, description=null, status=null)\"', '127.0.0.1', '2019-03-13 00:42:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('7', 'admin', '更新用户', '83', 'cn.tycoding.system.controller.UserController.update()', ' user\"UserWithRole(roleId=1, roleIds=[1])\"', '127.0.0.1', '2019-03-13 01:21:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('10', 'admin', '删除用户', '65', 'cn.tycoding.system.controller.UserController.delete()', ' ids\"[9]\"', '127.0.0.1', '2019-03-13 05:00:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('11', 'admin', '删除用户', '9', 'cn.tycoding.system.controller.UserController.delete()', ' ids\"[9]\"', '127.0.0.1', '2019-03-13 05:01:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('12', 'admin', '删除登录日志', '39', 'cn.tycoding.monitor.controller.LoginLogController.delete()', ' ids\"[3]\"', '127.0.0.1', '2019-03-13 05:13:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('13', 'admin', '删除日志', '44', 'cn.tycoding.monitor.controller.LogController.delete()', ' ids\"[8]\"', '127.0.0.1', '2019-03-13 05:15:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('14', 'admin', '删除日志', '9', 'cn.tycoding.monitor.controller.LogController.delete()', ' ids\"[9]\"', '127.0.0.1', '2019-03-13 05:15:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('15', 'admin', '删除七牛云文件', '378', 'cn.tycoding.storage.controller.QiniuController.delete()', ' name\"ss1074261491006988288.jpg\"', '127.0.0.1', '2019-03-13 08:30:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('16', 'admin', '更新七牛云文件名', '430', 'cn.tycoding.storage.controller.QiniuController.update()', ' oldname\"ss1074213185631420416.png\" newname\"1074213185631420416.png\"', '127.0.0.1', '2019-03-13 08:32:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('17', 'admin', '上传七牛云文件', '1948', 'cn.tycoding.storage.controller.QiniuController.upload()', ' file\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@576e7f4b\" request: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest@5ac44dd6', '127.0.0.1', '2019-03-13 19:14:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('18', 'admin', '添加用户', '96', 'cn.tycoding.system.controller.UserController.add()', ' user\"UserWithRole(roleId=null, roleIds=[3])\"', '127.0.0.1', '2019-03-14 08:27:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('19', 'admin', '文件上传', '7', 'cn.tycoding.storage.controller.UploadController.upload()', ' file\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@150e5550\" request: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest@38af3773', '127.0.0.1', '2019-03-14 08:27:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('20', 'admin', '更新用户', '19', 'cn.tycoding.system.controller.UserController.update()', ' user\"UserWithRole(roleId=3, roleIds=[3])\"', '127.0.0.1', '2019-03-14 08:28:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('21', 'admin', '上传七牛云文件', '2087', 'cn.tycoding.storage.controller.QiniuController.upload()', ' file\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@367a9b8b\" request: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest@322fa353', '127.0.0.1', '2019-03-14 08:29:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('22', 'admin', '更新用户', '19', 'cn.tycoding.system.controller.UserController.update()', ' user\"UserWithRole(roleId=3, roleIds=[3])\"', '127.0.0.1', '2019-03-14 08:29:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('23', 'tycoding', '添加用户', '22', 'cn.tycoding.system.controller.UserController.add()', ' user\"UserWithRole(roleId=null, roleIds=[2])\"', '127.0.0.1', '2019-03-15 22:54:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `tb_log` VALUES ('24', 'tycoding', '更新用户', '22', 'cn.tycoding.system.controller.UserController.update()', ' user\"UserWithRole(roleId=2, roleIds=[2])\"', '127.0.0.1', '2019-03-15 22:56:35', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for tb_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_log`;
CREATE TABLE `tb_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `location` varchar(255) DEFAULT NULL COMMENT '登录地点',
  `create_time` datetime DEFAULT NULL COMMENT '登录时间',
  `device` varchar(255) DEFAULT NULL COMMENT '登录设备',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login_log
-- ----------------------------
INSERT INTO `tb_login_log` VALUES ('1', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 04:36:13', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('4', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 06:15:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('5', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 08:05:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('6', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 08:52:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('7', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 18:31:09', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('8', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 20:33:47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('9', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-13 21:32:03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('10', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 01:03:48', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('11', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 01:39:52', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('12', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 05:25:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('13', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 06:39:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('14', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 18:34:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('15', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-14 19:04:50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('16', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 03:08:48', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('17', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 05:31:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('18', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 05:35:07', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('19', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 06:09:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('20', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 20:18:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('21', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 20:54:48', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('22', 'tycoding', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 21:51:47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('23', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 22:01:24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('24', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 22:04:35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('25', 'tycoding', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-03-15 22:49:37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('26', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-13 16:03:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('27', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-13 18:30:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('28', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 08:51:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('29', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 09:04:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('30', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 09:17:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('31', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 09:18:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('32', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 09:39:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('33', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 09:43:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('34', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 15:48:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('35', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 16:03:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('36', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 18:59:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('37', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-14 19:51:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('38', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-15 15:16:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('39', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-15 16:17:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('40', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-15 16:49:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('41', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-15 16:59:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('42', 'admin', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2019-05-15 17:08:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资源编号',
  `name` varchar(20) NOT NULL COMMENT '资源名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `url` varchar(100) DEFAULT NULL COMMENT 'URL',
  `perms` text COMMENT '权限标识',
  `type` varchar(20) NOT NULL COMMENT '类型：如button按钮 menu菜单',
  `icon` varchar(30) DEFAULT NULL COMMENT '菜单图标',
  `priority` bigint(20) DEFAULT NULL COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0锁定 1有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '系统管理', '0', null, null, 'menu', 'fa fa-gear', '0', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('2', '用户管理', '1', '/system/user', 'user:list', 'menu', null, '1', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('3', '角色管理', '1', '/system/role', 'role:list', 'menu', null, '2', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('4', '菜单管理', '1', '/system/menu', 'menu:list', 'menu', null, '3', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('5', '部门管理', '1', '/system/dept', 'dept:list', 'menu', null, null, '2019-02-14 13:19:56', '1');
INSERT INTO `tb_menu` VALUES ('6', '新增用户', '2', null, 'user:add', 'button', null, '1', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('7', '修改用户', '2', null, 'user:update', 'button', null, '2', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('8', '删除用户', '2', null, 'user:delete', 'button', null, '1', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('9', '新增角色', '3', null, 'role:add', 'button', null, '2', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('10', '修改角色', '3', null, 'role:update', 'button', null, null, '2019-03-15 13:46:26', '0');
INSERT INTO `tb_menu` VALUES ('11', '删除用户', '3', null, 'role:delete', 'button', null, null, '2019-03-15 13:47:14', '0');
INSERT INTO `tb_menu` VALUES ('12', '新增菜单', '4', null, 'menu:add', 'button', null, null, '2019-03-15 13:47:55', '0');
INSERT INTO `tb_menu` VALUES ('13', '修改菜单', '4', null, 'menu:update', 'button', null, null, '2019-03-15 13:47:55', '0');
INSERT INTO `tb_menu` VALUES ('14', '删除菜单', '4', null, 'menu:delete', 'button', null, null, '2019-03-15 13:47:14', '0');
INSERT INTO `tb_menu` VALUES ('15', '新增部门', '5', null, 'dept:add', 'button', null, null, '2019-03-15 13:47:14', '0');
INSERT INTO `tb_menu` VALUES ('16', '修改部门', '5', null, 'dept:update', 'button', null, null, '2019-03-15 13:47:14', '0');
INSERT INTO `tb_menu` VALUES ('17', '删除部门', '5', null, 'dept:delete', 'button', null, null, '2019-03-15 13:47:14', '0');
INSERT INTO `tb_menu` VALUES ('18', '生成试卷', '0', null, null, 'menu', 'fa fa-shield', '0', '2019-02-05 09:07:39', '1');
INSERT INTO `tb_menu` VALUES ('19', '手动选题', '18', '/manual', 'online:list', 'menu', null, null, '2019-02-14 14:29:53', '1');
INSERT INTO `tb_menu` VALUES ('20', '试卷预览', '181', '/monitor/loginlog', 'loginlog:list', 'menu', null, null, '2019-02-14 14:31:54', '0');
INSERT INTO `tb_menu` VALUES ('21', '题库管理', '0', null, null, 'menu', 'fa fa-bell', '2', '2019-01-01 00:00:00', '1');
INSERT INTO `tb_menu` VALUES ('22', '录入', '21', '/question/qentry', 'qentry:list', 'menu', '', '1', '2019-02-05 09:23:28', '1');
INSERT INTO `tb_menu` VALUES ('23', '列表', '21', '/question/qlist', 'qlist:list', 'menu', '', '1', '2019-02-05 09:23:28', '1');
INSERT INTO `tb_menu` VALUES ('24', '知识点管理', '0', '', '', 'menu', 'fa fa-cloud', '1', '2019-02-05 08:49:45', '1');
INSERT INTO `tb_menu` VALUES ('25', '录入', '24', '/knowledge/kentry', 'kentry:list', 'menu', '', '1', '2019-02-05 09:23:28', '1');
INSERT INTO `tb_menu` VALUES ('26', '列表', '24', '/knowledge/klist', 'klist:list', 'menu', '', '1', '2019-02-05 09:23:28', '1');
INSERT INTO `tb_menu` VALUES ('27', '试题下载', '0', '/', null, 'menu', 'fa fa-cloud', '1', '2019-02-05 08:49:45', '1');
INSERT INTO `tb_menu` VALUES ('28', '试卷预览', '27', '/down', 'dawnpaper:list', 'menu', '', '2', '2019-02-05 08:51:30', '1');
INSERT INTO `tb_menu` VALUES ('29', '上传文件', '28', null, 'qiniu:upload', 'button', null, null, '2019-03-14 11:38:01', '0');
INSERT INTO `tb_menu` VALUES ('30', '修改文件', '28', null, 'qiniu:update', 'button', null, null, '2019-03-14 11:38:01', '0');
INSERT INTO `tb_menu` VALUES ('31', '删除文件', '28', null, 'qiniu:delete', 'button', null, null, '2019-03-14 11:38:01', '0');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0锁定 1有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '管理员', '2019-01-01 00:00:00', '管理员', '1');
INSERT INTO `tb_role` VALUES ('2', '测试账号', '2019-01-01 00:00:00', '测试，可查看所有页面，但无操作权限', '1');
INSERT INTO `tb_role` VALUES ('3', '用户管理员', '2019-01-01 00:00:00', '负责用户的增删改查操作', '1');
INSERT INTO `tb_role` VALUES ('4', '系统监控员', '2019-02-14 08:51:48', '可查看系统监控信息', '1');
INSERT INTO `tb_role` VALUES ('5', '天气预报员', '2019-02-14 02:54:56', '可查看天气预报信息', '1');
INSERT INTO `tb_role` VALUES ('6', '用户查看', '2019-02-14 02:59:17', '查看用户，但无操作权限', '1');

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单/按钮ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源关联表';

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES ('1', '1');
INSERT INTO `tb_role_menu` VALUES ('1', '2');
INSERT INTO `tb_role_menu` VALUES ('1', '3');
INSERT INTO `tb_role_menu` VALUES ('1', '4');
INSERT INTO `tb_role_menu` VALUES ('1', '5');
INSERT INTO `tb_role_menu` VALUES ('1', '6');
INSERT INTO `tb_role_menu` VALUES ('1', '7');
INSERT INTO `tb_role_menu` VALUES ('1', '8');
INSERT INTO `tb_role_menu` VALUES ('1', '9');
INSERT INTO `tb_role_menu` VALUES ('1', '10');
INSERT INTO `tb_role_menu` VALUES ('1', '11');
INSERT INTO `tb_role_menu` VALUES ('1', '12');
INSERT INTO `tb_role_menu` VALUES ('1', '13');
INSERT INTO `tb_role_menu` VALUES ('1', '14');
INSERT INTO `tb_role_menu` VALUES ('1', '15');
INSERT INTO `tb_role_menu` VALUES ('1', '16');
INSERT INTO `tb_role_menu` VALUES ('1', '17');
INSERT INTO `tb_role_menu` VALUES ('1', '18');
INSERT INTO `tb_role_menu` VALUES ('1', '19');
INSERT INTO `tb_role_menu` VALUES ('1', '20');
INSERT INTO `tb_role_menu` VALUES ('1', '21');
INSERT INTO `tb_role_menu` VALUES ('1', '22');
INSERT INTO `tb_role_menu` VALUES ('1', '23');
INSERT INTO `tb_role_menu` VALUES ('1', '24');
INSERT INTO `tb_role_menu` VALUES ('1', '25');
INSERT INTO `tb_role_menu` VALUES ('1', '26');
INSERT INTO `tb_role_menu` VALUES ('1', '27');
INSERT INTO `tb_role_menu` VALUES ('1', '28');
INSERT INTO `tb_role_menu` VALUES ('1', '29');
INSERT INTO `tb_role_menu` VALUES ('1', '30');
INSERT INTO `tb_role_menu` VALUES ('1', '31');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `salt` varchar(100) NOT NULL COMMENT '盐值',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0锁定 1有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'e66118cc37a2d48679d2125786da4e32', '4bb248295857990678f15b9410e78e4d', '3', '2019-01-01 00:00:00', '2019-02-05 02:46:38', '/img/avatar/default.jpg', '19809587839', '0', '管理员', '1');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
