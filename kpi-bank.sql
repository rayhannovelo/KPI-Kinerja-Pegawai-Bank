-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 03:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpi-bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Pemasaran'),
(2, 'Operasional'),
(3, 'Bisnis Mikro');

-- --------------------------------------------------------

--
-- Table structure for table `item_kpi`
--

CREATE TABLE `item_kpi` (
  `id_item_kpi` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `indikator` varchar(255) NOT NULL,
  `bobot_item` float(11,2) NOT NULL,
  `target_item` float(11,2) NOT NULL,
  `satuan_target` varchar(55) NOT NULL,
  `tipe_scorecard` varchar(55) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_kpi`
--

INSERT INTO `item_kpi` (`id_item_kpi`, `id_divisi`, `nama_item`, `indikator`, `bobot_item`, `target_item`, `satuan_target`, `tipe_scorecard`, `kategori`) VALUES
(1, 1, 'Operating profit excellence fee income', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(2, 1, 'Fee Income', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(3, 1, 'Cost in income ratio', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(4, 1, 'Earning to income ratio', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(5, 1, 'ROA', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(6, 1, 'Outstanding balance expansion for funding', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(7, 1, 'CASA for funding', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(8, 1, 'Customer Satisfaction for Customer', 'Achievement must be at least 7% or Rp.100.000.000,00 per year', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(9, 1, 'The realization of agreed negotiations', 'Achievement must be at least 7% or the target must be at least beyond the Rp.100.000.000,00 agreed negotiator', 7.00, 100000000.00, 'rupiah', 'dalam', 1),
(10, 1, 'The realization of the implemented marketing program', 'Achievement must be at least 7% or the target should be at least beyond the 70% of the company / investor / client realization of the implemented program', 7.00, 70.00, 'persen', 'dalam', 1),
(11, 1, 'Strategy marketing quality', 'Achievement must be at least 10% or the target of a 100% scale for perfect score in the criterion of the quality criteria of marketing strategy', 10.00, 100.00, 'persen', 'dalam', 1),
(12, 1, 'Intraday facility', 'Achievement must be at least 7% or the target should be at least beyond the 70% of companies / investors / customers who develop infraday facility products', 7.00, 70.00, 'persen', 'dalam', 1),
(13, 1, 'Realization of additional product usage', 'Achievement must be at least 7%  or the target should be at least beyond the 70% company / investor / customer realization of additional product usage', 7.00, 70.00, 'persen', 'dalam', 1),
(14, 1, 'Realisasi Negosiasi yang disepakati', 'Achievement must be at least 25% or the target of a 80% scale', 25.00, 80.00, 'persen', 'luar', 1),
(15, 1, 'Realisasi program pemasaran yang diimplementasikan', 'Achievement must be at least 25% or the target of a 80% scale', 25.00, 80.00, 'persen', 'luar', 1),
(16, 1, 'Kualitas penyusunan strategi marketing', 'Achievement must be at least 20% or the target of a 100% scale', 20.00, 100.00, 'persen', 'luar', 1),
(17, 1, 'Realisasi penambahan pemakaian produk', 'Achievement must be at least 20% or the target of a 70% scale', 20.00, 70.00, 'persen', 'luar', 1),
(18, 1, 'Pengembangan produk intraday facility', 'Achievement must be at least 10% or the target of a 70% scale', 10.00, 70.00, 'persen', 'luar', 1),
(19, 3, 'Operating profit excellence fee income', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(20, 3, 'Fee Income', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(21, 3, 'Cost in income ratio', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(22, 3, 'Earning to income ratio', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(23, 3, 'ROA', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(24, 3, 'Outstanding balance expansion for funding', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(25, 3, 'CASA for funding', 'Achievement must be at least 10% or Rp.100.000.000,00 per year', 10.00, 100000000.00, 'rupiah', 'dalam', 1),
(26, 3, 'Customer Satisfaction for Customer', 'Achievement must be at least 7,5% or Rp.100.000.000,00 per year', 7.50, 100000000.00, 'rupiah', 'dalam', 1),
(27, 3, 'Strategy business quality', 'Achievement must be at least 7,5% or the target of a 100% scale for perfect score in the criterion of the quality criteria of marketing strategy', 7.50, 100.00, 'persen', 'dalam', 1),
(28, 3, 'Evaluate / monitor business quality', 'Achievement must be at least 7,5% or the target of a 100% scale for perfect score in the criterion of the quality criteria of marketing strategy', 7.50, 100.00, 'persen', 'dalam', 1),
(29, 3, 'The realization of the implemented micro business program', 'Achievement must be at least 7,5% or the target should be at least beyond the 70% of the company / investor / client realization of the implemented program', 7.50, 70.00, 'persen', 'dalam', 1),
(30, 3, 'Realisasi Negosiasi yang disepakati', 'Achievement must be at least 25%  or the target of a 80% scale', 25.00, 80.00, 'persen', 'luar', 1),
(31, 3, 'Realisasi program pemasaran yang diimplementasikan', 'Achievement must be at least 25%  or the target of a 80% scale', 25.00, 80.00, 'persen', 'luar', 1),
(32, 3, 'Kualitas penyusunan strategi marketing', 'Achievement must be at least 20%  or the target of a 100% scale', 20.00, 100.00, 'persen', 'luar', 1),
(33, 3, 'Realisasi penambahan pemakaian produk', 'Achievement must be at least 20%  or the target of a 70% scale', 20.00, 70.00, 'persen', 'luar', 1),
(34, 3, 'Pengembangan produk intraday facility', 'Achievement must be at least 10%  or the target of a 70% scale', 10.00, 70.00, 'persen', 'luar', 1),
(35, 2, 'Effectiveness and efficiency of the company\'s operations', 'Achievement must be at least 20%  or the target of a 100% scale for perfect score in the criterion of effectiveness and efficiency of the company\'s operations', 20.00, 100.00, 'persen', 'dalam', 1),
(36, 2, 'Trimming out operating costs that do not benefit the company at all', 'Achievement must be at least 20%  or the target of a 100% scale for perfect score in the criterion of trimming out operating costs that do not benefit the company at all', 20.00, 100.00, 'persen', 'dalam', 1),
(37, 2, 'Perform regular meetings with the executive director on a regular basis', 'Achievement must be at least 10%  or the target of a 100% scale for perfect score in the criterion of improving operational systems, processes and policies in support of the company\'s vision and mission', 10.00, 100.00, 'persen', 'dalam', 1),
(38, 2, 'Oversee the operational and inventory layout', 'Achievement must be at least 20%  or the target of a 100% scale for perfect score in the criterion of oversee he operational and inventory layout', 20.00, 100.00, 'persen', 'dalam', 1),
(39, 2, 'Improving operational systems, processes and policies in support of the company\'s vision and mission', 'Achievement must be at least 30%  or the target of a 100% scale for perfect score in the criterion of improving operational systems, processes and policies in support of the company\'s vision and mission', 30.00, 100.00, 'persen', 'dalam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `id_pimpinan` int(11) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `sma` varchar(55) NOT NULL,
  `s1` varchar(55) NOT NULL,
  `s2` varchar(55) NOT NULL,
  `s3` varchar(55) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id_users`, `id_divisi`, `id_pimpinan`, `nama_karyawan`, `jabatan`, `umur`, `alamat`, `no_hp`, `sma`, `s1`, `s2`, `s3`, `tanggal_masuk`) VALUES
