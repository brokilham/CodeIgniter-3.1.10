/*
 Navicat Premium Data Transfer

 Source Server         : mysql_local
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : fuzzyahpdb

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 24/07/2019 10:30:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_master_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `t_master_alternatif`;
CREATE TABLE `t_master_alternatif`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tmp_tinggal` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai_bobot_akhir` double NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_master_alternatif
-- ----------------------------
INSERT INTO `t_master_alternatif` VALUES (1, 'Sancoko Adi Wahyono St', 'Surabaya', 0);
INSERT INTO `t_master_alternatif` VALUES (2, 'Mochamad Nanang Khosim', 'Surabaya', 0);
INSERT INTO `t_master_alternatif` VALUES (3, 'Finesty Lilia Anggun Maharani', 'Surabaya', 0);
INSERT INTO `t_master_alternatif` VALUES (4, 'Pamungkas Bantur Purbaya', 'Surabaya', 0);
INSERT INTO `t_master_alternatif` VALUES (5, 'Muhamad Novianto Rahman', 'Surabaya', 0);
INSERT INTO `t_master_alternatif` VALUES (6, 'Rizky Nikmatus Soumi Amalia', 'Surabaya', 0);

-- ----------------------------
-- Table structure for t_master_himpunan_linguistik
-- ----------------------------
DROP TABLE IF EXISTS `t_master_himpunan_linguistik`;
CREATE TABLE `t_master_himpunan_linguistik`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nilai` double NOT NULL,
  `Deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Low` double NULL DEFAULT NULL,
  `Medium` double NULL DEFAULT NULL,
  `Up` double NULL DEFAULT NULL,
  `Keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_master_himpunan_linguistik
-- ----------------------------
INSERT INTO `t_master_himpunan_linguistik` VALUES (1, 9, 'Mutlak sangat penting', 4, 4.5, 4.5, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (2, 8, 'Mendekati mutlak', 3.5, 4, 4.5, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (3, 7, 'Sangat penting', 3, 3.5, 4, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (4, 6, 'Mendekati sangat penting', 2.5, 3, 3.5, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (5, 5, 'Lebih penting', 2, 2.5, 3, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (6, 4, 'Mendekati lebih penting', 1.5, 2, 2.5, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (7, 3, 'Sedikit lebih penting', 1, 1.5, 2, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (8, 2, 'Mendekati sedikit lebih penting', 0.5, 1, 1.5, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (9, 1, 'Sama penting', 1, 1, 1, 'intensitas');
INSERT INTO `t_master_himpunan_linguistik` VALUES (10, 0.5, 'Tidak mendekati sedikit lebih penting', 0.667, 1, 2, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (11, 0.333, 'Tidak sedikit lebih penting', 0.5, 0.667, 1, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (12, 0.25, 'Tidak mendekati lebih penting', 0.4, 0.5, 0.667, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (13, 0.2, 'Tidak lebih penting', 0.333, 0.4, 0.5, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (14, 0.167, 'Tidak mendekati sangat penting', 0.286, 0.333, 0.4, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (15, 0.143, 'Tidak sangat penting', 0.25, 0.286, 0.333, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (16, 0.125, 'Tidak mendekati mutlak', 0.222, 0.25, 0.286, 'kebalikan');
INSERT INTO `t_master_himpunan_linguistik` VALUES (17, 0.1, 'Tidak mutlak sangat penting', NULL, NULL, NULL, 'kebalikan');

-- ----------------------------
-- Table structure for t_master_insentif
-- ----------------------------
DROP TABLE IF EXISTS `t_master_insentif`;
CREATE TABLE `t_master_insentif`  (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `nilai_insentif` double NOT NULL,
  `range_pringkat` int(5) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_master_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_master_kriteria`;
CREATE TABLE `t_master_kriteria`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `NilaiTarget` double NOT NULL,
  `NilaiBobotAkhir` double NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_master_kriteria
-- ----------------------------
INSERT INTO `t_master_kriteria` VALUES (1, 'Kedisiplinan', 24, 0.185);
INSERT INTO `t_master_kriteria` VALUES (2, 'Penjualan', 200000000, 0.034);
INSERT INTO `t_master_kriteria` VALUES (3, 'Stock Keeping Unit', 7, 0.169);
INSERT INTO `t_master_kriteria` VALUES (4, 'Aktif Outlet', 280, 0.282);
INSERT INTO `t_master_kriteria` VALUES (5, 'Effective Call', 500, 0.327);

-- ----------------------------
-- Table structure for t_nilai_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_alternatif`;
CREATE TABLE `t_nilai_alternatif`  (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `IdAlternatif` int(5) NOT NULL,
  `IdAlternatif2` int(5) NOT NULL,
  `IdKriteria` int(5) NOT NULL,
  `Pencapaian` double NOT NULL,
  `NilaiPencapaian` double NOT NULL,
  `NilaiBobot` double NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_nilai_alternatif
-- ----------------------------
INSERT INTO `t_nilai_alternatif` VALUES (1, 1, 1, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (2, 2, 1, 1, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (3, 3, 1, 1, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (4, 4, 1, 1, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (5, 5, 1, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (6, 6, 1, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (7, 1, 2, 1, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (8, 2, 2, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (9, 3, 2, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (10, 4, 2, 1, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (11, 5, 2, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (12, 6, 2, 1, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (13, 1, 3, 1, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (14, 2, 3, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (15, 3, 3, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (16, 4, 3, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (17, 5, 3, 1, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (18, 6, 3, 1, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (19, 1, 4, 1, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (20, 2, 4, 1, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (21, 3, 4, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (22, 4, 4, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (23, 5, 4, 1, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (24, 6, 4, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (25, 1, 5, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (26, 2, 5, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (27, 3, 5, 1, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (28, 4, 5, 1, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (29, 5, 5, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (30, 6, 5, 1, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (31, 1, 6, 1, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (32, 2, 6, 1, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (33, 3, 6, 1, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (34, 4, 6, 1, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (35, 5, 6, 1, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (36, 6, 6, 1, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (37, 1, 1, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (38, 2, 1, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (39, 3, 1, 2, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (40, 4, 1, 2, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (41, 5, 1, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (42, 6, 1, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (43, 1, 2, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (44, 2, 2, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (45, 3, 2, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (46, 4, 2, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (47, 5, 2, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (48, 6, 2, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (49, 1, 3, 2, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (50, 2, 3, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (51, 3, 3, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (52, 4, 3, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (53, 5, 3, 2, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (54, 6, 3, 2, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (55, 1, 4, 2, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (56, 2, 4, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (57, 3, 4, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (58, 4, 4, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (59, 5, 4, 2, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (60, 6, 4, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (61, 1, 5, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (62, 2, 5, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (63, 3, 5, 2, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (64, 4, 5, 2, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (65, 5, 5, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (66, 6, 5, 2, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (67, 1, 6, 2, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (68, 2, 6, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (69, 3, 6, 2, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (70, 4, 6, 2, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (71, 5, 6, 2, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (72, 6, 6, 2, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (73, 1, 1, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (74, 2, 1, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (75, 3, 1, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (76, 4, 1, 3, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (77, 5, 1, 3, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (78, 6, 1, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (79, 1, 2, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (80, 2, 2, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (81, 3, 2, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (82, 4, 2, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (83, 5, 2, 3, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (84, 6, 2, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (85, 1, 3, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (86, 2, 3, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (87, 3, 3, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (88, 4, 3, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (89, 5, 3, 3, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (90, 6, 3, 3, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (91, 1, 4, 3, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (92, 2, 4, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (93, 3, 4, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (94, 4, 4, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (95, 5, 4, 3, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (96, 6, 4, 3, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (97, 1, 5, 3, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (98, 2, 5, 3, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (99, 3, 5, 3, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (100, 4, 5, 3, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (101, 5, 5, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (102, 6, 5, 3, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (103, 1, 6, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (104, 2, 6, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (105, 3, 6, 3, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (106, 4, 6, 3, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (107, 5, 6, 3, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (108, 6, 6, 3, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (109, 1, 1, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (110, 2, 1, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (111, 3, 1, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (112, 4, 1, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (113, 5, 1, 4, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (114, 6, 1, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (115, 1, 2, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (116, 2, 2, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (117, 3, 2, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (118, 4, 2, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (119, 5, 2, 4, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (120, 6, 2, 4, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (121, 1, 3, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (122, 2, 3, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (123, 3, 3, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (124, 4, 3, 4, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (125, 5, 3, 4, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (126, 6, 3, 4, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (127, 1, 4, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (128, 2, 4, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (129, 3, 4, 4, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (130, 4, 4, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (131, 5, 4, 4, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (132, 6, 4, 4, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (133, 1, 5, 4, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (134, 2, 5, 4, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (135, 3, 5, 4, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (136, 4, 5, 4, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (137, 5, 5, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (138, 6, 5, 4, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (139, 1, 6, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (140, 2, 6, 4, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (141, 3, 6, 4, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (142, 4, 6, 4, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (143, 5, 6, 4, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (144, 6, 6, 4, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (145, 1, 1, 5, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (146, 2, 1, 5, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (147, 3, 1, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (148, 4, 1, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (149, 5, 1, 5, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (150, 6, 1, 5, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (151, 1, 2, 5, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (152, 2, 2, 5, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (153, 3, 2, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (154, 4, 2, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (155, 5, 2, 5, 0, 0, 0.5);
INSERT INTO `t_nilai_alternatif` VALUES (156, 6, 2, 5, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (157, 1, 3, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (158, 2, 3, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (159, 3, 3, 5, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (160, 4, 3, 5, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (161, 5, 3, 5, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (162, 6, 3, 5, 0, 0, 4);
INSERT INTO `t_nilai_alternatif` VALUES (163, 1, 4, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (164, 2, 4, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (165, 3, 4, 5, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (166, 4, 4, 5, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (167, 5, 4, 5, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (168, 6, 4, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (169, 1, 5, 5, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (170, 2, 5, 5, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (171, 3, 5, 5, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (172, 4, 5, 5, 0, 0, 5);
INSERT INTO `t_nilai_alternatif` VALUES (173, 5, 5, 5, 0, 0, 1);
INSERT INTO `t_nilai_alternatif` VALUES (174, 6, 5, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (175, 1, 6, 5, 0, 0, 2);
INSERT INTO `t_nilai_alternatif` VALUES (176, 2, 6, 5, 0, 0, 0.2);
INSERT INTO `t_nilai_alternatif` VALUES (177, 3, 6, 5, 0, 0, 0.25);
INSERT INTO `t_nilai_alternatif` VALUES (178, 4, 6, 5, 0, 0, 3);
INSERT INTO `t_nilai_alternatif` VALUES (179, 5, 6, 5, 0, 0, 0.333);
INSERT INTO `t_nilai_alternatif` VALUES (180, 6, 6, 5, 0, 0, 1);

-- ----------------------------
-- Table structure for t_nilai_alternatif_copy
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_alternatif_copy`;
CREATE TABLE `t_nilai_alternatif_copy`  (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `IdAlternatif` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `IdAlternatif2` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `IdKriteria` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Pencapaian` double NOT NULL,
  `NilaiPencapaian` double NOT NULL,
  `NilaiBobot` double NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_nilai_alternatif_copy
-- ----------------------------
INSERT INTO `t_nilai_alternatif_copy` VALUES (1, '1', '', '1', 23, 0.958, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (2, '2', '', '1', 24, 1, 9);
INSERT INTO `t_nilai_alternatif_copy` VALUES (3, '3', '', '1', 21, 0.875, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (4, '4', '', '1', 24, 1, 9);
INSERT INTO `t_nilai_alternatif_copy` VALUES (5, '5', '', '1', 24, 1, 9);
INSERT INTO `t_nilai_alternatif_copy` VALUES (6, '6', '', '1', 24, 1, 9);
INSERT INTO `t_nilai_alternatif_copy` VALUES (7, '1', '', '2', 177000000, 0.885, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (8, '2', '', '2', 194000000, 0.97, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (9, '3', '', '2', 148000000, 0.74, 6);
INSERT INTO `t_nilai_alternatif_copy` VALUES (10, '4', '', '2', 173000000, 0.865, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (11, '5', '', '2', 167000000, 0.835, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (12, '6', '', '2', 181000000, 0.905, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (13, '1', '', '3', 4, 0.571, 4);
INSERT INTO `t_nilai_alternatif_copy` VALUES (14, '2', '', '3', 5, 0.714, 6);
INSERT INTO `t_nilai_alternatif_copy` VALUES (15, '3', '', '3', 6, 0.857, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (16, '4', '', '3', 4, 0.571, 4);
INSERT INTO `t_nilai_alternatif_copy` VALUES (17, '5', '', '3', 4, 0.571, 4);
INSERT INTO `t_nilai_alternatif_copy` VALUES (18, '6', '', '3', 5, 0.714, 6);
INSERT INTO `t_nilai_alternatif_copy` VALUES (19, '1', '', '4', 277, 0.989, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (20, '2', '', '4', 264, 0.942, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (21, '3', '', '4', 263, 0.939, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (22, '4', '', '4', 259, 0.925, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (23, '5', '', '4', 270, 0.964, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (24, '6', '', '4', 222, 0.792, 6);
INSERT INTO `t_nilai_alternatif_copy` VALUES (25, '1', '', '5', 467, 0.934, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (26, '2', '', '5', 459, 0.918, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (27, '3', '', '5', 440, 0.88, 7);
INSERT INTO `t_nilai_alternatif_copy` VALUES (28, '4', '', '5', 488, 0.976, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (29, '5', '', '5', 474, 0.948, 8);
INSERT INTO `t_nilai_alternatif_copy` VALUES (30, '6', '', '5', 469, 0.938, 8);

-- ----------------------------
-- Table structure for t_nilai_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_kriteria`;
CREATE TABLE `t_nilai_kriteria`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdKriteria1` int(5) NULL DEFAULT NULL,
  `IdKriteria2` int(5) NULL DEFAULT NULL,
  `NilaiBobotKriteria` double NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_nilai_kriteria
-- ----------------------------
INSERT INTO `t_nilai_kriteria` VALUES (1, 1, 1, 1);
INSERT INTO `t_nilai_kriteria` VALUES (2, 2, 1, 3);
INSERT INTO `t_nilai_kriteria` VALUES (3, 3, 1, 2);
INSERT INTO `t_nilai_kriteria` VALUES (4, 4, 1, 0.333);
INSERT INTO `t_nilai_kriteria` VALUES (5, 5, 1, 0.333);
INSERT INTO `t_nilai_kriteria` VALUES (6, 1, 2, 0.333);
INSERT INTO `t_nilai_kriteria` VALUES (7, 2, 2, 1);
INSERT INTO `t_nilai_kriteria` VALUES (8, 3, 2, 0.25);
INSERT INTO `t_nilai_kriteria` VALUES (9, 4, 2, 0.2);
INSERT INTO `t_nilai_kriteria` VALUES (10, 5, 2, 0.25);
INSERT INTO `t_nilai_kriteria` VALUES (11, 1, 3, 0.5);
INSERT INTO `t_nilai_kriteria` VALUES (12, 2, 3, 4);
INSERT INTO `t_nilai_kriteria` VALUES (13, 3, 3, 1);
INSERT INTO `t_nilai_kriteria` VALUES (14, 4, 3, 0.25);
INSERT INTO `t_nilai_kriteria` VALUES (15, 5, 3, 0.333);
INSERT INTO `t_nilai_kriteria` VALUES (16, 1, 4, 3);
INSERT INTO `t_nilai_kriteria` VALUES (17, 2, 4, 5);
INSERT INTO `t_nilai_kriteria` VALUES (18, 3, 4, 4);
INSERT INTO `t_nilai_kriteria` VALUES (19, 4, 4, 1);
INSERT INTO `t_nilai_kriteria` VALUES (20, 5, 4, 0.333);
INSERT INTO `t_nilai_kriteria` VALUES (21, 1, 5, 3);
INSERT INTO `t_nilai_kriteria` VALUES (22, 2, 5, 4);
INSERT INTO `t_nilai_kriteria` VALUES (23, 3, 5, 3);
INSERT INTO `t_nilai_kriteria` VALUES (24, 4, 5, 3);
INSERT INTO `t_nilai_kriteria` VALUES (25, 5, 5, 1);

-- ----------------------------
-- Table structure for t_nilai_kriteria_tfn
-- ----------------------------
DROP TABLE IF EXISTS `t_nilai_kriteria_tfn`;
CREATE TABLE `t_nilai_kriteria_tfn`  (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `IdKriteria1` int(5) NOT NULL,
  `IdKriteria2` int(5) NOT NULL,
  `Tfn` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NilaiBobotTfn` double NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_nilai_kriteria_tfn
-- ----------------------------
INSERT INTO `t_nilai_kriteria_tfn` VALUES (1, 1, 1, 'L', 0);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (2, 2, 1, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (3, 3, 1, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (4, 4, 1, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (5, 5, 1, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (6, 1, 1, 'M', 0);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (7, 2, 1, 'M', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (8, 3, 1, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (9, 4, 1, 'M', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (10, 5, 1, 'M', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (11, 1, 1, 'U', 0);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (12, 2, 1, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (13, 3, 1, 'U', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (14, 4, 1, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (15, 5, 1, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (16, 1, 2, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (17, 2, 2, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (18, 3, 2, 'L', 0.4);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (19, 4, 2, 'L', 0.333);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (20, 5, 2, 'L', 0.4);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (21, 1, 2, 'M', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (22, 2, 2, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (23, 3, 2, 'M', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (24, 4, 2, 'M', 0.4);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (25, 5, 2, 'M', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (26, 1, 2, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (27, 2, 2, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (28, 3, 2, 'U', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (29, 4, 2, 'U', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (30, 5, 2, 'U', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (31, 1, 3, 'L', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (32, 2, 3, 'L', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (33, 3, 3, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (34, 4, 3, 'L', 0.4);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (35, 5, 3, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (36, 1, 3, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (37, 2, 3, 'M', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (38, 3, 3, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (39, 4, 3, 'M', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (40, 5, 3, 'M', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (41, 1, 3, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (42, 2, 3, 'U', 2.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (43, 3, 3, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (44, 4, 3, 'U', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (45, 5, 3, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (46, 1, 4, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (47, 2, 4, 'L', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (48, 3, 4, 'L', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (49, 4, 4, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (50, 5, 4, 'L', 0.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (51, 1, 4, 'M', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (52, 2, 4, 'M', 2.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (53, 3, 4, 'M', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (54, 4, 4, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (55, 5, 4, 'M', 0.666);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (56, 1, 4, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (57, 2, 4, 'U', 3);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (58, 3, 4, 'U', 2.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (59, 4, 4, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (60, 5, 4, 'U', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (61, 1, 5, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (62, 2, 5, 'L', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (63, 3, 5, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (64, 4, 5, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (65, 5, 5, 'L', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (66, 1, 5, 'M', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (67, 2, 5, 'M', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (68, 3, 5, 'M', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (69, 4, 5, 'M', 1.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (70, 5, 5, 'M', 1);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (71, 1, 5, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (72, 2, 5, 'U', 2.5);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (73, 3, 5, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (74, 4, 5, 'U', 2);
INSERT INTO `t_nilai_kriteria_tfn` VALUES (75, 5, 5, 'U', 1);

-- ----------------------------
-- View structure for view_jml_baris_kriteria
-- ----------------------------
DROP VIEW IF EXISTS `view_jml_baris_kriteria`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_jml_baris_kriteria` AS select `t_nilai_kriteria_tfn`.`IdKriteria1` AS `IdKriteria1`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `L`,0 AS `M`,0 AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'L') group by `t_nilai_kriteria_tfn`.`IdKriteria1`,`t_nilai_kriteria_tfn`.`Tfn` union all select `t_nilai_kriteria_tfn`.`IdKriteria1` AS `IdKriteria1`,0 AS `L`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `M`,0 AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'M') group by `t_nilai_kriteria_tfn`.`IdKriteria1`,`t_nilai_kriteria_tfn`.`Tfn` union all select `t_nilai_kriteria_tfn`.`IdKriteria1` AS `IdKriteria1`,0 AS `L`,0 AS `M`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'U') group by `t_nilai_kriteria_tfn`.`IdKriteria1` ;

-- ----------------------------
-- View structure for view_jml_baris_kriteria_by_description
-- ----------------------------
DROP VIEW IF EXISTS `view_jml_baris_kriteria_by_description`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_jml_baris_kriteria_by_description` AS select `view_jml_baris_kriteria`.`IdKriteria1` AS `IdKriteria1`,`t_master_kriteria`.`Description` AS `Description`,sum(`view_jml_baris_kriteria`.`L`) AS `L`,sum(`view_jml_baris_kriteria`.`M`) AS `M`,sum(`view_jml_baris_kriteria`.`U`) AS `U`,'RELASI NORMALISASI' AS `KET` from (`view_jml_baris_kriteria` left join `t_master_kriteria` on((`view_jml_baris_kriteria`.`IdKriteria1` = `t_master_kriteria`.`Id`))) group by `view_jml_baris_kriteria`.`IdKriteria1` ;

-- ----------------------------
-- View structure for view_jml_tfn
-- ----------------------------
DROP VIEW IF EXISTS `view_jml_tfn`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_jml_tfn` AS select 'total' AS `Keterangan`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `L`,0 AS `M`,0 AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'L') group by `t_nilai_kriteria_tfn`.`Tfn` union all select 'total' AS `Keterangan`,0 AS `L`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `M`,0 AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'M') group by `t_nilai_kriteria_tfn`.`Tfn` union all select 'total' AS `Keterangan`,0 AS `L`,0 AS `M`,sum(`t_nilai_kriteria_tfn`.`NilaiBobotTfn`) AS `U` from `t_nilai_kriteria_tfn` where (`t_nilai_kriteria_tfn`.`Tfn` = 'U') group by `t_nilai_kriteria_tfn`.`Tfn` ;

-- ----------------------------
-- View structure for view_jml_tfn_by_description
-- ----------------------------
DROP VIEW IF EXISTS `view_jml_tfn_by_description`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_jml_tfn_by_description` AS select sum(`view_jml_tfn`.`L`) AS `L`,sum(`view_jml_tfn`.`M`) AS `M`,sum(`view_jml_tfn`.`U`) AS `U` from `view_jml_tfn` group by `view_jml_tfn`.`Keterangan` ;

-- ----------------------------
-- View structure for view_nilai_sintesis
-- ----------------------------
DROP VIEW IF EXISTS `view_nilai_sintesis`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_nilai_sintesis` AS select `view_jml_baris_kriteria_by_description`.`IdKriteria1` AS `IdKriteria1`,`view_jml_baris_kriteria_by_description`.`Description` AS `Description`,(`view_normalisasi_jml_tfn`.`L` * `view_jml_baris_kriteria_by_description`.`L`) AS `L_sintesis`,(`view_normalisasi_jml_tfn`.`M` * `view_jml_baris_kriteria_by_description`.`M`) AS `M_sintesis`,(`view_normalisasi_jml_tfn`.`U` * `view_jml_baris_kriteria_by_description`.`U`) AS `U_sintesis` from (`view_jml_baris_kriteria_by_description` left join `view_normalisasi_jml_tfn` on((`view_jml_baris_kriteria_by_description`.`KET` = `view_normalisasi_jml_tfn`.`KET`))) ;

-- ----------------------------
-- View structure for view_normalisasi_jml_tfn
-- ----------------------------
DROP VIEW IF EXISTS `view_normalisasi_jml_tfn`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_normalisasi_jml_tfn` AS select 'RELASI NORMALISASI' AS `KET`,(1 / `view_jml_tfn_by_description`.`L`) AS `U`,(1 / `view_jml_tfn_by_description`.`M`) AS `M`,(1 / `view_jml_tfn_by_description`.`U`) AS `L` from `view_jml_tfn_by_description` ;

SET FOREIGN_KEY_CHECKS = 1;
