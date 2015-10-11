/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:04:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_matches`
-- ----------------------------
DROP TABLE IF EXISTS `tt_matches`;
CREATE TABLE `tt_matches` (
  `ID` bigint(55) NOT NULL AUTO_INCREMENT,
  `char1` bigint(21) DEFAULT '0',
  `char2` bigint(21) DEFAULT '0',
  `gain` int(2) DEFAULT '0',
  `rules` int(2) DEFAULT '0',
  `special` int(2) DEFAULT '0',
  `card1` int(4) DEFAULT '0',
  `card2` int(4) DEFAULT '0',
  `card3` int(4) DEFAULT '0',
  `card4` int(4) DEFAULT '0',
  `card5` int(4) DEFAULT '0',
  `card6` int(4) DEFAULT '0',
  `card7` int(4) DEFAULT '0',
  `card8` int(4) DEFAULT '0',
  `card9` int(4) DEFAULT '0',
  `card10` int(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tt_matches
-- ----------------------------
