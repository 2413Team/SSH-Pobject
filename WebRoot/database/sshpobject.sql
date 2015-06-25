/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : sshpobject

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-25 16:28:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `values` varchar(100) NOT NULL,
  `setuserid` int(11) NOT NULL,
  `organizationid` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setuserid` (`setuserid`),
  KEY `organizationid` (`organizationid`),
  CONSTRAINT `liuyan_ibfk_1` FOREIGN KEY (`setuserid`) REFERENCES `user` (`id`),
  CONSTRAINT `liuyan_ibfk_2` FOREIGN KEY (`organizationid`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('3', '地球中文测试', '1', '2', '3', '2015-06-15');
INSERT INTO `organization` VALUES ('4', '地球村中文测试', '1', '2', '3', '2015-06-15');
INSERT INTO `organization` VALUES ('5', '地球村二号', '1', '1', '3', '2015-06-15');
INSERT INTO `organization` VALUES ('6', '天堂', '1', '2', '3', '2015-06-18');
INSERT INTO `organization` VALUES ('7', '地球村三号', '1', '2', '3', '2015-06-18');
INSERT INTO `organization` VALUES ('8', 'test', '1', '1', '5', '2015-06-23');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_request
-- ----------------------------
INSERT INTO `organization_request` VALUES ('1', '3', '3', '0');
INSERT INTO `organization_request` VALUES ('2', '5', '6', '1');
INSERT INTO `organization_request` VALUES ('4', '4', '7', '1');
INSERT INTO `organization_request` VALUES ('5', '5', '5', '1');
INSERT INTO `organization_request` VALUES ('6', '5', '7', '1');
INSERT INTO `organization_request` VALUES ('7', '4', '6', '1');
INSERT INTO `organization_request` VALUES ('8', '5', '6', '1');
INSERT INTO `organization_request` VALUES ('9', '5', '7', '1');
INSERT INTO `organization_request` VALUES ('10', '5', '7', '2');
INSERT INTO `organization_request` VALUES ('11', '5', '7', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shuoshuo
-- ----------------------------
INSERT INTO `shuoshuo` VALUES ('1', '这是我的第一条说说！', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('2', 'hello!world\r\n', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('3', 'hello!!!!', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('4', 'hello!!!', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('5', 'hello', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('6', 'heeafdsdf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('7', 'dkasfjklsdf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('8', 'hello!world!', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('9', 'helljasd f', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('10', 'dsfdasfdsf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('11', 'a\'s\'d\'f\'da\'s\'f', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('12', 'adsfadf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('13', 'test的说说', '5', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('14', 'admin的说说', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('15', 'asdfdasffsd', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('16', 'asdfdsf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('17', 'asdfdsaf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('18', '最后一条说说', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('19', '你好我是', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('20', '这是BDM的第一条说说！', '4', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('21', 'adsfdasf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('22', 'asdfdsaf', '3', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('23', '这是BDM的第二条说说', '4', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('24', '这是BDM的第三条说说！', '4', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('25', '这是BDM的第四条说说', '4', '2015-06-23');
INSERT INTO `shuoshuo` VALUES ('26', '今天天气不错', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('27', '今天天气不太好', '4', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('28', '是的', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('29', '这是我的第二条说说', '5', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('45', '连续第一条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('46', '连续第二条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('47', '连续第三条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('48', '再发一条 ', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('50', '发送一条说说', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('51', '发送', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('52', '再次发送', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('53', '再次发送', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('54', '很好', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('55', '不错', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('56', '连续第一条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('57', '连续第二条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('58', '连续第三条啊啊啊', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('59', '连续四条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('60', '第五条！', '4', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('61', '第六条！', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('62', '我来一条', '4', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('63', '连续第一条\r\n', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('64', '连续第二条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('65', '', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('66', '连续第一条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('67', '连续第二条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('68', '连续第三条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('69', '再来几条试试', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('70', '连续第二条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('71', '连续第三条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('72', 'ADMIN的一条\r\n', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('73', 'bdm的一条', '4', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('74', '连续一条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('75', '连续一条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('76', '连续两条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('77', '连续三条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('78', '连续第条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('79', '连续四条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('80', '连续五条', '3', '2015-06-24');
INSERT INTO `shuoshuo` VALUES ('81', '连续六条', '3', '2015-06-24');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
INSERT INTO `user` VALUES ('9', 'SYSTEM', 'superboy123', '校友网系统', 'FM', '2016-01-01', '1', '3', 'com.system', '12345678');

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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_organization
-- ----------------------------
INSERT INTO `user_organization` VALUES ('1', '3', '5', '1');
INSERT INTO `user_organization` VALUES ('2', '3', '6', '1');
INSERT INTO `user_organization` VALUES ('3', '3', '7', '1');
INSERT INTO `user_organization` VALUES ('4', '4', '7', '0');
INSERT INTO `user_organization` VALUES ('5', '5', '8', '1');
INSERT INTO `user_organization` VALUES ('11', '4', '7', '0');
INSERT INTO `user_organization` VALUES ('12', '5', '6', '0');
INSERT INTO `user_organization` VALUES ('13', '5', '5', '0');
INSERT INTO `user_organization` VALUES ('14', '5', '7', '0');
INSERT INTO `user_organization` VALUES ('15', '4', '6', '0');
INSERT INTO `user_organization` VALUES ('16', '5', '6', '0');
INSERT INTO `user_organization` VALUES ('17', '5', '7', '0');
INSERT INTO `user_organization` VALUES ('18', '5', '7', '0');

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
