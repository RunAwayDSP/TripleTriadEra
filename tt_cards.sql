/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-11 01:03:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tt_cards`
-- ----------------------------
DROP TABLE IF EXISTS `tt_cards`;
CREATE TABLE `tt_cards` (
  `ID` bigint(55) NOT NULL AUTO_INCREMENT,
  `name` char(55) DEFAULT '',
  `top` int(2) DEFAULT '1',
  `left` int(2) DEFAULT '1',
  `right` int(2) DEFAULT '1',
  `bottom` int(2) DEFAULT '1',
  `element` int(2) DEFAULT '0',
  `level` int(2) DEFAULT '1',
  `img` varchar(55) DEFAULT '001.png',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_cards
-- ----------------------------
INSERT INTO `tt_cards` VALUES ('1', 'Geezard', '1', '5', '4', '1', '0', '1', '001.png');
INSERT INTO `tt_cards` VALUES ('2', 'Funguar', '5', '3', '1', '1', '0', '1', '002.png');
INSERT INTO `tt_cards` VALUES ('3', 'Bite Bug', '1', '5', '3', '3', '0', '1', '003.png');
INSERT INTO `tt_cards` VALUES ('4', 'Red Bat', '6', '2', '1', '1', '0', '1', '004.png');
INSERT INTO `tt_cards` VALUES ('5', 'Blobra', '2', '5', '3', '1', '0', '1', '005.png');
INSERT INTO `tt_cards` VALUES ('6', 'Gayla', '2', '4', '1', '4', '6', '1', '006.png');
INSERT INTO `tt_cards` VALUES ('7', 'Gesper', '1', '1', '5', '4', '0', '1', '007.png');
INSERT INTO `tt_cards` VALUES ('8', 'Fastitocalon-F', '3', '1', '5', '2', '1', '1', '008.png');
INSERT INTO `tt_cards` VALUES ('9', 'Blood Soul', '2', '1', '1', '6', '0', '1', '009.png');
INSERT INTO `tt_cards` VALUES ('10', 'Caterchipillar', '4', '3', '2', '4', '0', '1', '010.png');
INSERT INTO `tt_cards` VALUES ('11', 'Cockatr4', '2', '6', '1', '2', '6', '1', '011.png');
INSERT INTO `tt_cards` VALUES ('12', 'Grat', '7', '1', '1', '3', '0', '2', '012.png');
INSERT INTO `tt_cards` VALUES ('13', 'Buel', '6', '3', '2', '2', '0', '2', '013.png');
INSERT INTO `tt_cards` VALUES ('14', 'Mesmerize', '5', '4', '3', '3', '0', '2', '014.png');
INSERT INTO `tt_cards` VALUES ('15', 'Glacial Eye', '6', '3', '1', '4', '4', '2', '015.png');
INSERT INTO `tt_cards` VALUES ('16', 'Belhelmel', '3', '3', '4', '5', '0', '2', '016.png');
INSERT INTO `tt_cards` VALUES ('17', 'Thrustaevis', '5', '5', '3', '2', '8', '2', '017.png');
INSERT INTO `tt_cards` VALUES ('18', 'Anacondaur', '5', '5', '1', '3', '5', '2', '018.png');
INSERT INTO `tt_cards` VALUES ('19', 'Creeps', '5', '2', '2', '5', '6', '2', '019.png');
INSERT INTO `tt_cards` VALUES ('20', 'Grendel', '4', '2', '4', '5', '6', '2', '020.png');
INSERT INTO `tt_cards` VALUES ('21', 'Jelleye', '3', '7', '2', '1', '0', '2', '021.png');
INSERT INTO `tt_cards` VALUES ('22', 'Grand Mantis', '5', '3', '2', '5', '0', '2', '022.png');
INSERT INTO `tt_cards` VALUES ('23', 'Forbidden', '6', '2', '6', '3', '0', '3', '023.png');
INSERT INTO `tt_cards` VALUES ('24', 'Armadodo', '6', '6', '3', '1', '1', '3', '024.png');
INSERT INTO `tt_cards` VALUES ('25', 'Tri-Face', '3', '5', '5', '5', '5', '3', '025.png');
INSERT INTO `tt_cards` VALUES ('26', 'Fastitocalon', '7', '3', '5', '1', '1', '3', '026.png');
INSERT INTO `tt_cards` VALUES ('27', 'Snow Lion', '7', '3', '1', '5', '4', '3', '027.png');
INSERT INTO `tt_cards` VALUES ('28', 'Ochu', '5', '3', '6', '3', '0', '3', '028.png');
INSERT INTO `tt_cards` VALUES ('29', 'SAM08G', '5', '4', '6', '2', '2', '3', '029.png');
INSERT INTO `tt_cards` VALUES ('30', 'Death Claw', '4', '2', '4', '7', '2', '3', '030.png');
INSERT INTO `tt_cards` VALUES ('31', 'Cactuar', '6', '3', '2', '6', '0', '3', '031.png');
INSERT INTO `tt_cards` VALUES ('32', 'Tonberry', '3', '4', '6', '4', '0', '3', '032.png');
INSERT INTO `tt_cards` VALUES ('33', 'Abyss Worm', '7', '5', '2', '3', '1', '3', '033.png');
INSERT INTO `tt_cards` VALUES ('34', 'Turtapod', '2', '7', '3', '6', '0', '4', '034.png');
INSERT INTO `tt_cards` VALUES ('35', 'Vysage', '6', '5', '5', '4', '0', '4', '035.png');
INSERT INTO `tt_cards` VALUES ('36', 'T-Rexaur', '4', '7', '6', '2', '0', '4', '036.png');
INSERT INTO `tt_cards` VALUES ('37', 'Bomb', '2', '3', '7', '6', '2', '4', '037.png');
INSERT INTO `tt_cards` VALUES ('38', 'Blitz', '1', '7', '6', '4', '6', '4', '038.png');
INSERT INTO `tt_cards` VALUES ('39', 'Wendigo', '7', '6', '3', '1', '0', '4', '039.png');
INSERT INTO `tt_cards` VALUES ('40', 'Torama', '7', '4', '4', '4', '0', '4', '040.png');
INSERT INTO `tt_cards` VALUES ('41', 'Imp', '3', '6', '7', '3', '0', '4', '041.png');
INSERT INTO `tt_cards` VALUES ('42', 'Blue Dragon', '6', '3', '2', '7', '5', '4', '042.png');
INSERT INTO `tt_cards` VALUES ('43', 'Adamantoise', '4', '6', '5', '5', '1', '4', '043.png');
INSERT INTO `tt_cards` VALUES ('44', 'Hexadragon', '7', '3', '5', '4', '2', '4', '044.png');
INSERT INTO `tt_cards` VALUES ('45', 'Iron Giant', '6', '5', '5', '6', '0', '5', '045.png');
INSERT INTO `tt_cards` VALUES ('46', 'Behemoth', '3', '7', '6', '5', '0', '5', '046.png');
INSERT INTO `tt_cards` VALUES ('47', 'Chimera', '7', '3', '6', '5', '7', '5', '047.png');
INSERT INTO `tt_cards` VALUES ('48', 'PuPu', '3', '1', '10', '2', '0', '5', '048.png');
INSERT INTO `tt_cards` VALUES ('49', 'Elastoid', '6', '7', '2', '6', '0', '5', '049.png');
INSERT INTO `tt_cards` VALUES ('50', 'GIM47N', '5', '4', '5', '7', '0', '5', '050.png');
INSERT INTO `tt_cards` VALUES ('51', 'Malboro', '7', '2', '7', '4', '5', '5', '051.png');
INSERT INTO `tt_cards` VALUES ('52', 'Ruby Dragon', '7', '4', '2', '7', '2', '5', '052.png');
INSERT INTO `tt_cards` VALUES ('53', 'Elnoyle', '5', '6', '3', '7', '0', '5', '053.png');
INSERT INTO `tt_cards` VALUES ('54', 'Tonberry King', '4', '4', '6', '7', '0', '5', '054.png');
INSERT INTO `tt_cards` VALUES ('55', 'Wedge & Biggs', '6', '7', '6', '2', '0', '5', '055.png');
INSERT INTO `tt_cards` VALUES ('56', 'Fujin Raijin', '2', '4', '8', '8', '0', '6', '056.png');
INSERT INTO `tt_cards` VALUES ('57', 'Elvoret', '7', '4', '8', '3', '8', '6', '057.png');
INSERT INTO `tt_cards` VALUES ('58', 'X-ATM092', '4', '3', '8', '7', '0', '6', '058.png');
INSERT INTO `tt_cards` VALUES ('59', 'Granaldo', '7', '5', '2', '8', '0', '6', '059.png');
INSERT INTO `tt_cards` VALUES ('60', 'Gerogero', '1', '3', '8', '8', '5', '6', '060.png');
INSERT INTO `tt_cards` VALUES ('61', 'Iguion', '8', '2', '2', '8', '0', '6', '061.png');
INSERT INTO `tt_cards` VALUES ('62', 'Abadon', '6', '5', '8', '4', '0', '6', '062.png');
INSERT INTO `tt_cards` VALUES ('63', 'Trauma', '4', '6', '8', '5', '0', '6', '063.png');
INSERT INTO `tt_cards` VALUES ('64', 'Oilboyle', '1', '8', '8', '4', '0', '6', '064.png');
INSERT INTO `tt_cards` VALUES ('65', 'Shumi', '6', '4', '5', '8', '0', '6', '065.png');
INSERT INTO `tt_cards` VALUES ('66', 'Krysta', '7', '1', '5', '8', '0', '6', '066.png');
INSERT INTO `tt_cards` VALUES ('67', 'Propagator', '8', '8', '4', '4', '0', '7', '067.png');
INSERT INTO `tt_cards` VALUES ('68', 'Jumbo Cactuar', '8', '4', '8', '4', '0', '7', '068.png');
INSERT INTO `tt_cards` VALUES ('69', 'Tri-Point', '8', '8', '5', '2', '6', '7', '069.png');
INSERT INTO `tt_cards` VALUES ('70', 'Gargantua', '5', '8', '6', '6', '0', '7', '070.png');
INSERT INTO `tt_cards` VALUES ('71', 'Mobile Type 8', '8', '3', '6', '7', '0', '7', '071.png');
INSERT INTO `tt_cards` VALUES ('72', 'Sphinxara', '8', '8', '3', '5', '0', '7', '072.png');
INSERT INTO `tt_cards` VALUES ('73', 'Tiamat', '8', '4', '8', '5', '0', '7', '073.png');
INSERT INTO `tt_cards` VALUES ('74', 'BGH251F2', '5', '5', '7', '8', '0', '7', '074.png');
INSERT INTO `tt_cards` VALUES ('75', 'Red Giant', '6', '7', '8', '4', '0', '7', '075.png');
INSERT INTO `tt_cards` VALUES ('76', 'Catoblepas', '1', '7', '8', '7', '0', '7', '076.png');
INSERT INTO `tt_cards` VALUES ('77', 'Ultima Weapon', '7', '8', '7', '2', '0', '7', '077.png');
INSERT INTO `tt_cards` VALUES ('78', 'Chubby Chocobo', '4', '9', '4', '8', '0', '8', '078.png');
INSERT INTO `tt_cards` VALUES ('79', 'Angelo', '9', '3', '6', '7', '0', '8', '079.png');
INSERT INTO `tt_cards` VALUES ('80', 'Gilgamesh', '3', '6', '7', '9', '0', '8', '080.png');
INSERT INTO `tt_cards` VALUES ('81', 'MiniMog', '9', '2', '3', '9', '0', '8', '081.png');
INSERT INTO `tt_cards` VALUES ('82', 'Chicobo', '9', '4', '4', '8', '0', '8', '082.png');
INSERT INTO `tt_cards` VALUES ('83', 'Quezacotl', '2', '4', '9', '9', '6', '8', '083.png');
INSERT INTO `tt_cards` VALUES ('84', 'Shiva', '6', '9', '7', '4', '4', '8', '084.png');
INSERT INTO `tt_cards` VALUES ('85', 'Ifrit', '9', '8', '6', '2', '2', '8', '085.png');
INSERT INTO `tt_cards` VALUES ('86', 'Siren', '8', '2', '9', '6', '0', '8', '086.png');
INSERT INTO `tt_cards` VALUES ('87', 'Sacred', '5', '9', '1', '9', '1', '8', '087.png');
INSERT INTO `tt_cards` VALUES ('88', 'Minotaur', '9', '9', '5', '2', '1', '8', '088.png');
INSERT INTO `tt_cards` VALUES ('89', 'Carbuncle', '8', '4', '4', '10', '0', '9', '089.png');
INSERT INTO `tt_cards` VALUES ('90', 'Diablos', '5', '3', '10', '8', '0', '9', '090.png');
INSERT INTO `tt_cards` VALUES ('91', 'Leviathan', '7', '7', '10', '1', '7', '9', '091.png');
INSERT INTO `tt_cards` VALUES ('92', 'Odin', '8', '5', '10', '3', '0', '9', '092.png');
INSERT INTO `tt_cards` VALUES ('93', 'Pandemona', '10', '7', '1', '7', '8', '9', '093.png');
INSERT INTO `tt_cards` VALUES ('94', 'Cerberus', '7', '10', '4', '6', '0', '9', '094.png');
INSERT INTO `tt_cards` VALUES ('95', 'Alexander', '9', '2', '10', '4', '3', '9', '095.png');
INSERT INTO `tt_cards` VALUES ('96', 'Phoenix', '7', '10', '2', '7', '2', '9', '096.png');
INSERT INTO `tt_cards` VALUES ('97', 'Bahamut', '10', '6', '8', '2', '0', '9', '097.png');
INSERT INTO `tt_cards` VALUES ('98', 'Doomtrain', '3', '10', '1', '10', '5', '9', '098.png');
INSERT INTO `tt_cards` VALUES ('99', 'Eden', '4', '10', '4', '9', '0', '9', '099.png');
INSERT INTO `tt_cards` VALUES ('100', 'Ward', '10', '8', '7', '2', '0', '10', '100.png');
INSERT INTO `tt_cards` VALUES ('101', 'Kiros', '6', '10', '7', '6', '0', '10', '101.png');
INSERT INTO `tt_cards` VALUES ('102', 'Laguna', '5', '9', '10', '3', '0', '10', '102.png');
INSERT INTO `tt_cards` VALUES ('103', 'Selphie', '10', '4', '8', '6', '0', '10', '103.png');
INSERT INTO `tt_cards` VALUES ('104', 'Quistis', '9', '2', '6', '10', '0', '10', '104.png');
INSERT INTO `tt_cards` VALUES ('105', 'Irvine', '2', '10', '6', '9', '0', '10', '105.png');
INSERT INTO `tt_cards` VALUES ('106', 'Zell', '8', '6', '5', '10', '0', '10', '106.png');
INSERT INTO `tt_cards` VALUES ('107', 'Rinoa', '4', '10', '10', '2', '0', '10', '107.png');
INSERT INTO `tt_cards` VALUES ('108', 'Edea', '10', '3', '10', '3', '0', '10', '108.png');
INSERT INTO `tt_cards` VALUES ('109', 'Seifer', '6', '4', '9', '10', '0', '10', '109.png');
INSERT INTO `tt_cards` VALUES ('110', 'Squall', '10', '9', '4', '6', '0', '10', '110.png');
INSERT INTO `tt_cards` VALUES ('111', 'Random', '10', '10', '10', '9', '0', '9', '111.png');
INSERT INTO `tt_cards` VALUES ('112', 'Run Away', '10', '10', '10', '10', '0', '10', '112.png');
INSERT INTO `tt_cards` VALUES ('113', 'ChooChoo', '10', '10', '10', '8', '0', '8', '113.png');
INSERT INTO `tt_cards` VALUES ('114', 'Warp', '10', '10', '10', '7', '0', '7', '114.png');
