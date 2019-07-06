-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 12:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuzzyahpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_insentif`
--

CREATE TABLE `t_insentif` (
  `Id` int(5) NOT NULL,
  `nilai_insentif` double NOT NULL,
  `range_pringkat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_master_alternatif`
--

CREATE TABLE `t_master_alternatif` (
  `Id` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `tmp_tinggal` varchar(50) NOT NULL,
  `nilai_bobot_akhir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_alternatif`
--

INSERT INTO `t_master_alternatif` (`Id`, `Description`, `tmp_tinggal`, `nilai_bobot_akhir`) VALUES
(1, 'SANCOKO', 'SURABAYA', 0),
(2, 'NANANG', 'SURABAYA', 0),
(3, 'LILIA ANGGUN', 'SURABAYA', 0),
(4, 'PAMUNGKAS', 'SURABAYA', 0),
(5, 'NOVIANTO', 'SURABAYA', 0),
(6, 'NIKMATUS', 'SURABAYA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_master_himpunan_linguistik`
--

CREATE TABLE `t_master_himpunan_linguistik` (
  `Id` int(11) NOT NULL,
  `nilai` double NOT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_himpunan_linguistik`
--

INSERT INTO `t_master_himpunan_linguistik` (`Id`, `nilai`, `Deskripsi`) VALUES
(1, 9, 'Mutlak sangat penting dari'),
(2, 8, 'Mendekati mutlak dari'),
(3, 7, 'Sangat penting dari'),
(4, 6, 'Mendekati sangat penting dari'),
(5, 5, 'Lebih penting dari'),
(6, 4, 'Mendekati lebih penting dari'),
(7, 3, 'Sedikit lebih penting dari'),
(8, 2, 'Mendekati sedikit lebih penting dari'),
(9, 1, 'Sama penting dengan'),
(10, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(11, 0.333, '1 bagi sedikit lebih penting dari'),
(12, 0.25, '1 bagi mendekati lebih penting dari'),
(13, 0.2, '1 bagi lebih penting dari'),
(14, 0.167, '1 bagi mendekati sangat penting dari'),
(15, 0.143, '1 bagi sangat penting dari'),
(16, 0.125, '1 bagi mendekati mutlak dari'),
(17, 0.1, '1 bagi mutlak sangat penting');

-- --------------------------------------------------------

--
-- Table structure for table `t_master_kriteria`
--

CREATE TABLE `t_master_kriteria` (
  `Id` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `nilai_target` double NOT NULL,
  `nilai_bobot_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_kriteria`
--

INSERT INTO `t_master_kriteria` (`Id`, `Description`, `nilai_target`, `nilai_bobot_akhir`) VALUES
(1, 'Kedisiplinan', 24, 0),
(2, 'Penjualan', 200000000, 0),
(3, 'Stock Keeping Unit', 7, 0),
(4, 'Aktif Outlet', 280, 0),
(5, 'Effective Call', 500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_master_skala_fuzzy`
--

CREATE TABLE `t_master_skala_fuzzy` (
  `Id` int(11) NOT NULL,
  `Value` double(255,0) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `IdLinguistik` int(11) DEFAULT NULL,
  `Low` double(255,0) DEFAULT NULL,
  `Medium` double(255,0) DEFAULT NULL,
  `Up` double(255,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_skala_fuzzy`
--

INSERT INTO `t_master_skala_fuzzy` (`Id`, `Value`, `Keterangan`, `IdLinguistik`, `Low`, `Medium`, `Up`) VALUES
(1, 1, 'TFN', 1, 1, 1, 1),
(2, 2, 'TFN', 2, 2, NULL, NULL),
(3, 3, 'TFN', 3, 2, NULL, NULL),
(4, 4, 'TFN', 4, 1, NULL, NULL),
(5, 5, 'TFN', 5, NULL, NULL, NULL),
(6, 6, 'TFN', 6, NULL, NULL, NULL),
(7, 7, 'TFN', 7, NULL, NULL, NULL),
(8, 8, 'TFN', 8, NULL, NULL, NULL),
(9, 9, 'TFN', 9, NULL, NULL, NULL),
(10, 1, 'REC', 1, NULL, NULL, NULL),
(11, 2, 'REC', 2, NULL, NULL, NULL),
(12, 3, 'REC', 3, NULL, NULL, NULL),
(13, 4, 'REC', 4, NULL, NULL, NULL),
(14, 5, 'REC', 5, NULL, NULL, NULL),
(15, 6, 'REC', 6, NULL, NULL, NULL),
(16, 7, 'REC', 7, NULL, NULL, NULL),
(17, 8, 'REC', 8, NULL, NULL, NULL),
(18, 9, 'REC', 9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_alternatif`
--

CREATE TABLE `t_nilai_alternatif` (
  `id` int(5) NOT NULL,
  `IdAlternatif` varchar(5) NOT NULL,
  `IdKriteria` varchar(5) NOT NULL,
  `pencapaian` double NOT NULL,
  `nilai_pencapaian` double NOT NULL,
  `nilai_bobot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_alternatif`
--

INSERT INTO `t_nilai_alternatif` (`id`, `IdAlternatif`, `IdKriteria`, `pencapaian`, `nilai_pencapaian`, `nilai_bobot`) VALUES
(1, '1', '1', 23, 0.958, 8),
(2, '2', '1', 24, 1, 9),
(3, '3', '1', 21, 0.875, 7),
(4, '4', '1', 24, 1, 9),
(5, '5', '1', 24, 1, 9),
(6, '6', '1', 24, 1, 9),
(7, '1', '2', 177000000, 0.885, 7),
(8, '2', '2', 194000000, 0.97, 8),
(9, '3', '2', 148000000, 0.74, 6),
(10, '4', '2', 173000000, 0.865, 7),
(11, '5', '2', 167000000, 0.835, 7),
(12, '6', '2', 181000000, 0.905, 8),
(13, '1', '3', 4, 0.571, 0),
(14, '2', '3', 5, 0.714, 6),
(15, '3', '3', 6, 0.857, 7),
(16, '4', '3', 4, 0.571, 0),
(17, '5', '3', 4, 0.571, 0),
(18, '6', '3', 5, 0.714, 6),
(19, '1', '4', 277, 0.989, 8),
(20, '2', '4', 264, 0.942, 8),
(21, '3', '4', 263, 0.939, 8),
(22, '4', '4', 259, 0.925, 8),
(23, '5', '4', 270, 0.964, 8),
(24, '6', '4', 222, 0.792, 6),
(25, '1', '5', 467, 0.934, 8),
(26, '2', '5', 459, 0.918, 8),
(27, '3', '5', 440, 0.88, 7),
(28, '4', '5', 488, 0.976, 8),
(29, '5', '5', 474, 0.948, 8),
(30, '6', '5', 469, 0.938, 8);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_kriteria`
--

CREATE TABLE `t_nilai_kriteria` (
  `Id` int(11) NOT NULL,
  `IdKriteria1` varchar(255) DEFAULT NULL,
  `IdKriteria2` varchar(255) DEFAULT NULL,
  `nilai_bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_kriteria`
--

INSERT INTO `t_nilai_kriteria` (`Id`, `IdKriteria1`, `IdKriteria2`, `nilai_bobot_kriteria`) VALUES
(1, '1', '1', 1),
(2, '2', '1', 0.2),
(3, '3', '1', 0.33),
(4, '4', '1', 1),
(5, '5', '1', 0.2),
(6, '1', '2', 5),
(7, '2', '2', 1),
(8, '3', '2', 2),
(9, '4', '2', 5),
(10, '5', '2', 0.5),
(11, '1', '3', 3),
(12, '2', '3', 0.5),
(13, '3', '3', 1),
(14, '4', '3', 3),
(15, '5', '3', 0.5),
(16, '1', '4', 3),
(17, '2', '4', 0.2),
(18, '3', '4', 0.33),
(19, '4', '4', 1),
(20, '5', '4', 0.2),
(21, '1', '5', 5),
(22, '2', '5', 2),
(23, '3', '5', 2),
(24, '4', '5', 5),
(25, '5', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_kriteria_tfn`
--

CREATE TABLE `t_nilai_kriteria_tfn` (
  `id` int(5) NOT NULL,
  `IdKriteria1` varchar(20) NOT NULL,
  `IdKriteria2` varchar(20) NOT NULL,
  `tfn` varchar(5) NOT NULL,
  `nilai_bobot_tfn` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_kriteria_tfn`
--

INSERT INTO `t_nilai_kriteria_tfn` (`id`, `IdKriteria1`, `IdKriteria2`, `tfn`, `nilai_bobot_tfn`) VALUES
(1, '1', '1', 'L', 1),
(2, '2', '1', 'L', 0.33),
(3, '3', '1', 'L', 0.5),
(4, '4', '1', 'L', 1),
(5, '5', '1', 'L', 0.33),
(6, '1', '1', 'M', 1),
(7, '2', '1', 'M', 0.4),
(8, '3', '1', 'M', 0.66),
(9, '4', '1', 'M', 1),
(10, '5', '1', 'M', 0.4),
(11, '1', '1', 'U', 1),
(12, '2', '1', 'U', 0.5),
(13, '3', '1', 'U', 1),
(14, '4', '1', 'U', 1),
(15, '5', '1', 'U', 0.5),
(16, '1', '2', 'L', 2),
(17, '2', '2', 'L', 1),
(18, '3', '2', 'L', 0.5),
(19, '4', '2', 'L', 2),
(20, '5', '2', 'L', 0.66),
(21, '1', '2', 'M', 2.5),
(22, '2', '2', 'M', 1),
(23, '3', '2', 'M', 1),
(24, '4', '2', 'M', 2.5),
(25, '5', '2', 'M', 1),
(26, '1', '2', 'U', 3),
(27, '2', '2', 'U', 1),
(28, '3', '2', 'U', 1.5),
(29, '4', '2', 'U', 3),
(30, '5', '2', 'U', 2),
(31, '1', '3', 'L', 1),
(32, '2', '3', 'L', 0.66),
(33, '3', '3', 'L', 1),
(34, '4', '3', 'L', 1),
(35, '5', '3', 'L', 0.66),
(36, '1', '3', 'M', 1.5),
(37, '2', '3', 'M', 1),
(38, '3', '3', 'M', 1),
(39, '4', '3', 'M', 1.5),
(40, '5', '3', 'M', 1),
(41, '1', '3', 'U', 2),
(42, '2', '3', 'U', 2),
(43, '3', '3', 'U', 1),
(44, '4', '3', 'U', 2),
(45, '5', '3', 'U', 2),
(46, '1', '4', 'L', 1),
(47, '2', '4', 'L', 0.33),
(48, '3', '4', 'L', 0.5),
(49, '4', '4', 'L', 1),
(50, '5', '4', 'L', 0.33),
(51, '1', '4', 'M', 1),
(52, '2', '4', 'M', 0.4),
(53, '3', '4', 'M', 0.66),
(54, '4', '4', 'M', 1),
(55, '5', '4', 'M', 0.4),
(56, '1', '4', 'U', 1),
(57, '2', '4', 'U', 0.5),
(58, '3', '4', 'U', 1),
(59, '4', '4', 'U', 1),
(60, '5', '4', 'U', 0.5),
(61, '1', '5', 'L', 2),
(62, '2', '5', 'L', 0.5),
(63, '3', '5', 'L', 0.5),
(64, '4', '5', 'L', 2),
(65, '5', '5', 'L', 1),
(66, '1', '5', 'M', 2.5),
(67, '2', '5', 'M', 1),
(68, '3', '5', 'M', 1),
(69, '4', '5', 'M', 2.5),
(70, '5', '5', 'M', 1),
(71, '1', '5', 'U', 3),
(72, '2', '5', 'U', 1.5),
(73, '3', '5', 'U', 1.5),
(74, '4', '5', 'U', 3),
(75, '5', '5', 'U', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_insentif`
--
ALTER TABLE `t_insentif`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_master_alternatif`
--
ALTER TABLE `t_master_alternatif`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_master_himpunan_linguistik`
--
ALTER TABLE `t_master_himpunan_linguistik`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_master_kriteria`
--
ALTER TABLE `t_master_kriteria`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_master_skala_fuzzy`
--
ALTER TABLE `t_master_skala_fuzzy`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_nilai_alternatif`
--
ALTER TABLE `t_nilai_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai_kriteria`
--
ALTER TABLE `t_nilai_kriteria`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_nilai_kriteria_tfn`
--
ALTER TABLE `t_nilai_kriteria_tfn`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_insentif`
--
ALTER TABLE `t_insentif`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_master_alternatif`
--
ALTER TABLE `t_master_alternatif`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_master_himpunan_linguistik`
--
ALTER TABLE `t_master_himpunan_linguistik`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_master_kriteria`
--
ALTER TABLE `t_master_kriteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_master_skala_fuzzy`
--
ALTER TABLE `t_master_skala_fuzzy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_nilai_alternatif`
--
ALTER TABLE `t_nilai_alternatif`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_nilai_kriteria`
--
ALTER TABLE `t_nilai_kriteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `t_nilai_kriteria_tfn`
--
ALTER TABLE `t_nilai_kriteria_tfn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
