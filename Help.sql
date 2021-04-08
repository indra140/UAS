-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 10:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `help`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(52) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Full_Name` varchar(52) NOT NULL,
  `E_Mail` varchar(52) NOT NULL,
  `No_HP` varchar(16) NOT NULL,
  `Access` enum('Administrator','Operator') NOT NULL,
  `Status` enum('ON','OFF') NOT NULL,
  `Block` enum('Y','N') NOT NULL,
  `Created` varchar(10) NOT NULL,
  `History_Login` varchar(22) NOT NULL,
  `History_Logout` varchar(22) NOT NULL,
  `Session_ID` text NOT NULL,
  `Photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Password`, `Full_Name`, `E_Mail`, `No_HP`, `Access`, `Status`, `Block`, `Created`, `History_Login`, `History_Logout`, `Session_ID`, `Photo`) VALUES
('Administrator', 'd6e73067f0c7f37151c283c95ff41eb4e69fbade1c8e1437a40809b2acc0b9ab0a22690e853ffe7b4a804d7238f48a4984c2e5d745ccc223420b0af5bb3dc3ed', 'Jeffri Gunawan', 'Jeffrislackware@zearch-soft.com', '089-688-358-522', 'Administrator', 'ON', 'N', '07-04-2021', '07-04-2021 19:18:20', '', '0psouveaq1ojfrk3sdddms2g24', ''),
('Jeffrislackware', 'd6e73067f0c7f37151c283c95ff41eb4e69fbade1c8e1437a40809b2acc0b9ab0a22690e853ffe7b4a804d7238f48a4984c2e5d745ccc223420b0af5bb3dc3ed', 'Jeffri Slackware', 'Jeffrislackware@gmail.com', '089-688-358-522', 'Administrator', 'OFF', 'N', '07-04-2021', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bantuan`
--

CREATE TABLE `bantuan` (
  `ID_Bantuan` varchar(16) NOT NULL,
  `Jenis_Alokasi` enum('APD','LM','BKM','HS','SM') NOT NULL,
  `Jumlah_Transaksi` varchar(10) NOT NULL,
  `Jumlah_Dana` varchar(10) NOT NULL,
  `Nama_Lengkap` varchar(52) NOT NULL,
  `No_HP` varchar(16) NOT NULL,
  `Email` varchar(52) NOT NULL,
  `Tanggal` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`ID_Bantuan`, `Jenis_Alokasi`, `Jumlah_Transaksi`, `Jumlah_Dana`, `Nama_Lengkap`, `No_HP`, `Email`, `Tanggal`) VALUES
('1617730464', 'APD', '1000.000', '11', 'Jeffri Gunawan', '089-688-358-8522', 'Jeffrislackware@gmail.com', 'Wednesday-07-April-2021 01:11:50'),
('1617732710', 'HS', '200.000', '10', 'Jeffri Gunawan', '089-688-358-8522', 'Jeffrislackware@gmail.com', 'Wednesday-07-April-2021 01:11:50'),
('1617732780', 'LM', '100.000', '8', 'Jhon Doe', '012-345-678-9012', 'JhonDoe@Jhon.Doe', 'Wednesday-07-April-2021 01:13:00'),
('1617732820', 'BKM', '500.000', '6', 'Jhon Doe', '012-345-678-9012', 'JhonDoe@Jhon.Doe', 'Wednesday-07-April-2021 01:13:40'),
('1617733002', 'SM', '100.000', '5', 'Jeffri Gunawan', '089-688-358-8522', 'Jeffrislackware@gmail.com', 'Wednesday-07-April-2021 01:16:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`ID_Bantuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
