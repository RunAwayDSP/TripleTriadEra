/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:03:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_match_result`
-- ----------------------------
DROP TABLE IF EXISTS `tt_match_result`;
CREATE TABLE `tt_match_result` (
  `matchid` bigint(55) NOT NULL DEFAULT '0',
  `win` int(1) DEFAULT '0',
  `loss` int(1) DEFAULT '0',
  `draw` int(1) DEFAULT '0',
  `prize` int(4) DEFAULT '0',
  `score1` int(1) DEFAULT '0',
  `score2` int(1) DEFAULT '0',
  PRIMARY KEY (`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_match_result
-- ----------------------------
