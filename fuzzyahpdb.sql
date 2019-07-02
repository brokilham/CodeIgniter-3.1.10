/*
Navicat MySQL Data Transfer

Source Server         : mysql_localhost
Source Server Version : 100130
Source Host           : localhost:3306
Source Database       : fuzzyahpdb

Target Server Type    : MYSQL
Target Server Version : 100130
File Encoding         : 65001

Date: 2019-07-02 19:16:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_master_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `t_master_alternatif`;
CREATE TABLE `t_master_alternatif` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_alternatif
-- ----------------------------

-- ----------------------------
-- Table structure for t_master_himpunan_linguistik
-- ----------------------------
DROP TABLE IF EXISTS `t_master_himpunan_linguistik`;
CREATE TABLE `t_master_himpunan_linguistik` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_himpunan_linguistik
-- ----------------------------
INSERT INTO `t_master_himpunan_linguistik` VALUES ('1', 'Perbandingan elemen yang sama (Just Equal)	');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('2', 'Pertengahan (Intermediate)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('3', 'Elemen satu cukup penting dari yang lainnya (moderately important)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('4', 'Pertengahan (Intermediate) elemen satu lebih cukup penting dari yang lainnya)');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('5', 'Elemen satu kuat pentingnya dari yang lain (Strongly Important)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('6', 'Pertengahan (Intermediate)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('7', 'Elemen satu lebih kuat pentingnya dari yang lain (Very Strong)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('8', 'Pertengahan (Intermediate)							\r\n');
INSERT INTO `t_master_himpunan_linguistik` VALUES ('9', 'Elemen satu mutlak lebih penting dari yang lainnya (Extremely Strong)							\r\n');

-- ----------------------------
-- Table structure for t_master_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_master_kriteria`;
CREATE TABLE `t_master_kriteria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_kriteria
-- ----------------------------
INSERT INTO `t_master_kriteria` VALUES ('1', 'Kedisiplinan');
INSERT INTO `t_master_kriteria` VALUES ('2', 'Penjualan');
INSERT INTO `t_master_kriteria` VALUES ('3', 'Stock Keeping Unit');
INSERT INTO `t_master_kriteria` VALUES ('4', 'Aktif Outlet');
INSERT INTO `t_master_kriteria` VALUES ('5', 'Effective Call');

-- ----------------------------
-- Table structure for t_master_skala_fuzzy
-- ----------------------------
DROP TABLE IF EXISTS `t_master_skala_fuzzy`;
CREATE TABLE `t_master_skala_fuzzy` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Value` double(255,0) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `IdLinguistik` int(11) DEFAULT NULL,
  `Low` double(255,0) DEFAULT NULL,
  `Medium` double(255,0) DEFAULT NULL,
  `Up` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_skala_fuzzy
-- ----------------------------
INSERT INTO `t_master_skala_fuzzy` VALUES ('1', '1', 'TFN', '1', '1', '1', '1');
INSERT INTO `t_master_skala_fuzzy` VALUES ('2', '2', 'TFN', '2', '2', null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('3', '3', 'TFN', '3', '2', null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('4', '4', 'TFN', '4', '1', null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('5', '5', 'TFN', '5', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('6', '6', 'TFN', '6', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('7', '7', 'TFN', '7', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('8', '8', 'TFN', '8', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('9', '9', 'TFN', '9', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('10', '1', 'REC', '1', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('11', '2', 'REC', '2', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('12', '3', 'REC', '3', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('13', '4', 'REC', '4', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('14', '5', 'REC', '5', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('15', '6', 'REC', '6', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('16', '7', 'REC', '7', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('17', '8', 'REC', '8', null, null, null);
INSERT INTO `t_master_skala_fuzzy` VALUES ('18', '9', 'REC', '9', null, null, null);

-- ----------------------------
-- Table structure for t_nilai_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_kriteria`;
CREATE TABLE `t_nilai_kriteria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdKriteria1` varchar(255) DEFAULT NULL,
  `IdKriteria2` varchar(255) DEFAULT NULL,
  `IdTfn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_nilai_kriteria
-- ----------------------------
INSERT INTO `t_nilai_kriteria` VALUES ('42', '1', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('43', '2', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('44', '2', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('45', '1', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('46', '3', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('47', '3', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('48', '3', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('49', '1', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('50', '2', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('51', '4', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('52', '4', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('53', '4', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('54', '4', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('55', '1', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('56', '2', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('57', '3', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('58', '5', '1', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('59', '5', '2', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('60', '5', '3', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('61', '5', '4', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('62', '5', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('63', '1', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('64', '2', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('65', '3', '5', '5');
INSERT INTO `t_nilai_kriteria` VALUES ('66', '4', '5', '5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('3', 'admin', 'fcea920f7412b5da7be0cf42b8c93759');
