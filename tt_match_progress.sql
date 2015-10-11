/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:03:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_match_progress`
-- ----------------------------
DROP TABLE IF EXISTS `tt_match_progress`;
CREATE TABLE `tt_match_progress` (
  `matchid` bigint(55) NOT NULL DEFAULT '0',
  `turn` int(1) DEFAULT '0',
  `slot1` int(4) DEFAULT '0',
  `slot2` int(4) DEFAULT '0',
  `slot3` int(4) DEFAULT '0',
  `slot4` int(4) DEFAULT '0',
  `slot5` int(4) DEFAULT '0',
  `slot6` int(4) DEFAULT '0',
  `slot7` int(4) DEFAULT '0',
  `slot8` int(4) DEFAULT '0',
  `slot9` int(4) DEFAULT '0',
  `control1` int(1) DEFAULT '0',
  `control2` int(1) DEFAULT '0',
  `control3` int(1) DEFAULT '0',
  `control4` int(1) DEFAULT '0',
  `control5` int(1) DEFAULT '0',
  `control6` int(1) DEFAULT '0',
  `control7` int(1) DEFAULT '0',
  `control8` int(1) DEFAULT '0',
  `control9` int(1) DEFAULT '0',
  PRIMARY KEY (`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_match_progress
-- ----------------------------
