/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:03:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_char_data`
-- ----------------------------
DROP TABLE IF EXISTS `tt_char_data`;
CREATE TABLE `tt_char_data` (
  `charid` bigint(21) DEFAULT '0',
  `Win` bigint(21) DEFAULT '0',
  `Loss` bigint(21) DEFAULT '0',
  `Draw` bigint(21) DEFAULT '0',
  `Cards_won` bigint(21) DEFAULT '0',
  `Cards_lost` bigint(21) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_char_data
-- ----------------------------