(1, 12, 1, 1, 'Karyawan11', 'AO Commercial', 21, 'Alamat 1', '111', 'MAN 2', 'unsri', 'itb', 'ui', '2006-07-20'),
(2, 13, 1, 1, 'Karyawan12', 'AO Consumer', 22, 'Alamat 2', '222', 'sma ', '', '', '', '2018-01-15'),
(3, 14, 1, 1, 'karyawan13', 'AO Program', 33, 'karyawan3', 'karyawan3', '', '', '', '', '0000-00-00'),
(4, 15, 1, 2, 'karyawan14', 'Funding Officer', 11, '1', '1', '1', '1', '1', '1', '2018-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kpi`
--

CREATE TABLE `nilai_kpi` (
  `id_nilai_kpi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_item_kpi` int(11) NOT NULL,
  `tahun` char(4) NOT NULL,
  `bulan` varchar(55) NOT NULL,
  `nilai` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `nilai_kpi`
--

INSERT INTO `nilai_kpi` (`id_nilai_kpi`, `id_karyawan`, `id_item_kpi`, `tahun`, `bulan`, `nilai`) VALUES
(1, 3, 35, '2016', 'Januari', 3.00),
(2, 3, 36, '2016', 'Januari', 1.00),
(3, 3, 38, '2016', 'Januari', 1.00),
(4, 3, 39, '2016', 'Januari', 1.00),
(5, 3, 37, '2016', 'Januari', 1.00),
(6, 3, 35, '2018', 'Februari', 120.00),
(7, 3, 36, '2017', 'Februari', 100.00),
(8, 3, 38, '2017', 'Februari', 150.00),
(9, 3, 39, '2017', 'Februari', 70.00),
(10, 3, 37, '2017', 'Februari', 100.00),
(11, 3, 35, '2018', 'Maret', 1.00),
(12, 3, 36, '2018', 'Maret', 1.00),
(13, 3, 38, '2018', 'Maret', 1.00),
(14, 3, 39, '2018', 'Maret', 1.00),
(15, 3, 37, '2018', 'Maret', 1.00),
(74, 1, 14, '2018', 'Maret', 123.00),
(75, 1, 15, '2018', 'Maret', 123.00),
(76, 1, 16, '2018', 'Maret', 123.00),
(77, 1, 17, '2018', 'Maret', 123.00),
(78, 1, 18, '2018', 'Maret', 123.00),
(79, 2, 14, '2018', 'Maret', 999.00),
(80, 2, 15, '2018', 'Maret', 99.00),
(81, 2, 16, '2018', 'Maret', 99.00),
(82, 2, 17, '2018', 'Maret', 99.00),
(83, 2, 18, '2018', 'Maret', 99.00);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kpi_pimpinan`
--

CREATE TABLE `nilai_kpi_pimpinan` (
  `id_nilai_kpi` int(11) NOT NULL,
  `id_pimpinan` int(11) NOT NULL,
  `id_item_kpi` int(11) NOT NULL,
  `tahun` char(4) NOT NULL,
  `bulan` varchar(55) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_kpi_pimpinan`
--

INSERT INTO `nilai_kpi_pimpinan` (`id_nilai_kpi`, `id_pimpinan`, `id_item_kpi`, `tahun`, `bulan`, `nilai`) VALUES
(1, 4, 35, '2018', 'Maret', 2),
(2, 4, 36, '2018', 'Maret', 2),
(3, 4, 37, '2018', 'Maret', 2),
(4, 4, 38, '2018', 'Maret', 2),
(5, 4, 39, '2018', 'Maret', 2),
(6, 5, 35, '2018', 'Maret', 111),
(7, 5, 36, '2018', 'Maret', 1),
(8, 5, 37, '2018', 'Maret', 1),
(9, 5, 38, '2018', 'Maret', 123),
(10, 5, 39, '2018', 'Maret', 123),
(11, 3, 30, '2018', 'Maret', 123),
(12, 3, 31, '2018', 'Maret', 123),
(13, 3, 32, '2018', 'Maret', 123),
(14, 3, 33, '2018', 'Maret', 123),
(15, 3, 34, '2018', 'Maret', 123),
(16, 3, 30, '2018', 'Maret', 123),
(17, 3, 31, '2018', 'Maret', 123),
(18, 3, 32, '2018', 'Maret', 123),
(19, 3, 33, '2018', 'Maret', 123),
(20, 3, 34, '2018', 'Maret', 123),
(21, 9, 30, '2018', 'Maret', 55),
(22, 9, 31, '2018', 'Maret', 55),
(23, 9, 32, '2018', 'Maret', 5),
(24, 9, 33, '2018', 'Maret', 5),
(25, 9, 34, '2018', 'Maret', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `id_pimpinan` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `nama_pimpinan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`id_pimpinan`, `id_users`, `id_divisi`, `nama_pimpinan`, `jabatan`, `umur`, `alamat`, `no_hp`) VALUES
(1, 1, 1, 'Manajer Pemasaran', 'Manajer Pemasaran', 1, 'Alamat 1', '111'),
(2, 2, 2, 'Manajer Operasional', 'Manajer Operasional', 0, 'Alamat 3', '333'),
(3, 3, 3, 'Manajer Bisnis Mikro', 'Manajer Bisnis Mikro', 0, 'Alamat 2', '222'),
(4, 4, 2, 'AMPB', 'AMPB', 1, '1', '1'),
(5, 5, 2, 'Supervisor ADK', 'Supervisor ADK', 1, '1', '1'),
(6, 6, 2, 'Supervisor Pely Intern', 'Supervisor Pely Intern', 1, '1', '1'),
(7, 7, 2, 'AMO', 'AMO', 1, '1', '1'),
(8, 8, 2, 'Supervisor Pely Kas', 'Supervisor Pely Kas', 1, '1', '1'),
(9, 9, 3, 'AMBM', 'AMBM', 1, '1', '1'),
(10, 10, 3, 'Supervisor Adm Unit', 'Supervisor Adm Unit', 1, '1', '1'),
(11, 11, 3, 'Penilik', 'Penilik', 1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `level`) VALUES
(1, 'pimpinan1', 'a1475279de60efc1b418fa651f695384', 1),
(2, 'pimpinan2', '5a2b8ca40e7be03658a71d89933c0347', 1),
(3, 'pimpinan3', '4adb41fef0b3e0c110d6f8c20eeb6c11', 1),
(4, 'pimpinan21', 'fbf8c2351f4174f17c7363a84597b32c', 1),
(5, 'pimpinan211', '85564da8358b2d4f41d28a906a5f76f8', 1),
(6, 'pimpinan212', '415336af074a9d5387faefdf27d98a45', 1),
(7, 'pimpinan22', '93a6fc85d8abcdaaeb54b6089d928fe1', 1),
(8, 'pimpinan221', '65efcc42dc07d49d2d304e772482fa70', 1),
(9, 'pimpinan31', '50ea8ba780ee336c13dbb74e72d94380', 1),
(10, 'pimpinan311', '7033a9788faa8f201c1a2709a0b0af35', 1),
(11, 'pimpinan312', '5a4f1b83192d5ccee04f5120720dae61', 1),
(12, 'karyawan11', 'af03fc92527a3cb5deba27fc61479c96', 2),
(13, 'karyawan12', 'c9bb08594ffee7944b99cc27479a1af6', 2),
(14, 'karyawan13', 'b4a934ee54efc8039d920e55cac6542c', 2),
(15, 'karyawan14', 'bfa5c0421ffccd644a3d84c2c7058efd', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `item_kpi`
--
ALTER TABLE `item_kpi`
  ADD PRIMARY KEY (`id_item_kpi`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_divisi` (`id_divisi`),
  ADD KEY `id_pimpinan` (`id_pimpinan`);

--
-- Indexes for table `nilai_kpi`
--
ALTER TABLE `nilai_kpi`
  ADD PRIMARY KEY (`id_nilai_kpi`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_item_kpi` (`id_item_kpi`);

--
-- Indexes for table `nilai_kpi_pimpinan`
--
ALTER TABLE `nilai_kpi_pimpinan`
  ADD PRIMARY KEY (`id_nilai_kpi`),
  ADD KEY `id_pimpinan` (`id_pimpinan`),
  ADD KEY `id_item_kpi` (`id_item_kpi`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`id_pimpinan`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_kpi`
--
ALTER TABLE `item_kpi`
  MODIFY `id_item_kpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nilai_kpi`
--
ALTER TABLE `nilai_kpi`
  MODIFY `id_nilai_kpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `nilai_kpi_pimpinan`
--
ALTER TABLE `nilai_kpi_pimpinan`
  MODIFY `id_nilai_kpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `id_pimpinan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_kpi`
--
ALTER TABLE `item_kpi`
  ADD CONSTRAINT `item_kpi_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_ibfk_3` FOREIGN KEY (`id_pimpinan`) REFERENCES `pimpinan` (`id_pimpinan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_kpi`
--
ALTER TABLE `nilai_kpi`
  ADD CONSTRAINT `nilai_kpi_ibfk_2` FOREIGN KEY (`id_item_kpi`) REFERENCES `item_kpi` (`id_item_kpi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_kpi_ibfk_3` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_kpi_pimpinan`
--
ALTER TABLE `nilai_kpi_pimpinan`
  ADD CONSTRAINT `nilai_kpi_pimpinan_ibfk_1` FOREIGN KEY (`id_pimpinan`) REFERENCES `pimpinan` (`id_pimpinan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_kpi_pimpinan_ibfk_2` FOREIGN KEY (`id_item_kpi`) REFERENCES `item_kpi` (`id_item_kpi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD CONSTRAINT `pimpinan_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pimpinan_ibfk_2` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
