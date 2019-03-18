/*
Navicat MySQL Data Transfer

Source Server         : mine
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : db_cityinfo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-03-18 18:41:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_info
-- ----------------------------
DROP TABLE IF EXISTS `t_info`;
CREATE TABLE `t_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `content` text,
  `linkman` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `infoDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `payfor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_info
-- ----------------------------
INSERT INTO `t_info` VALUES ('22', '1', '招聘信息标题', '招聘信息内容', '明明1', '13255*****1', '888@8*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('23', '2', '培训信息标题', '培训信息内容', '明明2', '13255*****2', '888@8*.com', '2013-06-25 19:05:42', '0', '1');
INSERT INTO `t_info` VALUES ('24', '3', '房屋信息标题', '房屋信息内容', '明明3', '13255*****3', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('25', '4', '求购信息标题', '求购信息内容', '明明4', '13255*****4', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('26', '5', '招商引资标题', '招商引资内容', '明明5', '13255*****5', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('27', '6', '公寓信息标题', '公寓信息内容', '明明6', '13255*****6', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('28', '7', '求职信息标题', '求职信息内容', '明明7', '13255*****7', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('29', '8', '家教信息标题', '家教信息内容', '明明8', '13255*****8', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('30', '9', '车辆信息标题', '车辆信息内容', '明明9', '13255*****9', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('31', '10', '出售信息标题', '出售信息内容', '明明10', '13255****10', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('32', '11', '寻找启示标题', '寻找启示内容', '明明11', '13255****11', '888@8*.com', '2013-06-25 19:05:42', '1', '1');
INSERT INTO `t_info` VALUES ('34', '2', '发布房屋信息标题', '发布房屋信息内容', '芳芳2', '14444*****2', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('35', '3', '发布求购信息标题', '发布求购信息内容', '芳芳3', '14444*****3', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('36', '4', '发布招商引资标题', '发布招商引资内容', '芳芳4', '14444*****4', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('37', '5', '发布公寓信息标题', '发布公寓信息内容', '芳芳5', '14444*****5', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('38', '6', '发布求职信息标题', '发布求职信息内容', '芳芳6', '14444*****6', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('39', '7', '发布家教信息标题', '发布家教信息内容', '芳芳7', '14444*****7', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('40', '8', '发布车辆信息标题', '发布车辆信息内容', '芳芳8', '14444*****8', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('41', '9', '发布出售信息标题', '发布出售信息内容', '芳芳9', '14444*****9', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('42', '10', '发布寻找启示标题', '发布寻找启示内容', '芳芳10', '14444****10', '44@1*.com', '2013-06-25 19:05:42', '1', '0');
INSERT INTO `t_info` VALUES ('43', '11', '发布招聘信息标题', '发布招聘信息内容', '芳芳11', '14444****11', '44@1*.com', '2013-06-25 19:05:43', '1', '1');

-- ----------------------------
-- Table structure for t_infotype
-- ----------------------------
DROP TABLE IF EXISTS `t_infotype`;
CREATE TABLE `t_infotype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeSign` int(11) DEFAULT NULL,
  `typeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_infotype
-- ----------------------------
INSERT INTO `t_infotype` VALUES ('1', '1', '招聘信息');
INSERT INTO `t_infotype` VALUES ('2', '2', '培训信息');
INSERT INTO `t_infotype` VALUES ('3', '3', '房屋信息');
INSERT INTO `t_infotype` VALUES ('4', '4', '求购信息');
INSERT INTO `t_infotype` VALUES ('5', '5', '招商引资');
INSERT INTO `t_infotype` VALUES ('6', '6', '公寓信息');
INSERT INTO `t_infotype` VALUES ('7', '7', '求职信息');
INSERT INTO `t_infotype` VALUES ('8', '8', '家教信息');
INSERT INTO `t_infotype` VALUES ('9', '9', '车辆信息');
INSERT INTO `t_infotype` VALUES ('10', '10', '出售信息');
INSERT INTO `t_infotype` VALUES ('11', '11', '寻找启示');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'hyf', '123456');
