/*
Navicat MySQL Data Transfer

Source Server         : mysql_localhost
Source Server Version : 100130
Source Host           : localhost:3306
Source Database       : fuzzyahpdb

Target Server Type    : MYSQL
Target Server Version : 100130
File Encoding         : 65001

Date: 2019-07-07 03:44:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_master_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `t_master_alternatif`;
CREATE TABLE `t_master_alternatif` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `tmp_tinggal` varchar(50) NOT NULL,
  `nilai_bobot_akhir` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_alternatif
-- ----------------------------
INSERT INTO `t_master_alternatif` VALUES ('1', 'SANCOKO', 'SURABAYA', '0');
INSERT INTO `t_master_alternatif` VALUES ('2', 'NANANG', 'SURABAYA', '0');
INSERT INTO `t_master_alternatif` VALUES ('3', 'LILIA ANGGUN', 'SURABAYA', '0');
INSERT INTO `t_master_alternatif` VALUES ('4', 'PAMUNGKAS', 'SURABAYA', '0');
INSERT INTO `t_master_alternatif` VALUES ('5', 'NOVIANTO', 'SURABAYA', '0');
INSERT INTO `t_master_alternatif` VALUES ('6', 'NIKMATUS', 'SURABAYA', '0');

-- ----------------------------
-- Table structure for t_master_himpunan_linguistik
-- ----------------------------
DROP TABLE IF EXISTS `t_master_himpunan_linguistik`;
CREATE TABLE `t_master_himpunan_linguistik` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nilai` double NOT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL,
  `Low` double(255,0) DEFAULT NULL,
  `Medium` double(255,0) DEFAULT NULL,
  `Up` double(255,0) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_himpunan_linguistik
-- ----------------------------
INSERT INTO `t_master_himpunan_linguistik` VALUES ('1', '9', 'Mutlak sangat penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('2', '8', 'Mendekati mutlak dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('3', '7', 'Sangat penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('4', '6', 'Mendekati sangat penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('5', '5', 'Lebih penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('6', '4', 'Mendekati lebih penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('7', '3', 'Sedikit lebih penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('8', '2', 'Mendekati sedikit lebih penting dari', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('9', '1', 'Sama penting dengan', null, null, null, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('10', '0.5', '1 bagi mendekati sedikit lebih penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('11', '0.333', '1 bagi sedikit lebih penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('12', '0.25', '1 bagi mendekati lebih penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('13', '0.2', '1 bagi lebih penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('14', '0.167', '1 bagi mendekati sangat penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('15', '0.143', '1 bagi sangat penting dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('16', '0.125', '1 bagi mendekati mutlak dari', null, null, null, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('17', '0.1', '1 bagi mutlak sangat penting', null, null, null, 'kebalikan');

-- ----------------------------
-- Table structure for t_master_insentif
-- ----------------------------
DROP TABLE IF EXISTS `t_master_insentif`;
CREATE TABLE `t_master_insentif` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `nilai_insentif` double NOT NULL,
  `range_pringkat` int(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_insentif
-- ----------------------------

-- ----------------------------
-- Table structure for t_master_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_master_kriteria`;
CREATE TABLE `t_master_kriteria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `nilai_target` double NOT NULL,
  `nilai_bobot_akhir` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_kriteria
-- ----------------------------
INSERT INTO `t_master_kriteria` VALUES ('1', 'Kedisiplinan', '24', '0');
INSERT INTO `t_master_kriteria` VALUES ('2', 'Penjualan', '200000000', '0');
INSERT INTO `t_master_kriteria` VALUES ('3', 'Stock Keeping Unit', '7', '0');
INSERT INTO `t_master_kriteria` VALUES ('4', 'Aktif Outlet', '280', '0');
INSERT INTO `t_master_kriteria` VALUES ('5', 'Effective Call', '500', '0');
INSERT INTO `t_master_kriteria` VALUES ('6', 'sdfds', '0', null);

-- ----------------------------
-- Table structure for t_nilai_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_alternatif`;
CREATE TABLE `t_nilai_alternatif` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `IdAlternatif` varchar(5) NOT NULL,
  `IdKriteria` varchar(5) NOT NULL,
  `pencapaian` double NOT NULL,
  `nilai_pencapaian` double NOT NULL,
  `nilai_bobot` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_nilai_alternatif
-- ----------------------------
INSERT INTO `t_nilai_alternatif` VALUES ('1', '1', '1', '23', '0.958', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('2', '2', '1', '24', '1', '9');
INSERT INTO `t_nilai_alternatif` VALUES ('3', '3', '1', '21', '0.875', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('4', '4', '1', '24', '1', '9');
INSERT INTO `t_nilai_alternatif` VALUES ('5', '5', '1', '24', '1', '9');
INSERT INTO `t_nilai_alternatif` VALUES ('6', '6', '1', '24', '1', '9');
INSERT INTO `t_nilai_alternatif` VALUES ('7', '1', '2', '177000000', '0.885', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('8', '2', '2', '194000000', '0.97', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('9', '3', '2', '148000000', '0.74', '6');
INSERT INTO `t_nilai_alternatif` VALUES ('10', '4', '2', '173000000', '0.865', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('11', '5', '2', '167000000', '0.835', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('12', '6', '2', '181000000', '0.905', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('13', '1', '3', '4', '0.571', '0');
INSERT INTO `t_nilai_alternatif` VALUES ('14', '2', '3', '5', '0.714', '6');
INSERT INTO `t_nilai_alternatif` VALUES ('15', '3', '3', '6', '0.857', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('16', '4', '3', '4', '0.571', '0');
INSERT INTO `t_nilai_alternatif` VALUES ('17', '5', '3', '4', '0.571', '0');
INSERT INTO `t_nilai_alternatif` VALUES ('18', '6', '3', '5', '0.714', '6');
INSERT INTO `t_nilai_alternatif` VALUES ('19', '1', '4', '277', '0.989', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('20', '2', '4', '264', '0.942', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('21', '3', '4', '263', '0.939', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('22', '4', '4', '259', '0.925', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('23', '5', '4', '270', '0.964', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('24', '6', '4', '222', '0.792', '6');
INSERT INTO `t_nilai_alternatif` VALUES ('25', '1', '5', '467', '0.934', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('26', '2', '5', '459', '0.918', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('27', '3', '5', '440', '0.88', '7');
INSERT INTO `t_nilai_alternatif` VALUES ('28', '4', '5', '488', '0.976', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('29', '5', '5', '474', '0.948', '8');
INSERT INTO `t_nilai_alternatif` VALUES ('30', '6', '5', '469', '0.938', '8');

-- ----------------------------
-- Table structure for t_nilai_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_kriteria`;
CREATE TABLE `t_nilai_kriteria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdKriteria1` varchar(255) DEFAULT NULL,
  `IdKriteria2` varchar(255) DEFAULT NULL,
  `NilaiBobotKriteria` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_nilai_kriteria
-- ----------------------------
INSERT INTO `t_nilai_kriteria` VALUES ('1', '1', '1', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('2', '2', '1', '0.2');
INSERT INTO `t_nilai_kriteria` VALUES ('3', '3', '1', '0.33');
INSERT INTO `t_nilai_kriteria` VALUES ('4', '4', '1', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('5', '5', '1', '0.2');
INSERT INTO `t_nilai_kriteria` VALUES ('6', '1', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('7', '2', '2', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('8', '3', '2', '2');
INSERT INTO `t_nilai_kriteria` VALUES ('9', '4', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('10', '5', '2', '0.5');
INSERT INTO `t_nilai_kriteria` VALUES ('11', '1', '3', '3');
INSERT INTO `t_nilai_kriteria` VALUES ('12', '2', '3', '0.5');
INSERT INTO `t_nilai_kriteria` VALUES ('13', '3', '3', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('14', '4', '3', '3');
INSERT INTO `t_nilai_kriteria` VALUES ('15', '5', '3', '0.5');
INSERT INTO `t_nilai_kriteria` VALUES ('16', '1', '4', '3');
INSERT INTO `t_nilai_kriteria` VALUES ('17', '2', '4', '0.2');
INSERT INTO `t_nilai_kriteria` VALUES ('18', '3', '4', '0.33');
INSERT INTO `t_nilai_kriteria` VALUES ('19', '4', '4', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('20', '5', '4', '0.2');
INSERT INTO `t_nilai_kriteria` VALUES ('21', '1', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('22', '2', '5', '2');
INSERT INTO `t_nilai_kriteria` VALUES ('23', '3', '5', '2');
INSERT INTO `t_nilai_kriteria` VALUES ('24', '4', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('25', '5', '5', '1');
INSERT INTO `t_nilai_kriteria` VALUES ('26', '6', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('27', '6', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('28', '6', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('29', '6', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('30', '6', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('31', '6', '6', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('32', '1', '6', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('33', '2', '6', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('34', '3', '6', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('35', '4', '6', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('36', '5', '6', '5');

-- ----------------------------
-- Table structure for t_nilai_kriteria_tfn
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_kriteria_tfn`;
CREATE TABLE `t_nilai_kriteria_tfn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `IdKriteria1` varchar(20) NOT NULL,
  `IdKriteria2` varchar(20) NOT NULL,
  `tfn` varchar(5) NOT NULL,
  `nilai_bobot_tfn` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_nilai_kriteria_tfn
-- ----------------------------
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('1', '1', '1', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('2', '2', '1', 'L', '0.33');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('3', '3', '1', 'L', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('4', '4', '1', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('5', '5', '1', 'L', '0.33');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('6', '1', '1', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('7', '2', '1', 'M', '0.4');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('8', '3', '1', 'M', '0.66');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('9', '4', '1', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('10', '5', '1', 'M', '0.4');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('11', '1', '1', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('12', '2', '1', 'U', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('13', '3', '1', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('14', '4', '1', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('15', '5', '1', 'U', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('16', '1', '2', 'L', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('17', '2', '2', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('18', '3', '2', 'L', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('19', '4', '2', 'L', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('20', '5', '2', 'L', '0.66');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('21', '1', '2', 'M', '2.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('22', '2', '2', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('23', '3', '2', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('24', '4', '2', 'M', '2.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('25', '5', '2', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('26', '1', '2', 'U', '3');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('27', '2', '2', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('28', '3', '2', 'U', '1.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('29', '4', '2', 'U', '3');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('30', '5', '2', 'U', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('31', '1', '3', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('32', '2', '3', 'L', '0.66');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('33', '3', '3', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('34', '4', '3', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('35', '5', '3', 'L', '0.66');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('36', '1', '3', 'M', '1.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('37', '2', '3', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('38', '3', '3', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('39', '4', '3', 'M', '1.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('40', '5', '3', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('41', '1', '3', 'U', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('42', '2', '3', 'U', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('43', '3', '3', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('44', '4', '3', 'U', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('45', '5', '3', 'U', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('46', '1', '4', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('47', '2', '4', 'L', '0.33');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('48', '3', '4', 'L', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('49', '4', '4', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('50', '5', '4', 'L', '0.33');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('51', '1', '4', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('52', '2', '4', 'M', '0.4');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('53', '3', '4', 'M', '0.66');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('54', '4', '4', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('55', '5', '4', 'M', '0.4');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('56', '1', '4', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('57', '2', '4', 'U', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('58', '3', '4', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('59', '4', '4', 'U', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('60', '5', '4', 'U', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('61', '1', '5', 'L', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('62', '2', '5', 'L', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('63', '3', '5', 'L', '0.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('64', '4', '5', 'L', '2');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('65', '5', '5', 'L', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('66', '1', '5', 'M', '2.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('67', '2', '5', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('68', '3', '5', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('69', '4', '5', 'M', '2.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('70', '5', '5', 'M', '1');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('71', '1', '5', 'U', '3');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('72', '2', '5', 'U', '1.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('73', '3', '5', 'U', '1.5');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('74', '4', '5', 'U', '3');
INSERT INTO `t_nilai_kriteria_tfn` VALUES ('75', '5', '5', 'U', '1');
