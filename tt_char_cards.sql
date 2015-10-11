/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:03:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_char_cards`
-- ----------------------------
DROP TABLE IF EXISTS `tt_char_cards`;
CREATE TABLE `tt_char_cards` (
  `ID` bigint(55) NOT NULL AUTO_INCREMENT,
  `charid` bigint(21) DEFAULT '0',
  `cardid` int(4) DEFAULT '0',
  `quantity` int(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_char_cards
-- ----------------------------
