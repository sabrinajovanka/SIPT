-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2022 at 08:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `KRS`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `KRS`
--

CREATE TABLE `KRS` (
  `kode_krs` varchar(15) NOT NULL,
  `StudentID` varchar(10) NOT NULL,
  `kode_term` varchar(4) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `KRS`
--

INSERT INTO `KRS` (`kode_krs`, `StudentID`, `kode_term`, `keterangan`) VALUES
('100000001', '100000001', '1212', ''),
('100000002', '100000001', '1213', ''),
('100000003', '100000002', '1212', ''),
('100000004', '100000002', '1213', '');

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `kode_krsdetail` varchar(15) NOT NULL,
  `kode_krs` varchar(15) NOT NULL,
  `kode_matakuliah` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`kode_krsdetail`, `kode_krs`, `kode_matakuliah`) VALUES
('10000000101', '100000001', 'MK0001'),
('10000000102', '100000001', 'MK0003'),
('10000000201', '100000002', 'MK0002'),
('10000000202', '100000002', 'MK0001'),
('10000000301', '100000003', 'MK0002'),
('10000000302', '100000003', 'MK0001'),
('10000000401', '100000004', 'MK0002'),
('10000000402', '100000004', 'MK0001');

-- --------------------------------------------------------

--
-- Table structure for table `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `studentID` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tahun_masuk` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Mahasiswa`
--

INSERT INTO `Mahasiswa` (`studentID`, `nama`, `jurusan`, `tahun_masuk`, `created_at`, `updated_at`) VALUES
('0303340149', 'Ifa Lailasari', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0304411165', 'Faizah Andriani S.H.', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0306858141', 'Aswani Emil Januar M.Farm', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0316806859', 'Najwa Dewi Mayasari S.H.', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0319287324', 'Yuni Laksmiwati', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0322754495', 'Jindra Simbolon', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0323339135', 'Melinda Patricia Melani', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0326197317', 'Tina Fujiati', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0337667211', 'Surya Tarihoran', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0349226000', 'Siti Winarsih M.Farm', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0356110987', 'Belinda Yolanda', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0360411565', 'Nadia Farah Novitasari', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0366390732', 'Michelle Puji Yuniar', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0366734883', 'Yunita Suryatmi M.M.', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0367214808', 'Bakda Budiman', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0367321931', 'Febi Hartati', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0367647615', 'Olga Jumari Wahyudin S.E.I', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0374893950', 'Mulyanto Gara Sinaga', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0378255252', 'Cahyo Indra Rajasa M.M.', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('0390466926', 'Aurora Andriani', 'Sistem Informasi', '2017', '2022-11-04 20:37:22', '2022-11-04 20:37:22'),
('100000001', 'BUDI', 'SISTEM INFORMASI', '2017', '2022-11-05 03:37:16', '0000-00-00 00:00:00'),
('100000002', 'SUSI', 'SISTEM INFORMASI', '2017', '2022-11-05 03:37:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunMasuk` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `studentId`, `nama`, `jurusan`, `tahunMasuk`, `created_at`, `updated_at`) VALUES
(1, '0348950377', 'Sadina Wulandari', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(2, '0327679411', 'Oliva Kayla Rahmawati S.Sos', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(3, '0300571397', 'Nurul Sudiati', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(4, '0312279979', 'Argono Nugroho', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(5, '0391407112', 'Lintang Widiastuti', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(6, '0315613703', 'Tari Utami', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(7, '0351560475', 'Unggul Budiyanto', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(8, '0350685646', 'Hafshah Mandasari', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(9, '0315246109', 'Sarah Ratih Pertiwi', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(10, '0381863422', 'Rachel Lestari S.T.', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(11, '0391215689', 'Salsabila Wahyuni', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(12, '0344657278', 'Calista Haryanti', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(13, '0382334338', 'Citra Jane Zulaika', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(14, '0303678733', 'Kalim Lamar Habibi', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(15, '0331541654', 'Dodo Hardi Halim', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(16, '0372039459', 'Gada Nashiruddin M.Pd', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(17, '0351133791', 'Lulut Mansur', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(18, '0317919175', 'Halima Yance Laksita', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(19, '0333161482', 'Mulya Kawaya Najmudin', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(20, '0363417222', 'Jabal Tomi Pranowo', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(21, '0387313943', 'Gatot Hutasoit', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(22, '0386623823', 'Jais Marbun', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(23, '0363083498', 'Rangga Pradipta', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(24, '0306146985', 'Ika Halima Hastuti M.Ak', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(25, '0386223580', 'Gading Jailani', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(26, '0371392509', 'Ella Wani Nurdiyanti', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(27, '0361316565', 'Okta Putra', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(28, '0355319930', 'Prayitna Dono Rajasa', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(29, '0302044042', 'Irma Agustina', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(30, '0351730733', 'Natalia Amalia Yuniar', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(31, '0391689289', 'Karsa Sinaga', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(32, '0365444476', 'Martana Waluyo', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(33, '0372690785', 'Oni Handayani', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(34, '0310851793', 'Karta Asmadi Haryanto S.Farm', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(35, '0393273448', 'Kani Yulianti M.Pd', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(36, '0397245367', 'Perkasa Banawa Jailani M.TI.', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(37, '0372675938', 'Raharja Kusumo', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(38, '0324938868', 'Praba Siregar S.T.', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(39, '0389818553', 'Dariati Narpati', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(40, '0310474550', 'Malika Palastri', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(41, '0317450986', 'Clara Putri Laksmiwati', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(42, '0338876949', 'Widya Wahyuni', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(43, '0335335671', 'Maria Susanti', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(44, '0320798758', 'Asman Habibi M.Pd', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(45, '0359207700', 'Karma Sitompul', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(46, '0329330633', 'Bagus Kusumo', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(47, '0363669842', 'Cici Laksmiwati', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(48, '0379875815', 'Adiarja Ardianto', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(49, '0322170546', 'Embuh Mandala', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58'),
(50, '0335289317', 'Kasim Mansur', 'Sistem Informasi', '2020', '2022-11-04 23:47:58', '2022-11-04 23:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `Matakuliah`
--

CREATE TABLE `Matakuliah` (
  `kode_matakuliah` varchar(6) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Matakuliah`
--

INSERT INTO `Matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `sks`) VALUES
('MK0001', 'BUSINESS APPLICATION PROGRAMMING', 4),
('MK0002', 'AUDIT DAN KONTROL SISTEM INFROMASI', 4),
('MK003', 'PEMROGRAMAN BERORIENTASI OBJEK', 4);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_10_01_061729_create_mahasiswas_table', 1),
(5, '2022_10_02_030707_create_dosens_table', 1),
(6, '2022_10_15_061146_create_v_jlh_mhs_krs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `kode_term` varchar(4) NOT NULL,
  `tahun_ajar` varchar(4) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`kode_term`, `tahun_ajar`, `semester`, `keterangan`) VALUES
('1212', '2020', 'GANJIL', ''),
('1213', '2020', 'GENAP', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vjlhkrsmhs`
-- (See below for the actual view)
--
CREATE TABLE `vjlhkrsmhs` (
`StudentID` varchar(10)
,`Nama` varchar(50)
,`JLHKRS` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmhskrs`
-- (See below for the actual view)
--
CREATE TABLE `vmhskrs` (
`StudentID` varchar(10)
,`Nama` varchar(50)
,`kode_krs` varchar(15)
,`kode_term` varchar(4)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
,`sks` int(11)
,`totalsks` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `v_jlh_mhs_krs`
--

CREATE TABLE `v_jlh_mhs_krs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `vjlhkrsmhs`
--
DROP TABLE IF EXISTS `vjlhkrsmhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`bap22`@`localhost` SQL SECURITY DEFINER VIEW `krs`.`vjlhkrsmhs`  AS SELECT `MHS`.`studentID` AS `StudentID`, `MHS`.`nama` AS `Nama`, count(`krs`.`krs`.`StudentID`) AS `JLHKRS` FROM (`krs`.`mahasiswa` `MHS` join `krs`.`krs` on(`MHS`.`studentID` = `krs`.`krs`.`StudentID`)) GROUP BY `MHS`.`studentID`, `MHS`.`nama` ;

-- --------------------------------------------------------

--
-- Structure for view `vmhskrs`
--
DROP TABLE IF EXISTS `vmhskrs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `krs`.`vmhskrs`  AS SELECT `mhs`.`studentID` AS `StudentID`, `mhs`.`nama` AS `Nama`, `krs`.`krs`.`kode_krs` AS `kode_krs`, `krs`.`krs`.`kode_term` AS `kode_term`, `mtk`.`kode_matakuliah` AS `kode_matakuliah`, `mtk`.`nama_matakuliah` AS `nama_matakuliah`, `mtk`.`sks` AS `sks`, `b`.`totalsks` AS `totalsks` FROM ((((`krs`.`mahasiswa` `mhs` join `krs`.`krs` on(`mhs`.`studentID` = `krs`.`krs`.`StudentID`)) join `krs`.`krs_detail` `krd` on(`krd`.`kode_krs` = `krs`.`krs`.`kode_krs`)) join `krs`.`matakuliah` `mtk` on(`mtk`.`kode_matakuliah` = `krd`.`kode_matakuliah`)) join (select `krs`.`krs`.`kode_krs` AS `kode_krs`,sum(`mtk`.`sks`) AS `totalsks` from (((`krs`.`mahasiswa` `mhs` join `krs`.`krs` on(`mhs`.`studentID` = `krs`.`krs`.`StudentID`)) join `krs`.`krs_detail` `krd` on(`krd`.`kode_krs` = `krs`.`krs`.`kode_krs`)) join `krs`.`matakuliah` `mtk` on(`mtk`.`kode_matakuliah` = `krd`.`kode_matakuliah`)) group by `krs`.`krs`.`kode_krs`) `B` on(`b`.`kode_krs` = `krs`.`krs`.`kode_krs`)) WHERE `mhs`.`studentID` = '100000001' AND `krs`.`krs`.`kode_term` = '1213' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `KRS`
--
ALTER TABLE `KRS`
  ADD PRIMARY KEY (`kode_krs`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`kode_krsdetail`);

--
-- Indexes for table `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `v_jlh_mhs_krs`
--
ALTER TABLE `v_jlh_mhs_krs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_jlh_mhs_krs`
--
ALTER TABLE `v_jlh_mhs_krs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
