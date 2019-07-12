-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2019 at 02:32 PM
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
(1, 'Sancoko Adi Wahyono St', 'Surabaya', 0),
(2, 'Mochamad Nanang Khosim', 'Surabaya', 0),
(3, 'Finesty Lilia Anggun Maharani', 'Surabaya', 0),
(4, 'Pamungkas Bantur Purbaya', 'Surabaya', 0),
(5, 'Muhamad Novianto Rahman', 'Surabaya', 0),
(6, 'Rizky Nikmatus Soumi Amalia', 'Surabaya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_master_himpunan_linguistik`
--

CREATE TABLE `t_master_himpunan_linguistik` (
  `Id` int(11) NOT NULL,
  `Nilai` double NOT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL,
  `Low` double(255,0) DEFAULT NULL,
  `Medium` double(255,0) DEFAULT NULL,
  `Up` double(255,0) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_himpunan_linguistik`
--

INSERT INTO `t_master_himpunan_linguistik` (`Id`, `Nilai`, `Deskripsi`, `Low`, `Medium`, `Up`, `Keterangan`) VALUES
(1, 9, 'Mutlak sangat penting dari', NULL, NULL, NULL, 'intensitas'),
(2, 8, 'Mendekati mutlak dari', NULL, NULL, NULL, 'intensitas'),
(3, 7, 'Sangat penting dari', NULL, NULL, NULL, 'intensitas'),
(4, 6, 'Mendekati sangat penting dari', NULL, NULL, NULL, 'intensitas'),
(5, 5, 'Lebih penting dari', NULL, NULL, NULL, 'intensitas'),
(6, 4, 'Mendekati lebih penting dari', NULL, NULL, NULL, 'intensitas'),
(7, 3, 'Sedikit lebih penting dari', NULL, NULL, NULL, 'intensitas'),
(8, 2, 'Mendekati sedikit lebih penting dari', NULL, NULL, NULL, 'intensitas'),
(9, 1, 'Sama penting dengan', NULL, NULL, NULL, 'intensitas'),
(10, 0.5, '1 bagi mendekati sedikit lebih penting dari', NULL, NULL, NULL, 'kebalikan'),
(11, 0.333, '1 bagi sedikit lebih penting dari', NULL, NULL, NULL, 'kebalikan'),
(12, 0.25, '1 bagi mendekati lebih penting dari', NULL, NULL, NULL, 'kebalikan'),
(13, 0.2, '1 bagi lebih penting dari', NULL, NULL, NULL, 'kebalikan'),
(14, 0.167, '1 bagi mendekati sangat penting dari', NULL, NULL, NULL, 'kebalikan'),
(15, 0.143, '1 bagi sangat penting dari', NULL, NULL, NULL, 'kebalikan'),
(16, 0.125, '1 bagi mendekati mutlak dari', NULL, NULL, NULL, 'kebalikan'),
(17, 0.1, '1 bagi mutlak sangat penting', NULL, NULL, NULL, 'kebalikan');

-- --------------------------------------------------------

--
-- Table structure for table `t_master_insentif`
--

CREATE TABLE `t_master_insentif` (
  `Id` int(5) NOT NULL,
  `nilai_insentif` double NOT NULL,
  `range_pringkat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_master_kriteria`
--

CREATE TABLE `t_master_kriteria` (
  `Id` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `NilaiTarget` double NOT NULL,
  `NilaiBobotAkhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_master_kriteria`
--

INSERT INTO `t_master_kriteria` (`Id`, `Description`, `NilaiTarget`, `NilaiBobotAkhir`) VALUES
(1, 'Kedisiplinan', 24, 0.185),
(2, 'Penjualan', 200000000, 0.034),
(3, 'Stock Keeping Unit', 7, 0.169),
(4, 'Aktif Outlet', 280, 0.282),
(5, 'Effective Call', 500, 0.327);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_alternatif`
--

CREATE TABLE `t_nilai_alternatif` (
  `Id` int(5) NOT NULL,
  `IdAlternatif` varchar(5) NOT NULL,
  `IdKriteria` varchar(5) NOT NULL,
  `Pencapaian` double NOT NULL,
  `NilaiPencapaian` double NOT NULL,
  `NilaiBobot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_alternatif`
--

INSERT INTO `t_nilai_alternatif` (`Id`, `IdAlternatif`, `IdKriteria`, `Pencapaian`, `NilaiPencapaian`, `NilaiBobot`) VALUES
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
(13, '1', '3', 4, 0.571, 4),
(14, '2', '3', 5, 0.714, 6),
(15, '3', '3', 6, 0.857, 7),
(16, '4', '3', 4, 0.571, 4),
(17, '5', '3', 4, 0.571, 4),
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
  `NilaiBobotKriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_kriteria`
--

INSERT INTO `t_nilai_kriteria` (`Id`, `IdKriteria1`, `IdKriteria2`, `NilaiBobotKriteria`) VALUES
(1, '1', '1', 1),
(2, '2', '1', 3),
(3, '3', '1', 2),
(4, '4', '1', 0.333),
(5, '5', '1', 0.333),
(6, '1', '2', 0.333),
(7, '2', '2', 1),
(8, '3', '2', 0.25),
(9, '4', '2', 0.2),
(10, '5', '2', 0.25),
(11, '1', '3', 0.5),
(12, '2', '3', 4),
(13, '3', '3', 1),
(14, '4', '3', 0.25),
(15, '5', '3', 0.333),
(16, '1', '4', 3),
(17, '2', '4', 5),
(18, '3', '4', 4),
(19, '4', '4', 1),
(20, '5', '4', 0.333),
(21, '1', '5', 3),
(22, '2', '5', 4),
(23, '3', '5', 3),
(24, '4', '5', 3),
(25, '5', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_kriteria_tfn`
--

CREATE TABLE `t_nilai_kriteria_tfn` (
  `Id` int(5) NOT NULL,
  `IdKriteria1` varchar(20) NOT NULL,
  `IdKriteria2` varchar(20) NOT NULL,
  `Tfn` varchar(5) NOT NULL,
  `NilaiBobotTfn` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_kriteria_tfn`
--

INSERT INTO `t_nilai_kriteria_tfn` (`Id`, `IdKriteria1`, `IdKriteria2`, `Tfn`, `NilaiBobotTfn`) VALUES
(1, '1', '1', 'L', 1),
(2, '2', '1', 'L', 1),
(3, '3', '1', 'L', 0.5),
(4, '4', '1', 'L', 0.5),
(5, '5', '1', 'L', 0.5),
(6, '1', '1', 'M', 1),
(7, '2', '1', 'M', 1.5),
(8, '3', '1', 'M', 1),
(9, '4', '1', 'M', 0.667),
(10, '5', '1', 'M', 0.667),
(11, '1', '1', 'U', 1),
(12, '2', '1', 'U', 2),
(13, '3', '1', 'U', 1.5),
(14, '4', '1', 'U', 1),
(15, '5', '1', 'U', 1),
(16, '1', '2', 'L', 0.5),
(17, '2', '2', 'L', 1),
(18, '3', '2', 'L', 0.4),
(19, '4', '2', 'L', 0.333),
(20, '5', '2', 'L', 0.4),
(21, '1', '2', 'M', 0.667),
(22, '2', '2', 'M', 1),
(23, '3', '2', 'M', 0.5),
(24, '4', '2', 'M', 0.4),
(25, '5', '2', 'M', 0.5),
(26, '1', '2', 'U', 1),
(27, '2', '2', 'U', 1),
(28, '3', '2', 'U', 0.667),
(29, '4', '2', 'U', 0.5),
(30, '5', '2', 'U', 0.667),
(31, '1', '3', 'L', 0.667),
(32, '2', '3', 'L', 1.5),
(33, '3', '3', 'L', 1),
(34, '4', '3', 'L', 0.4),
(35, '5', '3', 'L', 0.5),
(36, '1', '3', 'M', 1),
(37, '2', '3', 'M', 2),
(38, '3', '3', 'M', 1),
(39, '4', '3', 'M', 0.5),
(40, '5', '3', 'M', 0.667),
(41, '1', '3', 'U', 2),
(42, '2', '3', 'U', 2.5),
(43, '3', '3', 'U', 1),
(44, '4', '3', 'U', 0.667),
(45, '5', '3', 'U', 1),
(46, '1', '4', 'L', 1),
(47, '2', '4', 'L', 2),
(48, '3', '4', 'L', 1.5),
(49, '4', '4', 'L', 1),
(50, '5', '4', 'L', 0.5),
(51, '1', '4', 'M', 1.5),
(52, '2', '4', 'M', 2.5),
(53, '3', '4', 'M', 2),
(54, '4', '4', 'M', 1),
(55, '5', '4', 'M', 0.667),
(56, '1', '4', 'U', 2),
(57, '2', '4', 'U', 3),
(58, '3', '4', 'U', 2.5),
(59, '4', '4', 'U', 1),
(60, '5', '4', 'U', 1),
(61, '1', '5', 'L', 1),
(62, '2', '5', 'L', 1.5),
(63, '3', '5', 'L', 1),
(64, '4', '5', 'L', 1),
(65, '5', '5', 'L', 1),
(66, '1', '5', 'M', 1.5),
(67, '2', '5', 'M', 2),
(68, '3', '5', 'M', 1.5),
(69, '4', '5', 'M', 1.5),
(70, '5', '5', 'M', 1),
(71, '1', '5', 'U', 2),
(72, '2', '5', 'U', 2.5),
(73, '3', '5', 'U', 2),
(74, '4', '5', 'U', 2),
(75, '5', '5', 'U', 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `t_master_insentif`
--
ALTER TABLE `t_master_insentif`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_master_kriteria`
--
ALTER TABLE `t_master_kriteria`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_nilai_alternatif`
--
ALTER TABLE `t_nilai_alternatif`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_nilai_kriteria`
--
ALTER TABLE `t_nilai_kriteria`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_nilai_kriteria_tfn`
--
ALTER TABLE `t_nilai_kriteria_tfn`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `t_master_insentif`
--
ALTER TABLE `t_master_insentif`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_master_kriteria`
--
ALTER TABLE `t_master_kriteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_nilai_alternatif`
--
ALTER TABLE `t_nilai_alternatif`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_nilai_kriteria`
--
ALTER TABLE `t_nilai_kriteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `t_nilai_kriteria_tfn`
--
ALTER TABLE `t_nilai_kriteria_tfn`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
