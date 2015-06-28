/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : sshpobject

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-28 16:30:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  `setuserid` int(11) NOT NULL,
  `organizationid` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setuserid` (`setuserid`),
  KEY `organizationid` (`organizationid`),
  CONSTRAINT `liuyan_ibfk_1` FOREIGN KEY (`setuserid`) REFERENCES `user` (`id`),
  CONSTRAINT `liuyan_ibfk_2` FOREIGN KEY (`organizationid`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `membercount` int(50) NOT NULL,
  `typeid` int(11) NOT NULL,
  `createrid` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`),
  KEY `createrid` (`createrid`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`typeid`) REFERENCES `organization_type` (`id`),
  CONSTRAINT `organization_ibfk_2` FOREIGN KEY (`createrid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('13', '软件测试测试', '2', '1', '3', '2015-06-28');
INSERT INTO `organization` VALUES ('14', '多用户同时测试阶段', '2', '2', '3', '2015-06-28');
INSERT INTO `organization` VALUES ('15', '多用户同时测试阶段', '1', '1', '3', '2015-06-28');

-- ----------------------------
-- Table structure for `organization_request`
-- ----------------------------
DROP TABLE IF EXISTS `organization_request`;
CREATE TABLE `organization_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `organizationid` int(11) NOT NULL,
  `agree` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizationid` (`organizationid`),
  KEY `userid` (`userid`),
  CONSTRAINT `organization_request_ibfk_1` FOREIGN KEY (`organizationid`) REFERENCES `organization` (`id`),
  CONSTRAINT `organization_request_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_request
-- ----------------------------
INSERT INTO `organization_request` VALUES ('16', '5', '13', '1');
INSERT INTO `organization_request` VALUES ('17', '5', '14', '1');

-- ----------------------------
-- Table structure for `organization_type`
-- ----------------------------
DROP TABLE IF EXISTS `organization_type`;
CREATE TABLE `organization_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_type
-- ----------------------------
INSERT INTO `organization_type` VALUES ('1', '班级');
INSERT INTO `organization_type` VALUES ('2', '部门');

-- ----------------------------
-- Table structure for `shuoshuo`
-- ----------------------------
DROP TABLE IF EXISTS `shuoshuo`;
CREATE TABLE `shuoshuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `shuoshuo_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shuoshuo
-- ----------------------------
INSERT INTO `shuoshuo` VALUES ('85', '我今天在校友网注册了！', '3', '2015-06-28');
INSERT INTO `shuoshuo` VALUES ('86', '我来发条说说', '3', '2015-06-28');
INSERT INTO `shuoshuo` VALUES ('87', '在不同页面完成发说说', '3', '2015-06-28');
INSERT INTO `shuoshuo` VALUES ('88', '', '5', '2015-06-28');
INSERT INTO `shuoshuo` VALUES ('89', '', '5', '2015-06-28');

-- ----------------------------
-- Table structure for `sixin`
-- ----------------------------
DROP TABLE IF EXISTS `sixin`;
CREATE TABLE `sixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  `setuserid` int(11) NOT NULL,
  `getuserid` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setuserid` (`setuserid`),
  KEY `getuserid` (`getuserid`),
  CONSTRAINT `sixin_ibfk_1` FOREIGN KEY (`setuserid`) REFERENCES `user` (`id`),
  CONSTRAINT `sixin_ibfk_2` FOREIGN KEY (`getuserid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sixin
-- ----------------------------
INSERT INTO `sixin` VALUES ('1', 'hello', '3', '4', '2015-06-23');
INSERT INTO `sixin` VALUES ('2', 'hello man', '3', '4', '2015-06-23');
INSERT INTO `sixin` VALUES ('3', '你好啊啊 啊啊啊', '3', '3', '2015-06-24');
INSERT INTO `sixin` VALUES ('12', '你好！我是test', '5', '3', '2015-06-25');
INSERT INTO `sixin` VALUES ('13', '你好，我是admin', '3', '5', '2015-06-25');
INSERT INTO `sixin` VALUES ('14', '今天的天气真好啊', '3', '5', '2015-06-25');
INSERT INTO `sixin` VALUES ('15', '您加入【地球村三号】的请求已被同意', '9', '5', '2015-06-25');
INSERT INTO `sixin` VALUES ('16', '您加入【天堂】的请求已被拒绝', '9', '3', '2015-06-26');
INSERT INTO `sixin` VALUES ('17', '这是我的第一条私信', '3', '5', '2015-06-26');
INSERT INTO `sixin` VALUES ('18', '这是新样式的第二条私信！', '3', '5', '2015-06-26');
INSERT INTO `sixin` VALUES ('19', '您加入【出门倒拐的那家锅盔店】的请求已被同意', '9', '3', '2015-06-27');
INSERT INTO `sixin` VALUES ('20', '您加入【2013软件一班】的请求已被同意', '9', '5', '2015-06-28');
INSERT INTO `sixin` VALUES ('21', '您加入【软件测试测试】的请求已被同意', '9', '5', '2015-06-28');
INSERT INTO `sixin` VALUES ('22', '您加入【软件测试测试】的请求已被同意', '9', '5', '2015-06-28');
INSERT INTO `sixin` VALUES ('23', '您加入【多用户同时测试阶段】的请求已被同意', '9', '5', '2015-06-28');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `birthday` date NOT NULL,
  `statusid` int(11) NOT NULL DEFAULT '1',
  `groupid` int(11) NOT NULL DEFAULT '1',
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `statusid` (`statusid`),
  KEY `groupid` (`groupid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`statusid`) REFERENCES `user_status` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`groupid`) REFERENCES `user_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'sadf', 'asdf', 'asdf', 'M', '2000-07-11', '1', '1', 'asdf', '123123123');
INSERT INTO `user` VALUES ('3', 'admin', 'admin', 'admin', 'F', '1996-06-06', '1', '1', 'testtesttesttesttesttesttesttest', '123456789');
INSERT INTO `user` VALUES ('4', 'bdm', 'bdm', 'bdm', 'M', '1999-09-09', '1', '1', '231321', '23132113');
INSERT INTO `user` VALUES ('5', 'test', 'test', 'test', 'M', '1995-01-01', '1', '1', 'test', '123123');
INSERT INTO `user` VALUES ('6', 'demo', 'demo', '中文测试', 'M', '1995-01-01', '1', '1', '地球村', '123123');
INSERT INTO `user` VALUES ('7', 'demo2', 'demo2', '中文测试', 'M', '1995-01-01', '1', '1', '地球村', '123123');
INSERT INTO `user` VALUES ('8', 'blackdogman', 'blackdogman', 'blackdogman', 'M', '1995-04-04', '1', '1', '地球村', '189999999999');
INSERT INTO `user` VALUES ('9', 'SYSTEM', 'superboy123', '系统', 'FM', '2016-01-01', '1', '3', 'com.system', '12345678');
INSERT INTO `user` VALUES ('10', 'test2', 'test2', 'test2', 'M', '2015-06-10', '1', '1', '123132', '123123123');
INSERT INTO `user` VALUES ('11', 'test3', 'test3', 'test3', 'F', '2015-06-16', '1', '1', '地球村', '123456789');
INSERT INTO `user` VALUES ('12', 'blackdogman', 'blackdogman', 'blackdogman', 'M', '2003-01-21', '1', '1', '四川温江', '18900000000');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `values` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '学生');
INSERT INTO `user_group` VALUES ('2', '老师');
INSERT INTO `user_group` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for `user_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(100) NOT NULL,
  `vaule` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES ('1', 'doLogin', '[Ljava.lang.Object;@4e0015bc', '2015-06-18');
INSERT INTO `user_log` VALUES ('2', 'doRegister', '[Ljava.lang.Object;@40ba2bc7', '2015-06-18');
INSERT INTO `user_log` VALUES ('3', 'doLogin', '[Ljava.lang.Object;@3992f0af', '2015-06-18');
INSERT INTO `user_log` VALUES ('4', 'doLogin', '[Ljava.lang.Object;@41fdd2d', '2015-06-18');
INSERT INTO `user_log` VALUES ('5', 'doLogin', '[Ljava.lang.Object;@40afbec6', '2015-06-23');
INSERT INTO `user_log` VALUES ('6', 'doLogin', '[Ljava.lang.Object;@3c194ff9', '2015-06-23');
INSERT INTO `user_log` VALUES ('7', 'doLogin', '[Ljava.lang.Object;@5df78eb0', '2015-06-23');
INSERT INTO `user_log` VALUES ('8', 'doLogin', '[Ljava.lang.Object;@5f4c4462', '2015-06-23');
INSERT INTO `user_log` VALUES ('9', 'doLogin', '[Ljava.lang.Object;@1da9f4b2', '2015-06-23');
INSERT INTO `user_log` VALUES ('10', 'doLogin', '[Ljava.lang.Object;@286863e6', '2015-06-23');
INSERT INTO `user_log` VALUES ('11', 'doLogin', '[Ljava.lang.Object;@1d269d64', '2015-06-23');
INSERT INTO `user_log` VALUES ('12', 'doLogin', '[Ljava.lang.Object;@4c42130', '2015-06-23');
INSERT INTO `user_log` VALUES ('13', 'doLogin', '[Ljava.lang.Object;@415ce54f', '2015-06-23');
INSERT INTO `user_log` VALUES ('14', 'doLogin', '[Ljava.lang.Object;@51a69121', '2015-06-23');
INSERT INTO `user_log` VALUES ('15', 'doLogin', '[Ljava.lang.Object;@7a816ce7', '2015-06-23');
INSERT INTO `user_log` VALUES ('16', 'doLogin', '[Ljava.lang.Object;@3469b3c0', '2015-06-23');
INSERT INTO `user_log` VALUES ('17', 'doLogin', '[Ljava.lang.Object;@572c99ba', '2015-06-23');
INSERT INTO `user_log` VALUES ('18', 'doLogin', '[Ljava.lang.Object;@7be759f', '2015-06-23');
INSERT INTO `user_log` VALUES ('19', 'doLogin', '[Ljava.lang.Object;@1c6f5aee', '2015-06-23');
INSERT INTO `user_log` VALUES ('20', 'doLogin', '[Ljava.lang.Object;@40fcf083', '2015-06-23');
INSERT INTO `user_log` VALUES ('21', 'doLogin', '[Ljava.lang.Object;@57abb16d', '2015-06-23');
INSERT INTO `user_log` VALUES ('22', 'doLogin', '[Ljava.lang.Object;@7d7cbf71', '2015-06-23');
INSERT INTO `user_log` VALUES ('23', 'doLogin', '[Ljava.lang.Object;@2a4dcfd9', '2015-06-23');
INSERT INTO `user_log` VALUES ('24', 'doLogin', '[Ljava.lang.Object;@100102bd', '2015-06-23');
INSERT INTO `user_log` VALUES ('25', 'doLogin', '[Ljava.lang.Object;@22e83452', '2015-06-23');
INSERT INTO `user_log` VALUES ('26', 'doLogin', '[Ljava.lang.Object;@28a80210', '2015-06-23');
INSERT INTO `user_log` VALUES ('27', 'doLogin', '[Ljava.lang.Object;@331c1219', '2015-06-23');
INSERT INTO `user_log` VALUES ('28', 'doLogin', '[Ljava.lang.Object;@4ef1926f', '2015-06-23');
INSERT INTO `user_log` VALUES ('29', 'doLogin', '[Ljava.lang.Object;@1d2df27b', '2015-06-23');
INSERT INTO `user_log` VALUES ('30', 'doLogin', '[Ljava.lang.Object;@4ea59b72', '2015-06-23');
INSERT INTO `user_log` VALUES ('31', 'doLogin', '[Ljava.lang.Object;@68c1bcaf', '2015-06-23');
INSERT INTO `user_log` VALUES ('32', 'doLogin', '[Ljava.lang.Object;@6d6935c4', '2015-06-23');
INSERT INTO `user_log` VALUES ('33', 'doLogin', '[Ljava.lang.Object;@696af07f', '2015-06-23');
INSERT INTO `user_log` VALUES ('34', 'doLogin', '[Ljava.lang.Object;@722c25e9', '2015-06-23');
INSERT INTO `user_log` VALUES ('35', 'doLogin', '[Ljava.lang.Object;@307fb8d1', '2015-06-23');
INSERT INTO `user_log` VALUES ('36', 'doLogin', '[Ljava.lang.Object;@59088a40', '2015-06-23');
INSERT INTO `user_log` VALUES ('37', 'doLogin', '[Ljava.lang.Object;@dbe0560', '2015-06-23');
INSERT INTO `user_log` VALUES ('38', 'doLogin', '[Ljava.lang.Object;@832d714', '2015-06-23');
INSERT INTO `user_log` VALUES ('39', 'doLogin', '[Ljava.lang.Object;@6fe2ffc3', '2015-06-23');
INSERT INTO `user_log` VALUES ('40', 'doLogin', '[Ljava.lang.Object;@ac6d613', '2015-06-23');
INSERT INTO `user_log` VALUES ('41', 'doLogin', '[Ljava.lang.Object;@522e5bb8', '2015-06-23');
INSERT INTO `user_log` VALUES ('42', 'doLogin', '[Ljava.lang.Object;@11ddfc76', '2015-06-23');
INSERT INTO `user_log` VALUES ('43', 'doLogin', '[Ljava.lang.Object;@63f1f2c5', '2015-06-23');
INSERT INTO `user_log` VALUES ('44', 'doLogin', '[Ljava.lang.Object;@2d0e4455', '2015-06-23');
INSERT INTO `user_log` VALUES ('45', 'doLogin', '[Ljava.lang.Object;@1e5bc130', '2015-06-23');
INSERT INTO `user_log` VALUES ('46', 'doLogin', '[Ljava.lang.Object;@25614c26', '2015-06-23');
INSERT INTO `user_log` VALUES ('47', 'doLogin', '[Ljava.lang.Object;@55cd205c', '2015-06-23');
INSERT INTO `user_log` VALUES ('48', 'doLogin', '[Ljava.lang.Object;@4b3d7c03', '2015-06-23');
INSERT INTO `user_log` VALUES ('49', 'doLogin', '[Ljava.lang.Object;@621f1599', '2015-06-23');
INSERT INTO `user_log` VALUES ('50', 'doLogin', '[Ljava.lang.Object;@4947712b', '2015-06-23');
INSERT INTO `user_log` VALUES ('51', 'doLogin', '[Ljava.lang.Object;@5b02e176', '2015-06-23');
INSERT INTO `user_log` VALUES ('52', 'doLogin', '[Ljava.lang.Object;@d9ef26b', '2015-06-23');
INSERT INTO `user_log` VALUES ('53', 'doLogin', '[Ljava.lang.Object;@21709b53', '2015-06-23');
INSERT INTO `user_log` VALUES ('54', 'doLogin', '[Ljava.lang.Object;@722f0164', '2015-06-23');
INSERT INTO `user_log` VALUES ('55', 'doLogin', '[Ljava.lang.Object;@6a7e6f83', '2015-06-24');
INSERT INTO `user_log` VALUES ('56', 'doLogin', '[Ljava.lang.Object;@4b632226', '2015-06-24');
INSERT INTO `user_log` VALUES ('57', 'doLogin', '[Ljava.lang.Object;@425b9fb', '2015-06-24');
INSERT INTO `user_log` VALUES ('58', 'doLogin', '[Ljava.lang.Object;@12ae3d03', '2015-06-24');
INSERT INTO `user_log` VALUES ('59', 'doLogin', '[Ljava.lang.Object;@7d9fb841', '2015-06-24');
INSERT INTO `user_log` VALUES ('60', 'doLogin', '[Ljava.lang.Object;@94e77c3', '2015-06-24');
INSERT INTO `user_log` VALUES ('61', 'doLogin', '[Ljava.lang.Object;@37141af8', '2015-06-24');
INSERT INTO `user_log` VALUES ('62', 'doLogin', '[Ljava.lang.Object;@6149c883', '2015-06-24');
INSERT INTO `user_log` VALUES ('63', 'doLogin', '[Ljava.lang.Object;@4d1b85ae', '2015-06-24');
INSERT INTO `user_log` VALUES ('64', 'doLogin', '[Ljava.lang.Object;@22ab5262', '2015-06-24');
INSERT INTO `user_log` VALUES ('65', 'doLogin', '[Ljava.lang.Object;@d9ef26b', '2015-06-24');
INSERT INTO `user_log` VALUES ('66', 'doLogin', '[Ljava.lang.Object;@7d30e8c', '2015-06-24');
INSERT INTO `user_log` VALUES ('67', 'doLogin', '[Ljava.lang.Object;@5e1caa31', '2015-06-24');
INSERT INTO `user_log` VALUES ('68', 'doLogin', '[Ljava.lang.Object;@5156cb64', '2015-06-24');
INSERT INTO `user_log` VALUES ('69', 'doLogin', '[Ljava.lang.Object;@95c81d8', '2015-06-24');
INSERT INTO `user_log` VALUES ('70', 'doLogin', '[Ljava.lang.Object;@e4be64a', '2015-06-24');
INSERT INTO `user_log` VALUES ('71', 'doLogin', '[Ljava.lang.Object;@28180ebd', '2015-06-24');
INSERT INTO `user_log` VALUES ('72', 'doLogin', '[Ljava.lang.Object;@3120af0c', '2015-06-24');
INSERT INTO `user_log` VALUES ('73', 'doLogin', '[Ljava.lang.Object;@207ebf04', '2015-06-24');
INSERT INTO `user_log` VALUES ('74', 'doLogin', '[Ljava.lang.Object;@2adf45ef', '2015-06-24');
INSERT INTO `user_log` VALUES ('75', 'doLogin', '[Ljava.lang.Object;@49e58a0e', '2015-06-24');
INSERT INTO `user_log` VALUES ('76', 'doLogin', '[Ljava.lang.Object;@30b04338', '2015-06-24');
INSERT INTO `user_log` VALUES ('77', 'doLogin', '[Ljava.lang.Object;@74fa3ce2', '2015-06-24');
INSERT INTO `user_log` VALUES ('78', 'doLogin', '[Ljava.lang.Object;@3520616c', '2015-06-24');
INSERT INTO `user_log` VALUES ('79', 'doLogin', '[Ljava.lang.Object;@10f77193', '2015-06-24');
INSERT INTO `user_log` VALUES ('80', 'doLogin', '[Ljava.lang.Object;@295f37d5', '2015-06-24');
INSERT INTO `user_log` VALUES ('81', 'doLogin', '[Ljava.lang.Object;@5ef2fe6f', '2015-06-24');
INSERT INTO `user_log` VALUES ('82', 'doLogin', '[Ljava.lang.Object;@3d5520eb', '2015-06-24');
INSERT INTO `user_log` VALUES ('83', 'doLogin', '[Ljava.lang.Object;@4bebd675', '2015-06-24');
INSERT INTO `user_log` VALUES ('84', 'doLogin', '[Ljava.lang.Object;@6d279989', '2015-06-24');
INSERT INTO `user_log` VALUES ('85', 'doLogin', '[Ljava.lang.Object;@183ea236', '2015-06-24');
INSERT INTO `user_log` VALUES ('86', 'doLogin', '[Ljava.lang.Object;@4b3d7c03', '2015-06-24');
INSERT INTO `user_log` VALUES ('87', 'doLogin', '[Ljava.lang.Object;@4bbab7e3', '2015-06-24');
INSERT INTO `user_log` VALUES ('88', 'doLogin', '[Ljava.lang.Object;@52c5f4da', '2015-06-24');
INSERT INTO `user_log` VALUES ('89', 'doLogin', '[Ljava.lang.Object;@1ef42ce8', '2015-06-24');
INSERT INTO `user_log` VALUES ('90', 'doLogin', '[Ljava.lang.Object;@109a9e3a', '2015-06-24');
INSERT INTO `user_log` VALUES ('91', 'doLogin', '[Ljava.lang.Object;@339eb8ff', '2015-06-24');
INSERT INTO `user_log` VALUES ('92', 'doLogin', '[Ljava.lang.Object;@5d3782ef', '2015-06-24');
INSERT INTO `user_log` VALUES ('93', 'doLogin', '[Ljava.lang.Object;@61ee210f', '2015-06-24');
INSERT INTO `user_log` VALUES ('94', 'doLogin', '[Ljava.lang.Object;@77624599', '2015-06-24');
INSERT INTO `user_log` VALUES ('95', 'doLogin', '[Ljava.lang.Object;@7de91ab', '2015-06-24');
INSERT INTO `user_log` VALUES ('96', 'doLogin', '[Ljava.lang.Object;@411a4d8a', '2015-06-24');
INSERT INTO `user_log` VALUES ('97', 'doLogin', '[Ljava.lang.Object;@3c194ff9', '2015-06-24');
INSERT INTO `user_log` VALUES ('98', 'doLogin', '[Ljava.lang.Object;@16b72dbe', '2015-06-24');
INSERT INTO `user_log` VALUES ('99', 'doLogin', '[Ljava.lang.Object;@1c2ae2cd', '2015-06-24');
INSERT INTO `user_log` VALUES ('100', 'doLogin', '[Ljava.lang.Object;@655396f8', '2015-06-24');
INSERT INTO `user_log` VALUES ('101', 'doLogin', '[Ljava.lang.Object;@48ec1169', '2015-06-24');
INSERT INTO `user_log` VALUES ('102', 'doLogin', '[Ljava.lang.Object;@5f352e3f', '2015-06-24');
INSERT INTO `user_log` VALUES ('103', 'doLogin', '[Ljava.lang.Object;@13b6fe6b', '2015-06-24');
INSERT INTO `user_log` VALUES ('104', 'doLogin', '[Ljava.lang.Object;@2f1a467e', '2015-06-24');
INSERT INTO `user_log` VALUES ('105', 'doLogin', '[Ljava.lang.Object;@42516ff7', '2015-06-24');
INSERT INTO `user_log` VALUES ('106', 'doLogin', '[Ljava.lang.Object;@7103116c', '2015-06-24');
INSERT INTO `user_log` VALUES ('107', 'doLogin', '[Ljava.lang.Object;@1f3c42c2', '2015-06-24');
INSERT INTO `user_log` VALUES ('108', 'doLogin', '[Ljava.lang.Object;@47d9b85b', '2015-06-24');
INSERT INTO `user_log` VALUES ('109', 'doLogin', '[Ljava.lang.Object;@3b875e0e', '2015-06-24');
INSERT INTO `user_log` VALUES ('110', 'doLogin', '[Ljava.lang.Object;@760bab24', '2015-06-24');
INSERT INTO `user_log` VALUES ('111', 'doLogin', '[Ljava.lang.Object;@385418b', '2015-06-24');
INSERT INTO `user_log` VALUES ('112', 'doLogin', '[Ljava.lang.Object;@414e6bdd', '2015-06-24');
INSERT INTO `user_log` VALUES ('113', 'doLogin', '[Ljava.lang.Object;@7b65c747', '2015-06-24');
INSERT INTO `user_log` VALUES ('114', 'doLogin', '[Ljava.lang.Object;@496aec4a', '2015-06-24');
INSERT INTO `user_log` VALUES ('115', 'doLogin', '[Ljava.lang.Object;@6b064f3d', '2015-06-24');
INSERT INTO `user_log` VALUES ('116', 'doLogin', '[Ljava.lang.Object;@78dae588', '2015-06-24');
INSERT INTO `user_log` VALUES ('117', 'doLogin', '[Ljava.lang.Object;@ecfced2', '2015-06-24');
INSERT INTO `user_log` VALUES ('118', 'doLogin', '[Ljava.lang.Object;@63be527e', '2015-06-24');
INSERT INTO `user_log` VALUES ('119', 'doLogin', '[Ljava.lang.Object;@6f9dfd98', '2015-06-24');
INSERT INTO `user_log` VALUES ('120', 'doLogin', '[Ljava.lang.Object;@26d68337', '2015-06-24');
INSERT INTO `user_log` VALUES ('121', 'doLogin', '[Ljava.lang.Object;@1e0f3bc1', '2015-06-24');
INSERT INTO `user_log` VALUES ('122', 'doLogin', '[Ljava.lang.Object;@1ada529f', '2015-06-24');
INSERT INTO `user_log` VALUES ('123', 'doLogin', '[Ljava.lang.Object;@5f1f23c0', '2015-06-24');
INSERT INTO `user_log` VALUES ('124', 'doLogin', '[Ljava.lang.Object;@648a1bf4', '2015-06-24');
INSERT INTO `user_log` VALUES ('125', 'doLogin', '[Ljava.lang.Object;@359fd32d', '2015-06-24');
INSERT INTO `user_log` VALUES ('126', 'doLogin', '[Ljava.lang.Object;@7a18eeb5', '2015-06-24');
INSERT INTO `user_log` VALUES ('127', 'doLogin', '[Ljava.lang.Object;@417b87cb', '2015-06-24');
INSERT INTO `user_log` VALUES ('128', 'doLogin', '[Ljava.lang.Object;@2e1f7d4a', '2015-06-24');
INSERT INTO `user_log` VALUES ('129', 'doLogin', '[Ljava.lang.Object;@2e1f7d4a', '2015-06-24');
INSERT INTO `user_log` VALUES ('130', 'doLogin', '[Ljava.lang.Object;@358b3be0', '2015-06-24');
INSERT INTO `user_log` VALUES ('131', 'doLogin', '[Ljava.lang.Object;@347a59a8', '2015-06-24');
INSERT INTO `user_log` VALUES ('132', 'doLogin', '[Ljava.lang.Object;@5e5dddc2', '2015-06-24');
INSERT INTO `user_log` VALUES ('133', 'doLogin', '[Ljava.lang.Object;@5b5807b2', '2015-06-24');
INSERT INTO `user_log` VALUES ('134', 'doLogin', '[Ljava.lang.Object;@277a7b8a', '2015-06-25');
INSERT INTO `user_log` VALUES ('135', 'doLogin', '[Ljava.lang.Object;@46e75835', '2015-06-25');
INSERT INTO `user_log` VALUES ('136', 'doLogin', '[Ljava.lang.Object;@1137b76d', '2015-06-25');
INSERT INTO `user_log` VALUES ('137', 'doLogin', '[Ljava.lang.Object;@13c94f3', '2015-06-25');
INSERT INTO `user_log` VALUES ('138', 'doLogin', '[Ljava.lang.Object;@11bc3c32', '2015-06-25');
INSERT INTO `user_log` VALUES ('139', 'doLogin', '[Ljava.lang.Object;@49c9864e', '2015-06-25');
INSERT INTO `user_log` VALUES ('140', 'doLogin', '[Ljava.lang.Object;@17e6b3b4', '2015-06-25');
INSERT INTO `user_log` VALUES ('141', 'doLogin', '[Ljava.lang.Object;@16e64121', '2015-06-25');
INSERT INTO `user_log` VALUES ('142', 'doLogin', '[Ljava.lang.Object;@2162ea59', '2015-06-25');
INSERT INTO `user_log` VALUES ('143', 'doLogin', '[Ljava.lang.Object;@58c8bb3f', '2015-06-25');
INSERT INTO `user_log` VALUES ('144', 'doLogin', '[Ljava.lang.Object;@b5fbb5e', '2015-06-25');
INSERT INTO `user_log` VALUES ('145', 'doLogin', '[Ljava.lang.Object;@5f7878da', '2015-06-25');
INSERT INTO `user_log` VALUES ('146', 'doLogin', '[Ljava.lang.Object;@325ace80', '2015-06-25');
INSERT INTO `user_log` VALUES ('147', 'doLogin', '[Ljava.lang.Object;@231e5a1c', '2015-06-25');
INSERT INTO `user_log` VALUES ('148', 'doLogin', '[Ljava.lang.Object;@7d639cf3', '2015-06-25');
INSERT INTO `user_log` VALUES ('149', 'doLogin', '[Ljava.lang.Object;@30b04338', '2015-06-25');
INSERT INTO `user_log` VALUES ('150', 'doLogin', '[Ljava.lang.Object;@104dff84', '2015-06-25');
INSERT INTO `user_log` VALUES ('151', 'doLogin', '[Ljava.lang.Object;@231e5a1c', '2015-06-25');
INSERT INTO `user_log` VALUES ('152', 'doLogin', '[Ljava.lang.Object;@4b82ddeb', '2015-06-25');
INSERT INTO `user_log` VALUES ('153', 'doLogin', '[Ljava.lang.Object;@360037b7', '2015-06-25');
INSERT INTO `user_log` VALUES ('154', 'doLogin', '[Ljava.lang.Object;@1da9f4b2', '2015-06-25');
INSERT INTO `user_log` VALUES ('155', 'doLogin', '[Ljava.lang.Object;@703aa55', '2015-06-25');
INSERT INTO `user_log` VALUES ('156', 'doLogin', '[Ljava.lang.Object;@295d66e0', '2015-06-25');
INSERT INTO `user_log` VALUES ('157', 'doLogin', '[Ljava.lang.Object;@26781f0d', '2015-06-25');
INSERT INTO `user_log` VALUES ('158', 'doLogin', '[Ljava.lang.Object;@17200b72', '2015-06-25');
INSERT INTO `user_log` VALUES ('159', 'doLogin', '[Ljava.lang.Object;@19ceb8d9', '2015-06-25');
INSERT INTO `user_log` VALUES ('160', 'doLogin', '[Ljava.lang.Object;@5392025d', '2015-06-25');
INSERT INTO `user_log` VALUES ('161', 'doLogin', '[Ljava.lang.Object;@4106bed', '2015-06-25');
INSERT INTO `user_log` VALUES ('162', 'doLogin', '[Ljava.lang.Object;@3132e3e7', '2015-06-25');
INSERT INTO `user_log` VALUES ('163', 'doLogin', '[Ljava.lang.Object;@45c8899b', '2015-06-25');
INSERT INTO `user_log` VALUES ('164', 'doLogin', '[Ljava.lang.Object;@6464aaa1', '2015-06-25');
INSERT INTO `user_log` VALUES ('165', 'doLogin', '[Ljava.lang.Object;@2953b170', '2015-06-25');
INSERT INTO `user_log` VALUES ('166', 'doLogin', '[Ljava.lang.Object;@1860725f', '2015-06-25');
INSERT INTO `user_log` VALUES ('167', 'doLogin', '[Ljava.lang.Object;@d9ef26b', '2015-06-25');
INSERT INTO `user_log` VALUES ('168', 'doLogin', '[Ljava.lang.Object;@748f109', '2015-06-25');
INSERT INTO `user_log` VALUES ('169', 'doLogin', '[Ljava.lang.Object;@17dca06', '2015-06-25');
INSERT INTO `user_log` VALUES ('170', 'doLogin', '[Ljava.lang.Object;@4b82ddeb', '2015-06-25');
INSERT INTO `user_log` VALUES ('171', 'doLogin', '[Ljava.lang.Object;@6678dd5e', '2015-06-25');
INSERT INTO `user_log` VALUES ('172', 'doLogin', '[Ljava.lang.Object;@4c7cd871', '2015-06-25');
INSERT INTO `user_log` VALUES ('173', 'doLogin', '[Ljava.lang.Object;@3c63c833', '2015-06-25');
INSERT INTO `user_log` VALUES ('174', 'doLogin', '[Ljava.lang.Object;@4106bed', '2015-06-25');
INSERT INTO `user_log` VALUES ('175', 'doLogin', '[Ljava.lang.Object;@21d18342', '2015-06-25');
INSERT INTO `user_log` VALUES ('176', 'doLogin', '[Ljava.lang.Object;@4d40a3cc', '2015-06-25');
INSERT INTO `user_log` VALUES ('177', 'doLogin', '[Ljava.lang.Object;@69f04f53', '2015-06-25');
INSERT INTO `user_log` VALUES ('178', 'doLogin', '[Ljava.lang.Object;@64ef3a1', '2015-06-25');
INSERT INTO `user_log` VALUES ('179', 'doLogin', '[Ljava.lang.Object;@6b12dee2', '2015-06-25');
INSERT INTO `user_log` VALUES ('180', 'doLogin', '[Ljava.lang.Object;@50265285', '2015-06-25');
INSERT INTO `user_log` VALUES ('181', 'doLogin', '[Ljava.lang.Object;@5e682fa', '2015-06-25');
INSERT INTO `user_log` VALUES ('182', 'doLogin', '[Ljava.lang.Object;@49dd1690', '2015-06-25');
INSERT INTO `user_log` VALUES ('183', 'doLogin', '[Ljava.lang.Object;@1f812abd', '2015-06-25');
INSERT INTO `user_log` VALUES ('184', 'doLogin', '[Ljava.lang.Object;@3f196d2b', '2015-06-25');
INSERT INTO `user_log` VALUES ('185', 'doLogin', '[Ljava.lang.Object;@4d243bfb', '2015-06-25');
INSERT INTO `user_log` VALUES ('186', 'doLogin', '[Ljava.lang.Object;@35e06c5d', '2015-06-25');
INSERT INTO `user_log` VALUES ('187', 'doLogin', '[Ljava.lang.Object;@4b82ddeb', '2015-06-25');
INSERT INTO `user_log` VALUES ('188', 'doLogin', '[Ljava.lang.Object;@3b51bf49', '2015-06-25');
INSERT INTO `user_log` VALUES ('189', 'doLogin', '[Ljava.lang.Object;@7d78ab02', '2015-06-25');
INSERT INTO `user_log` VALUES ('190', 'doLogin', '[Ljava.lang.Object;@432085d6', '2015-06-25');
INSERT INTO `user_log` VALUES ('191', 'doLogin', '[Ljava.lang.Object;@299ca886', '2015-06-25');
INSERT INTO `user_log` VALUES ('192', 'doLogin', '[Ljava.lang.Object;@2dacebae', '2015-06-25');
INSERT INTO `user_log` VALUES ('193', 'doLogin', '[Ljava.lang.Object;@2b8d7cb2', '2015-06-25');
INSERT INTO `user_log` VALUES ('194', 'doLogin', '[Ljava.lang.Object;@2dacebae', '2015-06-25');
INSERT INTO `user_log` VALUES ('195', 'doLogin', '[Ljava.lang.Object;@5ea6be24', '2015-06-25');
INSERT INTO `user_log` VALUES ('196', 'doLogin', '[Ljava.lang.Object;@f5b2be5', '2015-06-25');
INSERT INTO `user_log` VALUES ('197', 'doLogin', '[Ljava.lang.Object;@778f4b55', '2015-06-25');
INSERT INTO `user_log` VALUES ('198', 'doLogin', '[Ljava.lang.Object;@78dae588', '2015-06-25');
INSERT INTO `user_log` VALUES ('199', 'doLogin', '[Ljava.lang.Object;@b5fbb5e', '2015-06-25');
INSERT INTO `user_log` VALUES ('200', 'doLogin', '[Ljava.lang.Object;@8f2c9d4', '2015-06-25');
INSERT INTO `user_log` VALUES ('201', 'doLogin', '[Ljava.lang.Object;@424e3eaa', '2015-06-25');
INSERT INTO `user_log` VALUES ('202', 'doLogin', '[Ljava.lang.Object;@56fe459b', '2015-06-25');
INSERT INTO `user_log` VALUES ('203', 'doLogin', '[Ljava.lang.Object;@301f21b2', '2015-06-25');
INSERT INTO `user_log` VALUES ('204', 'doLogin', '[Ljava.lang.Object;@7d57a15e', '2015-06-25');
INSERT INTO `user_log` VALUES ('205', 'doLogin', '[Ljava.lang.Object;@5daac6af', '2015-06-25');
INSERT INTO `user_log` VALUES ('206', 'doLogin', '[Ljava.lang.Object;@c653def', '2015-06-25');
INSERT INTO `user_log` VALUES ('207', 'doLogin', '[Ljava.lang.Object;@6c0486cc', '2015-06-25');
INSERT INTO `user_log` VALUES ('208', 'doLogin', '[Ljava.lang.Object;@4ba78535', '2015-06-25');
INSERT INTO `user_log` VALUES ('209', 'doLogin', '[Ljava.lang.Object;@48ec1169', '2015-06-25');
INSERT INTO `user_log` VALUES ('210', 'doLogin', '[Ljava.lang.Object;@40d2a81', '2015-06-25');
INSERT INTO `user_log` VALUES ('211', 'doLogin', '[Ljava.lang.Object;@76bf44f7', '2015-06-25');
INSERT INTO `user_log` VALUES ('212', 'doLogin', '[Ljava.lang.Object;@e84f19a', '2015-06-25');
INSERT INTO `user_log` VALUES ('213', 'doLogin', '[Ljava.lang.Object;@4172de93', '2015-06-25');
INSERT INTO `user_log` VALUES ('214', 'doLogin', '[Ljava.lang.Object;@309ae750', '2015-06-25');
INSERT INTO `user_log` VALUES ('215', 'doLogin', '[Ljava.lang.Object;@40302f79', '2015-06-25');
INSERT INTO `user_log` VALUES ('216', 'doLogin', '[Ljava.lang.Object;@457d0e81', '2015-06-25');
INSERT INTO `user_log` VALUES ('217', 'doLogin', '[Ljava.lang.Object;@60a0ee1c', '2015-06-25');
INSERT INTO `user_log` VALUES ('218', 'doLogin', '[Ljava.lang.Object;@b334182', '2015-06-25');
INSERT INTO `user_log` VALUES ('219', 'doLogin', '[Ljava.lang.Object;@16e64121', '2015-06-25');
INSERT INTO `user_log` VALUES ('220', 'doLogin', '[Ljava.lang.Object;@4ef13835', '2015-06-25');
INSERT INTO `user_log` VALUES ('221', 'doLogin', '[Ljava.lang.Object;@22ab5262', '2015-06-25');
INSERT INTO `user_log` VALUES ('222', 'detailUser', '[Ljava.lang.Object;@36a60891', '2015-06-25');
INSERT INTO `user_log` VALUES ('223', 'doLogin', '[Ljava.lang.Object;@1ef42ce8', '2015-06-25');
INSERT INTO `user_log` VALUES ('224', 'detailUser', '[Ljava.lang.Object;@45f5a5e7', '2015-06-25');
INSERT INTO `user_log` VALUES ('225', 'detailUser', '[Ljava.lang.Object;@1d7b4ab6', '2015-06-25');
INSERT INTO `user_log` VALUES ('226', 'detailUser', '[Ljava.lang.Object;@7e98a7fa', '2015-06-25');
INSERT INTO `user_log` VALUES ('227', 'detailUser', '[Ljava.lang.Object;@270c4a26', '2015-06-25');
INSERT INTO `user_log` VALUES ('228', 'doRegister', '[Ljava.lang.Object;@51c15348', '2015-06-26');
INSERT INTO `user_log` VALUES ('229', 'doRegister', '[Ljava.lang.Object;@659eda51', '2015-06-26');
INSERT INTO `user_log` VALUES ('230', 'doLogin', '[Ljava.lang.Object;@1760655f', '2015-06-26');
INSERT INTO `user_log` VALUES ('231', 'doLogin', '[Ljava.lang.Object;@43a8d66b', '2015-06-26');
INSERT INTO `user_log` VALUES ('232', 'doLogin', '[Ljava.lang.Object;@23987721', '2015-06-26');
INSERT INTO `user_log` VALUES ('233', 'doLogin', '[Ljava.lang.Object;@29c134e1', '2015-06-26');
INSERT INTO `user_log` VALUES ('234', 'doLogin', '[Ljava.lang.Object;@49330197', '2015-06-26');
INSERT INTO `user_log` VALUES ('235', 'doLogin', '[Ljava.lang.Object;@48979a83', '2015-06-26');
INSERT INTO `user_log` VALUES ('236', 'doLogin', '[Ljava.lang.Object;@36e24280', '2015-06-26');
INSERT INTO `user_log` VALUES ('237', 'doLogin', '[Ljava.lang.Object;@471aebdd', '2015-06-26');
INSERT INTO `user_log` VALUES ('238', 'doLogin', '[Ljava.lang.Object;@1f82ffc7', '2015-06-26');
INSERT INTO `user_log` VALUES ('239', 'doLogin', '[Ljava.lang.Object;@32aef70', '2015-06-26');
INSERT INTO `user_log` VALUES ('240', 'doLogin', '[Ljava.lang.Object;@36318936', '2015-06-26');
INSERT INTO `user_log` VALUES ('241', 'doLogin', '[Ljava.lang.Object;@3a34f1ed', '2015-06-26');
INSERT INTO `user_log` VALUES ('242', 'doLogin', '[Ljava.lang.Object;@49f06d8a', '2015-06-26');
INSERT INTO `user_log` VALUES ('243', 'doLogin', '[Ljava.lang.Object;@2ede05f4', '2015-06-26');
INSERT INTO `user_log` VALUES ('244', 'doLogin', '[Ljava.lang.Object;@5366311c', '2015-06-26');
INSERT INTO `user_log` VALUES ('245', 'doLogin', '[Ljava.lang.Object;@7eec5136', '2015-06-26');
INSERT INTO `user_log` VALUES ('246', 'doLogin', '[Ljava.lang.Object;@4141865f', '2015-06-26');
INSERT INTO `user_log` VALUES ('247', 'detailUser', '[Ljava.lang.Object;@3035d696', '2015-06-26');
INSERT INTO `user_log` VALUES ('248', 'doLogin', '[Ljava.lang.Object;@57b78fe7', '2015-06-26');
INSERT INTO `user_log` VALUES ('249', 'detailUser', '[Ljava.lang.Object;@d374f1c', '2015-06-26');
INSERT INTO `user_log` VALUES ('250', 'doLogin', '[Ljava.lang.Object;@52ef517b', '2015-06-26');
INSERT INTO `user_log` VALUES ('251', 'detailUser', '[Ljava.lang.Object;@2f282fa9', '2015-06-26');
INSERT INTO `user_log` VALUES ('252', 'doLogin', '[Ljava.lang.Object;@73073b53', '2015-06-26');
INSERT INTO `user_log` VALUES ('253', 'detailUser', '[Ljava.lang.Object;@344476f1', '2015-06-26');
INSERT INTO `user_log` VALUES ('254', 'doLogin', '[Ljava.lang.Object;@5b7fb110', '2015-06-26');
INSERT INTO `user_log` VALUES ('255', 'detailUser', '[Ljava.lang.Object;@5aca499a', '2015-06-26');
INSERT INTO `user_log` VALUES ('256', 'doLogin', '[Ljava.lang.Object;@3fa0c52a', '2015-06-26');
INSERT INTO `user_log` VALUES ('257', 'detailUser', '[Ljava.lang.Object;@12aab346', '2015-06-26');
INSERT INTO `user_log` VALUES ('258', 'doLogin', '[Ljava.lang.Object;@1c678f5', '2015-06-26');
INSERT INTO `user_log` VALUES ('259', 'doLogin', '[Ljava.lang.Object;@2180a743', '2015-06-26');
INSERT INTO `user_log` VALUES ('260', 'doLogin', '[Ljava.lang.Object;@265f9b34', '2015-06-26');
INSERT INTO `user_log` VALUES ('261', 'doLogin', '[Ljava.lang.Object;@7cf14e8e', '2015-06-26');
INSERT INTO `user_log` VALUES ('262', 'doLogin', '[Ljava.lang.Object;@7b741d68', '2015-06-26');
INSERT INTO `user_log` VALUES ('263', 'detailUser', '[Ljava.lang.Object;@1809e56', '2015-06-26');
INSERT INTO `user_log` VALUES ('264', 'doLogin', '[Ljava.lang.Object;@660972fb', '2015-06-26');
INSERT INTO `user_log` VALUES ('265', 'doLogin', '[Ljava.lang.Object;@3887c4c7', '2015-06-26');
INSERT INTO `user_log` VALUES ('266', 'doLogin', '[Ljava.lang.Object;@58717f69', '2015-06-26');
INSERT INTO `user_log` VALUES ('267', 'doLogin', '[Ljava.lang.Object;@17bf6625', '2015-06-26');
INSERT INTO `user_log` VALUES ('268', 'doLogin', '[Ljava.lang.Object;@390e9ebe', '2015-06-26');
INSERT INTO `user_log` VALUES ('269', 'detailUser', '[Ljava.lang.Object;@29868e1', '2015-06-26');
INSERT INTO `user_log` VALUES ('270', 'doLogin', '[Ljava.lang.Object;@5c9acf0d', '2015-06-26');
INSERT INTO `user_log` VALUES ('271', 'doLogin', '[Ljava.lang.Object;@364f608d', '2015-06-26');
INSERT INTO `user_log` VALUES ('272', 'doLogin', '[Ljava.lang.Object;@79036e19', '2015-06-26');
INSERT INTO `user_log` VALUES ('273', 'doLogin', '[Ljava.lang.Object;@17b84a4b', '2015-06-26');
INSERT INTO `user_log` VALUES ('274', 'doLogin', '[Ljava.lang.Object;@a932c41', '2015-06-26');
INSERT INTO `user_log` VALUES ('275', 'doLogin', '[Ljava.lang.Object;@b5f3022', '2015-06-26');
INSERT INTO `user_log` VALUES ('276', 'doLogin', '[Ljava.lang.Object;@2fe14ce7', '2015-06-26');
INSERT INTO `user_log` VALUES ('277', 'detailUser', '[Ljava.lang.Object;@241dccf9', '2015-06-26');
INSERT INTO `user_log` VALUES ('278', 'detailUser', '[Ljava.lang.Object;@41cd9e0f', '2015-06-26');
INSERT INTO `user_log` VALUES ('279', 'doRegister', '[Ljava.lang.Object;@32dc92e7', '2015-06-27');
INSERT INTO `user_log` VALUES ('280', 'doLogin', '[Ljava.lang.Object;@3822f963', '2015-06-27');
INSERT INTO `user_log` VALUES ('281', 'doLogin', '[Ljava.lang.Object;@61253a12', '2015-06-27');
INSERT INTO `user_log` VALUES ('282', 'doLogin', '[Ljava.lang.Object;@487f575', '2015-06-27');
INSERT INTO `user_log` VALUES ('283', 'doLogin', '[Ljava.lang.Object;@7aaeec34', '2015-06-27');
INSERT INTO `user_log` VALUES ('284', 'doLogin', '[Ljava.lang.Object;@70b220a2', '2015-06-27');
INSERT INTO `user_log` VALUES ('285', 'doLogin', '[Ljava.lang.Object;@2ace4445', '2015-06-27');
INSERT INTO `user_log` VALUES ('286', 'detailUser', '[Ljava.lang.Object;@40a5ad71', '2015-06-27');
INSERT INTO `user_log` VALUES ('287', 'doLogin', '[Ljava.lang.Object;@5cc6a0b4', '2015-06-27');
INSERT INTO `user_log` VALUES ('288', 'detailUser', '[Ljava.lang.Object;@503e0edf', '2015-06-27');
INSERT INTO `user_log` VALUES ('289', 'doLogin', '[Ljava.lang.Object;@3f641183', '2015-06-27');
INSERT INTO `user_log` VALUES ('290', 'detailUser', '[Ljava.lang.Object;@7424a9b4', '2015-06-27');
INSERT INTO `user_log` VALUES ('291', 'doLogin', '[Ljava.lang.Object;@78dc3b09', '2015-06-27');
INSERT INTO `user_log` VALUES ('292', 'doLogin', '[Ljava.lang.Object;@2ef9e6a5', '2015-06-27');
INSERT INTO `user_log` VALUES ('293', 'doLogin', '[Ljava.lang.Object;@46ec9937', '2015-06-27');
INSERT INTO `user_log` VALUES ('294', 'doLogin', '[Ljava.lang.Object;@3694d7f5', '2015-06-27');
INSERT INTO `user_log` VALUES ('295', 'doLogin', '[Ljava.lang.Object;@3d73cd56', '2015-06-27');
INSERT INTO `user_log` VALUES ('296', 'doLogin', '[Ljava.lang.Object;@73bb9f9a', '2015-06-27');
INSERT INTO `user_log` VALUES ('297', 'doLogin', '[Ljava.lang.Object;@3d030630', '2015-06-27');
INSERT INTO `user_log` VALUES ('298', 'doLogin', '[Ljava.lang.Object;@23941447', '2015-06-27');
INSERT INTO `user_log` VALUES ('299', 'detailUser', '[Ljava.lang.Object;@1f4f8513', '2015-06-27');
INSERT INTO `user_log` VALUES ('300', 'doLogin', '[Ljava.lang.Object;@2995be78', '2015-06-27');
INSERT INTO `user_log` VALUES ('301', 'detailUser', '[Ljava.lang.Object;@1fc45e45', '2015-06-27');
INSERT INTO `user_log` VALUES ('302', 'detailUser', '[Ljava.lang.Object;@6c798388', '2015-06-27');
INSERT INTO `user_log` VALUES ('303', 'doLogin', '[Ljava.lang.Object;@24a43167', '2015-06-27');
INSERT INTO `user_log` VALUES ('304', 'detailUser', '[Ljava.lang.Object;@198f4ae2', '2015-06-27');
INSERT INTO `user_log` VALUES ('305', 'detailUser', '[Ljava.lang.Object;@26f2e503', '2015-06-27');
INSERT INTO `user_log` VALUES ('306', 'doLogin', '[Ljava.lang.Object;@4ad307ed', '2015-06-27');
INSERT INTO `user_log` VALUES ('307', 'doLogin', '[Ljava.lang.Object;@6d6ad44c', '2015-06-27');
INSERT INTO `user_log` VALUES ('308', 'doLogin', '[Ljava.lang.Object;@12e5204', '2015-06-27');
INSERT INTO `user_log` VALUES ('309', 'detailUser', '[Ljava.lang.Object;@5d2588cd', '2015-06-27');
INSERT INTO `user_log` VALUES ('310', 'doLogin', '[Ljava.lang.Object;@d1b6cac', '2015-06-27');
INSERT INTO `user_log` VALUES ('311', 'detailUser', '[Ljava.lang.Object;@57541100', '2015-06-27');
INSERT INTO `user_log` VALUES ('312', 'doLogin', '[Ljava.lang.Object;@56b9a873', '2015-06-27');
INSERT INTO `user_log` VALUES ('313', 'detailUser', '[Ljava.lang.Object;@7bd7d288', '2015-06-27');
INSERT INTO `user_log` VALUES ('314', 'doLogin', '[Ljava.lang.Object;@2414c052', '2015-06-27');
INSERT INTO `user_log` VALUES ('315', 'detailUser', '[Ljava.lang.Object;@38601d49', '2015-06-27');
INSERT INTO `user_log` VALUES ('316', 'doLogin', '[Ljava.lang.Object;@48ec5a5d', '2015-06-27');
INSERT INTO `user_log` VALUES ('317', 'detailUser', '[Ljava.lang.Object;@66488d41', '2015-06-27');
INSERT INTO `user_log` VALUES ('318', 'doLogin', '[Ljava.lang.Object;@40bc2a86', '2015-06-27');
INSERT INTO `user_log` VALUES ('319', 'detailUser', '[Ljava.lang.Object;@5b7fb110', '2015-06-27');
INSERT INTO `user_log` VALUES ('320', 'doLogin', '[Ljava.lang.Object;@5dce8cc6', '2015-06-27');
INSERT INTO `user_log` VALUES ('321', 'detailUser', '[Ljava.lang.Object;@3ce582d3', '2015-06-27');
INSERT INTO `user_log` VALUES ('322', 'detailUser', '[Ljava.lang.Object;@47212e96', '2015-06-27');
INSERT INTO `user_log` VALUES ('323', 'doLogin', '[Ljava.lang.Object;@5f0c5633', '2015-06-27');
INSERT INTO `user_log` VALUES ('324', 'detailUser', '[Ljava.lang.Object;@3b4e0854', '2015-06-27');
INSERT INTO `user_log` VALUES ('325', 'doLogin', '[Ljava.lang.Object;@58748e90', '2015-06-27');
INSERT INTO `user_log` VALUES ('326', 'doLogin', '[Ljava.lang.Object;@53ddecd8', '2015-06-27');
INSERT INTO `user_log` VALUES ('327', 'detailMe', '[Ljava.lang.Object;@2b055f2f', '2015-06-27');
INSERT INTO `user_log` VALUES ('328', 'detailMe', '[Ljava.lang.Object;@7fd96fb0', '2015-06-27');
INSERT INTO `user_log` VALUES ('329', 'doLogin', '[Ljava.lang.Object;@661a6677', '2015-06-27');
INSERT INTO `user_log` VALUES ('330', 'doLogin', '[Ljava.lang.Object;@62b5a458', '2015-06-27');
INSERT INTO `user_log` VALUES ('331', 'doLogin', '[Ljava.lang.Object;@710c8fbc', '2015-06-27');
INSERT INTO `user_log` VALUES ('332', 'doLogin', '[Ljava.lang.Object;@4a88500', '2015-06-27');
INSERT INTO `user_log` VALUES ('333', 'doLogin', '[Ljava.lang.Object;@2d52cf34', '2015-06-27');
INSERT INTO `user_log` VALUES ('334', 'doLogin', '[Ljava.lang.Object;@46ae98ce', '2015-06-27');
INSERT INTO `user_log` VALUES ('335', 'doLogin', '[Ljava.lang.Object;@43c3139c', '2015-06-27');
INSERT INTO `user_log` VALUES ('336', 'doLogin', '[Ljava.lang.Object;@49e98589', '2015-06-27');
INSERT INTO `user_log` VALUES ('337', 'doLogin', '[Ljava.lang.Object;@57b78fe7', '2015-06-27');
INSERT INTO `user_log` VALUES ('338', 'doLogin', '[Ljava.lang.Object;@6dccc34c', '2015-06-27');
INSERT INTO `user_log` VALUES ('339', 'doLogin', '[Ljava.lang.Object;@407a80a5', '2015-06-27');
INSERT INTO `user_log` VALUES ('340', 'detailMe', '[Ljava.lang.Object;@388859e4', '2015-06-27');
INSERT INTO `user_log` VALUES ('341', 'detailMe', '[Ljava.lang.Object;@65485153', '2015-06-27');
INSERT INTO `user_log` VALUES ('342', 'detailMe', '[Ljava.lang.Object;@46756ba7', '2015-06-27');
INSERT INTO `user_log` VALUES ('343', 'doLogin', '[Ljava.lang.Object;@b6fabce', '2015-06-28');
INSERT INTO `user_log` VALUES ('344', 'getShuoshuos', '[Ljava.lang.Object;@719875e2', '2015-06-28');
INSERT INTO `user_log` VALUES ('345', 'addShuoshuo', '[Ljava.lang.Object;@e838744', '2015-06-28');
INSERT INTO `user_log` VALUES ('346', 'getShuoshuos', '[Ljava.lang.Object;@687bd356', '2015-06-28');
INSERT INTO `user_log` VALUES ('347', 'doLogin', '[Ljava.lang.Object;@53529760', '2015-06-28');
INSERT INTO `user_log` VALUES ('348', 'getShuoshuos', '[Ljava.lang.Object;@6b8f13f8', '2015-06-28');
INSERT INTO `user_log` VALUES ('349', 'doLogin', '[Ljava.lang.Object;@407a80a5', '2015-06-28');
INSERT INTO `user_log` VALUES ('350', 'doLogin', '[Ljava.lang.Object;@3af87759', '2015-06-28');
INSERT INTO `user_log` VALUES ('351', 'doLogin', '[Ljava.lang.Object;@4dd3b786', '2015-06-28');
INSERT INTO `user_log` VALUES ('352', 'doLogin', '[Ljava.lang.Object;@762bb4ab', '2015-06-28');
INSERT INTO `user_log` VALUES ('353', 'doLogin', '[Ljava.lang.Object;@6812cf0a', '2015-06-28');
INSERT INTO `user_log` VALUES ('354', 'doLogin', '[Ljava.lang.Object;@407a52e4', '2015-06-28');
INSERT INTO `user_log` VALUES ('355', 'doLogin', '[Ljava.lang.Object;@11d158e2', '2015-06-28');
INSERT INTO `user_log` VALUES ('356', 'doLogin', '[Ljava.lang.Object;@eb0008f', '2015-06-28');
INSERT INTO `user_log` VALUES ('357', 'doLogin', '[Ljava.lang.Object;@61bddbd2', '2015-06-28');
INSERT INTO `user_log` VALUES ('358', 'doLogin', '[Ljava.lang.Object;@7d0cd6d8', '2015-06-28');
INSERT INTO `user_log` VALUES ('359', 'doLogin', '[Ljava.lang.Object;@259d7a00', '2015-06-28');
INSERT INTO `user_log` VALUES ('360', 'doLogin', '[Ljava.lang.Object;@191a2567', '2015-06-28');
INSERT INTO `user_log` VALUES ('361', 'doLogin', '[Ljava.lang.Object;@cfb442c', '2015-06-28');
INSERT INTO `user_log` VALUES ('362', 'doLogin', '[Ljava.lang.Object;@5b8c318', '2015-06-28');
INSERT INTO `user_log` VALUES ('363', 'doLogin', '[Ljava.lang.Object;@62e48bd5', '2015-06-28');
INSERT INTO `user_log` VALUES ('364', 'doLogin', '[Ljava.lang.Object;@6f8f31f6', '2015-06-28');
INSERT INTO `user_log` VALUES ('365', 'doLogin', '[Ljava.lang.Object;@66090cca', '2015-06-28');
INSERT INTO `user_log` VALUES ('366', 'doLogin', '[Ljava.lang.Object;@326d14e2', '2015-06-28');
INSERT INTO `user_log` VALUES ('367', 'doLogin', '[Ljava.lang.Object;@e86c122', '2015-06-28');
INSERT INTO `user_log` VALUES ('368', 'doLogin', '[Ljava.lang.Object;@4f7a2b5c', '2015-06-28');
INSERT INTO `user_log` VALUES ('369', 'doLogin', '[Ljava.lang.Object;@4ac453ad', '2015-06-28');
INSERT INTO `user_log` VALUES ('370', 'doLogin', '[Ljava.lang.Object;@1a438c25', '2015-06-28');
INSERT INTO `user_log` VALUES ('371', 'doLogin', '[Ljava.lang.Object;@665785f3', '2015-06-28');
INSERT INTO `user_log` VALUES ('372', 'doLogin', '[Ljava.lang.Object;@4121a0a', '2015-06-28');
INSERT INTO `user_log` VALUES ('373', 'doLogin', '[Ljava.lang.Object;@12df01ef', '2015-06-28');
INSERT INTO `user_log` VALUES ('374', 'doLogin', '[Ljava.lang.Object;@60a877e9', '2015-06-28');
INSERT INTO `user_log` VALUES ('375', 'doLogin', '[Ljava.lang.Object;@5a5a1f5e', '2015-06-28');
INSERT INTO `user_log` VALUES ('376', 'doLogin', '[Ljava.lang.Object;@7f762a87', '2015-06-28');
INSERT INTO `user_log` VALUES ('377', 'doLogin', '[Ljava.lang.Object;@55ed3f0b', '2015-06-28');
INSERT INTO `user_log` VALUES ('378', 'doLogin', '[Ljava.lang.Object;@7781f9a0', '2015-06-28');
INSERT INTO `user_log` VALUES ('379', 'doLogin', '[Ljava.lang.Object;@351acbea', '2015-06-28');
INSERT INTO `user_log` VALUES ('380', 'doLogin', '[Ljava.lang.Object;@4d543f6f', '2015-06-28');
INSERT INTO `user_log` VALUES ('381', 'doLogin', '[Ljava.lang.Object;@3fc79cc', '2015-06-28');
INSERT INTO `user_log` VALUES ('382', 'doLogin', '[Ljava.lang.Object;@76aea23d', '2015-06-28');
INSERT INTO `user_log` VALUES ('383', 'doLogin', '[Ljava.lang.Object;@45ed32ee', '2015-06-28');
INSERT INTO `user_log` VALUES ('384', 'doLogin', '[Ljava.lang.Object;@a2cec89', '2015-06-28');
INSERT INTO `user_log` VALUES ('385', 'doLogin', '[Ljava.lang.Object;@40f82932', '2015-06-28');
INSERT INTO `user_log` VALUES ('386', 'doLogin', '[Ljava.lang.Object;@64708d5a', '2015-06-28');
INSERT INTO `user_log` VALUES ('387', 'doLogin', '[Ljava.lang.Object;@7da3b667', '2015-06-28');
INSERT INTO `user_log` VALUES ('388', 'doLogin', '[Ljava.lang.Object;@7010e604', '2015-06-28');
INSERT INTO `user_log` VALUES ('389', 'doLogin', '[Ljava.lang.Object;@357671df', '2015-06-28');
INSERT INTO `user_log` VALUES ('390', 'doLogin', '[Ljava.lang.Object;@125a86c1', '2015-06-28');
INSERT INTO `user_log` VALUES ('391', 'doLogin', '[Ljava.lang.Object;@b2139ef', '2015-06-28');
INSERT INTO `user_log` VALUES ('392', 'doLogin', '[Ljava.lang.Object;@1809e56', '2015-06-28');
INSERT INTO `user_log` VALUES ('393', 'doLogin', '[Ljava.lang.Object;@67fec267', '2015-06-28');
INSERT INTO `user_log` VALUES ('394', 'doLogin', '[Ljava.lang.Object;@aca2ddb', '2015-06-28');
INSERT INTO `user_log` VALUES ('395', 'doLogin', '[Ljava.lang.Object;@5ccb71f5', '2015-06-28');
INSERT INTO `user_log` VALUES ('396', 'doLogin', '[Ljava.lang.Object;@19c2e2b0', '2015-06-28');
INSERT INTO `user_log` VALUES ('397', 'doLogin', '[Ljava.lang.Object;@257abb7c', '2015-06-28');
INSERT INTO `user_log` VALUES ('398', 'doLogin', '[Ljava.lang.Object;@3a25cee6', '2015-06-28');
INSERT INTO `user_log` VALUES ('399', 'doLogin', '[Ljava.lang.Object;@39d4f0d8', '2015-06-28');
INSERT INTO `user_log` VALUES ('400', 'doLogin', '[Ljava.lang.Object;@20919b4e', '2015-06-28');
INSERT INTO `user_log` VALUES ('401', 'doLogin', '[Ljava.lang.Object;@4438ab5c', '2015-06-28');
INSERT INTO `user_log` VALUES ('402', 'doLogin', '[Ljava.lang.Object;@10c9b19d', '2015-06-28');
INSERT INTO `user_log` VALUES ('403', 'doLogin', '[Ljava.lang.Object;@7515f89a', '2015-06-28');
INSERT INTO `user_log` VALUES ('404', 'doLogin', '[Ljava.lang.Object;@6962794d', '2015-06-28');
INSERT INTO `user_log` VALUES ('405', 'doLogin', '[Ljava.lang.Object;@68a43004', '2015-06-28');
INSERT INTO `user_log` VALUES ('406', 'doLogin', '[Ljava.lang.Object;@e5c7e17', '2015-06-28');
INSERT INTO `user_log` VALUES ('407', 'doLogin', '[Ljava.lang.Object;@16386e42', '2015-06-28');
INSERT INTO `user_log` VALUES ('408', 'doLogin', '[Ljava.lang.Object;@1350751c', '2015-06-28');
INSERT INTO `user_log` VALUES ('409', 'doLogin', '[Ljava.lang.Object;@5fd02924', '2015-06-28');
INSERT INTO `user_log` VALUES ('410', 'doLogin', '[Ljava.lang.Object;@31771aa1', '2015-06-28');
INSERT INTO `user_log` VALUES ('411', 'doLogin', '[Ljava.lang.Object;@6aab3cba', '2015-06-28');
INSERT INTO `user_log` VALUES ('412', 'doLogin', '[Ljava.lang.Object;@60a49e7', '2015-06-28');
INSERT INTO `user_log` VALUES ('413', 'doLogin', '[Ljava.lang.Object;@60cac1a0', '2015-06-28');
INSERT INTO `user_log` VALUES ('414', 'doLogin', '[Ljava.lang.Object;@2b0efc41', '2015-06-28');
INSERT INTO `user_log` VALUES ('415', 'doLogin', '[Ljava.lang.Object;@7ecadb3b', '2015-06-28');
INSERT INTO `user_log` VALUES ('416', 'doLogin', '[Ljava.lang.Object;@30f347ce', '2015-06-28');
INSERT INTO `user_log` VALUES ('417', 'doLogin', '[Ljava.lang.Object;@314a449f', '2015-06-28');
INSERT INTO `user_log` VALUES ('418', 'detailMe', '[Ljava.lang.Object;@35d259c0', '2015-06-28');
INSERT INTO `user_log` VALUES ('419', 'doLogin', '[Ljava.lang.Object;@3f1ea2e9', '2015-06-28');
INSERT INTO `user_log` VALUES ('420', 'detailMe', '[Ljava.lang.Object;@5460fa10', '2015-06-28');
INSERT INTO `user_log` VALUES ('421', 'doLogin', '[Ljava.lang.Object;@b63833d', '2015-06-28');
INSERT INTO `user_log` VALUES ('422', 'doLogin', '[Ljava.lang.Object;@26ca372a', '2015-06-28');
INSERT INTO `user_log` VALUES ('423', 'doLogin', '[Ljava.lang.Object;@31668444', '2015-06-28');
INSERT INTO `user_log` VALUES ('424', 'doLogin', '[Ljava.lang.Object;@2e751595', '2015-06-28');
INSERT INTO `user_log` VALUES ('425', 'doLogin', '[Ljava.lang.Object;@6c81ea9a', '2015-06-28');
INSERT INTO `user_log` VALUES ('426', 'detailMe', '[Ljava.lang.Object;@17057c25', '2015-06-28');
INSERT INTO `user_log` VALUES ('427', 'doLogin', '[Ljava.lang.Object;@54fdcd95', '2015-06-28');
INSERT INTO `user_log` VALUES ('428', 'doLogin', '[Ljava.lang.Object;@ff36af4', '2015-06-28');
INSERT INTO `user_log` VALUES ('429', 'detailMe', '[Ljava.lang.Object;@6ced5ed8', '2015-06-28');
INSERT INTO `user_log` VALUES ('430', 'doLogin', '[Ljava.lang.Object;@6d3d4c10', '2015-06-28');
INSERT INTO `user_log` VALUES ('431', 'doLogin', '[Ljava.lang.Object;@577c76cd', '2015-06-28');
INSERT INTO `user_log` VALUES ('432', 'doLogin', '[Ljava.lang.Object;@52f5a615', '2015-06-28');
INSERT INTO `user_log` VALUES ('433', 'doLogin', '[Ljava.lang.Object;@633f6110', '2015-06-28');
INSERT INTO `user_log` VALUES ('434', 'doLogin', '[Ljava.lang.Object;@7739df61', '2015-06-28');
INSERT INTO `user_log` VALUES ('435', 'doLogin', '[Ljava.lang.Object;@48f2ad21', '2015-06-28');
INSERT INTO `user_log` VALUES ('436', 'doLogin', '[Ljava.lang.Object;@d374f1c', '2015-06-28');

-- ----------------------------
-- Table structure for `user_organization`
-- ----------------------------
DROP TABLE IF EXISTS `user_organization`;
CREATE TABLE `user_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `organizationid` int(11) NOT NULL,
  `isadmin` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `organizationid` (`organizationid`),
  CONSTRAINT `user_organization_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `user_organization_ibfk_2` FOREIGN KEY (`organizationid`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_organization
-- ----------------------------
INSERT INTO `user_organization` VALUES ('25', '3', '13', '1');
INSERT INTO `user_organization` VALUES ('27', '5', '13', '0');
INSERT INTO `user_organization` VALUES ('28', '3', '14', '1');
INSERT INTO `user_organization` VALUES ('29', '3', '15', '1');
INSERT INTO `user_organization` VALUES ('30', '5', '14', '0');

-- ----------------------------
-- Table structure for `user_status`
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `values` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES ('1', '正常');
INSERT INTO `user_status` VALUES ('2', '异常');
