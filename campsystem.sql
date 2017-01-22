-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 09:59 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE `abc` (
  `asd` int(11) NOT NULL,
  `dsa` int(11) NOT NULL,
  `123` int(11) NOT NULL,
  `asd23` int(11) NOT NULL,
  `dab` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sdfasdf` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `campstaff`
--

CREATE TABLE `campstaff` (
  `ID` int(9) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `JobTitle` varchar(200) NOT NULL,
  `Role` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campstaff`
--

INSERT INTO `campstaff` (`ID`, `Name`, `JobTitle`, `Role`) VALUES
(1, 'Noor Islam', 'Maintenance Incharge', '4'),
(2, 'Surrendar', 'Maintenance Incharge', '4'),
(3, 'Muhammad Younas', 'CampBoss', '2'),
(4, 'Amir', 'AC Technician', '4'),
(5, 'Amjad', 'Electrician', '4'),
(6, 'Abdul Rahim', 'Electrician', '4'),
(7, 'Chandru', 'AC Technician', '4'),
(8, 'Muneer', 'Plumber', '4'),
(9, 'Ahsan Mahmood', 'Admin', '1'),
(10, 'Naseer AbuTahir', 'Store Keeper', '10');

-- --------------------------------------------------------

--
-- Table structure for table `companiesrates`
--

CREATE TABLE `companiesrates` (
  `ID` int(9) NOT NULL,
  `roomtypeID` int(9) DEFAULT NULL,
  `foodtypeID` int(9) DEFAULT NULL,
  `bathroom` tinyint(1) DEFAULT NULL,
  `price` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complainbook`
--

CREATE TABLE `complainbook` (
  `ID` int(9) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SubmittedBy` int(1) NOT NULL,
  `ForwardedTo` int(5) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `checkedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `solved` tinyint(1) NOT NULL DEFAULT '0',
  `solvedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `solvedby` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complainbook`
--

INSERT INTO `complainbook` (`ID`, `Description`, `Area`, `DateTime`, `SubmittedBy`, `ForwardedTo`, `checked`, `checkedat`, `solved`, `solvedat`, `solvedby`) VALUES
(1, 'Tube Light ', 'H01-154', '2016-08-04 06:34:36', 3, 1, 1, '2016-08-25 13:11:09', 1, '2016-08-21 12:48:52', 1),
(2, 'Water pipe Leakage', 'A-01', '2016-08-04 07:08:17', 3, 2, 1, '2016-08-25 12:18:19', 1, '2016-08-26 12:28:24', 6),
(3, 'Door Lock Broken', 'A-05', '2016-08-04 07:09:28', 3, 1, 1, '2016-08-25 13:09:36', 1, '2016-08-21 12:49:10', 6),
(6, 'Boiler pipe is broken.                                                     \r\n                                                ', 'Kitchen Area', '2016-08-24 06:28:01', 9, 2, 1, '2016-08-25 13:09:46', 1, '2016-08-26 12:28:40', NULL),
(7, 'Boiler pipe is broken.                                                     \r\n                                                ', 'Kitchen Area', '2016-08-24 06:28:23', 9, 2, 1, '2016-08-26 11:25:04', 1, '2016-08-26 11:29:49', 4),
(8, 'Bathroom water tap leakage                                                    \r\n                                                ', 'D-02', '2016-08-24 06:30:23', 9, 1, 1, '2016-08-26 11:23:50', 1, '2016-08-26 11:24:31', 7),
(10, 'Tublights are not Working.                                                    \r\n                                                ', 'Senior Mess', '2016-08-24 11:54:42', 9, 2, 1, '2016-08-26 12:00:15', 1, '2016-08-26 12:28:47', NULL),
(11, '                                                    \r\n                                                Water Pipe Leakage ', 'Labor Mess', '2016-08-25 12:18:05', 9, 1, 1, '2016-08-25 12:19:02', 1, '2016-08-26 12:31:06', NULL),
(12, '                          Leakage                          \r\n                                                ', 'Ahsan ka Room', '2016-08-25 17:12:34', 9, 1, 1, '2016-08-26 11:35:25', 1, '2016-08-26 12:28:15', NULL),
(13, 'Drainage overload                                                    \r\n                                                ', 'Camp Office', '2016-08-26 12:39:43', 9, 1, 1, '2016-08-26 12:39:54', 1, '2016-08-26 12:45:34', NULL),
(14, 'Yes no YEs                                                    \r\n                                                ', 'Testing 123', '2016-08-26 12:51:53', 9, 1, 1, '2016-08-26 12:52:00', 1, '2016-08-26 12:52:06', 6),
(15, 'sadfasdfasdf                                                    \r\n                                                ', 'Testing 123', '2016-08-26 12:57:07', 9, 1, 1, '2016-08-26 12:57:16', 1, '2016-08-26 13:01:46', NULL),
(16, '                                                    \r\n                            sdfasdfasd f                    ', 'D-02', '2016-08-26 13:01:44', 9, 2, 1, '2016-08-26 13:01:50', 1, '2016-08-26 13:08:07', NULL),
(17, '                                 a                   \r\n                                sdfasdfasd                ', 'sadfasdf', '2016-08-26 13:08:01', 9, 1, 1, '2016-08-26 13:08:10', 1, '2016-08-26 13:09:42', 6),
(18, '32132sa1d3f21as3d2f1a32d1f3a2sd1f3a2ds1f32as1df3a5sd1f3 5s1df35as1d f3a51 3as5d1f3 as5d1f3a5sd1f3 5as1d3f 5sa1df3 5sa1d3f 5asd1f 3\r\n                                                    \r\n                                                ', 'Testing 123', '2016-08-26 13:09:38', 9, 1, 1, '2016-08-26 13:09:44', 1, '2016-08-26 13:09:48', 5),
(19, '                                                    \r\n            corridoor light not working                                   ', 'a-block', '2016-08-26 13:11:13', 3, 1, 1, '2016-08-26 13:11:21', 1, '2016-08-26 13:11:51', 6),
(20, '                          asdfasdfasdfas                          \r\n                                                ', 'asdfasdfasdf', '2016-08-26 13:40:46', 9, 2, 1, '2016-08-27 08:15:39', 1, '2016-09-27 07:37:25', 5),
(21, 'Wakeel Leakage                                                    \r\n                                                ', 'A-01', '2016-08-27 08:13:47', 9, 1, 1, '2016-08-27 08:14:16', 1, '2016-08-27 08:14:51', 8),
(22, 'A/c Cooling Problem                                                    \r\n                                                ', 'D-04', '2016-08-29 07:35:23', 9, 1, 1, '2016-08-29 07:37:09', 1, '2016-08-29 07:37:32', 4),
(23, 'Device needs to restart.                                                    \r\n                                                ', 'Main Office Wifi Device', '2016-09-18 11:32:44', 9, 1, 1, '2016-09-18 11:33:09', 1, '2016-09-18 11:33:23', 5),
(24, 'Ac Not working                                                    \r\n                                                ', 'H01-138', '2016-09-27 07:35:32', 9, 1, 1, '2016-09-27 07:36:10', 1, '2016-09-27 07:36:54', 7),
(25, 'Nothing                                                    \r\n                                                ', 'A-01', '2016-09-27 07:46:20', 9, 1, 1, '2016-09-27 07:46:33', 1, '2016-09-27 07:47:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `foodtype`
--

CREATE TABLE `foodtype` (
  `ID` int(4) NOT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodtype`
--

INSERT INTO `foodtype` (`ID`, `type`) VALUES
(1, 'Senior'),
(2, 'Junior'),
(3, 'Labor');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `campstaffID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `campstaffID`) VALUES
(1, 'mr_ahsan15', 'admin123', 9),
(2, 'younas', 'campboss', 3),
(3, 'noor', 'noor123', 1),
(4, 'naseer05', 'naseerabu', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mandayscompanies`
--

CREATE TABLE `mandayscompanies` (
  `ID` int(9) NOT NULL,
  `companyname` varchar(200) DEFAULT NULL,
  `registrationdate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomlist`
--

CREATE TABLE `roomlist` (
  `ID` int(9) NOT NULL,
  `roomno` varchar(10) NOT NULL,
  `bathroom` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `ID` int(5) NOT NULL,
  `type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`ID`, `type`) VALUES
(1, '1x1'),
(2, '2x1'),
(3, '3x1'),
(4, '4x1');

-- --------------------------------------------------------

--
-- Table structure for table `stocksheet`
--

CREATE TABLE `stocksheet` (
  `ID` int(5) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `supplier_id` int(5) NOT NULL,
  `product_unit` varchar(25) NOT NULL,
  `product_price_unit` int(9) NOT NULL,
  `stocktype` tinyint(1) NOT NULL,
  `product_quantity` int(9) NOT NULL,
  `stock_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocksheet`
--

INSERT INTO `stocksheet` (`ID`, `product_name`, `product_type`, `supplier_id`, `product_unit`, `product_price_unit`, `stocktype`, `product_quantity`, `stock_date`, `product_id`) VALUES
(1, 'Water Tap', 'plumber', 1, 'pieces', 25, 1, 5, '2016-08-29 08:01:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_entrance`
--

CREATE TABLE `stock_entrance` (
  `ID` int(9) NOT NULL,
  `PRODUCT_CODE_ID` int(9) NOT NULL,
  `QUANTITY_ENTER` float NOT NULL,
  `STOCK_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PRICE_PER_UNIT` float DEFAULT NULL,
  `BillNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_entrance`
--

INSERT INTO `stock_entrance` (`ID`, `PRODUCT_CODE_ID`, `QUANTITY_ENTER`, `STOCK_DATE`, `PRICE_PER_UNIT`, `BillNo`) VALUES
(1, 1, 25, '2016-09-28 11:44:59', 12, '2521423'),
(2, 1, 12, '2016-09-28 11:59:53', 2, '221425528'),
(3, 3, 12, '2016-09-28 12:00:41', 2, '221425528'),
(4, 3, 15, '2016-09-29 10:24:06', 5, '321321654');

-- --------------------------------------------------------

--
-- Table structure for table `stock_exit`
--

CREATE TABLE `stock_exit` (
  `ID` int(9) NOT NULL,
  `PRODUCT_CODE_ID` int(7) NOT NULL,
  `EXIT_QUANTITY` int(9) NOT NULL,
  `EXIT_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COMPLAINT_ID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_products`
--

CREATE TABLE `stock_products` (
  `ID` int(9) NOT NULL,
  `PRODUCT_CODE_ID` varchar(50) NOT NULL,
  `PRODUCT_NAME` varchar(500) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(1000) NOT NULL,
  `PRODUCT_UNIT` varchar(15) DEFAULT NULL,
  `PRODUCT_TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_products`
--

INSERT INTO `stock_products` (`ID`, `PRODUCT_CODE_ID`, `PRODUCT_NAME`, `PRODUCT_DESCRIPTION`, `PRODUCT_UNIT`, `PRODUCT_TYPE`) VALUES
(1, 'PL-00001', 'Elbow 25mm', 'PVC ELBOW', 'm', 'Plumbing'),
(2, 'PL-00002', 'PVC PIPE', ' Water Pipe', 'm', 'Plumbing'),
(3, 'PL-00003', 'Testing Another Product', ' This product is being inserted to test whether how much area it will occupy.', 'Nothing', 'House Keeping'),
(4, 'PL-00004', '', ' ', '', ''),
(5, 'PL-00005', 'Naseer', ' Assassination', 'pieces', 'Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `tripcompany`
--

CREATE TABLE `tripcompany` (
  `ID` int(9) NOT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `dateofregister` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripcompany`
--

INSERT INTO `tripcompany` (`ID`, `CompanyName`, `dateofregister`) VALUES
(1, 'Quality Transport Service', '2016-07-13 20:00:00'),
(8, 'Kali bai', '2016-07-22 16:19:10'),
(9, 'Kutyu', '2016-07-22 16:27:02'),
(10, 'Pioneers Catering Services', '2016-07-30 12:58:17'),
(11, 'AL MATIYA GENERAL TRANSPORT', '2016-08-21 11:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `tripdrinking`
--

CREATE TABLE `tripdrinking` (
  `ID` int(9) NOT NULL,
  `CompanyID` int(9) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `tripscount` int(9) DEFAULT NULL,
  `dateofregister` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripdrinking`
--

INSERT INTO `tripdrinking` (`ID`, `CompanyID`, `Size`, `tripscount`, `dateofregister`) VALUES
(1, 1, '5000', 10, '2016-07-14 20:00:00'),
(2, 1, '10000', 5, '2016-07-16 20:00:00'),
(3, 1, '15000', 65, '2016-07-16 20:00:00'),
(4, 1, '10000', 40, '2016-07-20 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tripprices`
--

CREATE TABLE `tripprices` (
  `ID` int(9) NOT NULL,
  `CompanyID` int(9) DEFAULT NULL,
  `Type` varchar(25) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripprices`
--

INSERT INTO `tripprices` (`ID`, `CompanyID`, `Type`, `Size`, `Price`) VALUES
(1, 1, 'Drinking', '5000,10000', '200,400'),
(2, 1, 'Sewage', '10000', '400'),
(3, 1, 'Drinking', '5000', '200'),
(6, 8, 'Sewage', '15000,10000', '500,300'),
(7, 8, 'Drinking', '10000', '300'),
(9, 9, 'Sewage', '5000,10000', '200,500'),
(10, 9, 'Drinking', '15000', '350'),
(12, 9, 'Skip', '5000', '200'),
(13, 10, 'Sewage', '10000', '500'),
(14, 11, 'Sewage', '10000', '300');

-- --------------------------------------------------------

--
-- Table structure for table `tripsewage`
--

CREATE TABLE `tripsewage` (
  `ID` int(9) NOT NULL,
  `CompanyID` int(9) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `tripscount` int(9) DEFAULT NULL,
  `dateofregister` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripsewage`
--

INSERT INTO `tripsewage` (`ID`, `CompanyID`, `Size`, `tripscount`, `dateofregister`) VALUES
(1, 6, '10000', 50, '2016-07-20 20:00:00'),
(2, 6, '10000', 8, '0000-00-00 00:00:00'),
(3, 12, '15000', 5, '2016-07-12 20:00:00'),
(4, 2, '15000', 2, '2016-07-11 20:00:00'),
(5, 13, '10000', 7, '2016-07-28 20:00:00'),
(6, 14, '10000', 5, '2016-08-19 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tripskip`
--

CREATE TABLE `tripskip` (
  `ID` int(9) NOT NULL,
  `CompanyID` int(9) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `tripscount` int(9) DEFAULT NULL,
  `dateofregister` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripskip`
--

INSERT INTO `tripskip` (`ID`, `CompanyID`, `Size`, `tripscount`, `dateofregister`) VALUES
(1, 12, NULL, 2, '2016-07-13 20:00:00'),
(2, 12, '', 25, '2016-07-19 20:00:00'),
(3, 12, '', 5, '2016-07-18 20:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abc`
--
ALTER TABLE `abc`
  ADD PRIMARY KEY (`asd`);

--
-- Indexes for table `campstaff`
--
ALTER TABLE `campstaff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `companiesrates`
--
ALTER TABLE `companiesrates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `complainbook`
--
ALTER TABLE `complainbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `foodtype`
--
ALTER TABLE `foodtype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mandayscompanies`
--
ALTER TABLE `mandayscompanies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `roomlist`
--
ALTER TABLE `roomlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `roomtype`
--
ALTER TABLE `roomtype`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `stocksheet`
--
ALTER TABLE `stocksheet`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock_entrance`
--
ALTER TABLE `stock_entrance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock_exit`
--
ALTER TABLE `stock_exit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock_products`
--
ALTER TABLE `stock_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tripcompany`
--
ALTER TABLE `tripcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tripdrinking`
--
ALTER TABLE `tripdrinking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tripprices`
--
ALTER TABLE `tripprices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tripsewage`
--
ALTER TABLE `tripsewage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tripskip`
--
ALTER TABLE `tripskip`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abc`
--
ALTER TABLE `abc`
  MODIFY `asd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campstaff`
--
ALTER TABLE `campstaff`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `companiesrates`
--
ALTER TABLE `companiesrates`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `complainbook`
--
ALTER TABLE `complainbook`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `foodtype`
--
ALTER TABLE `foodtype`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mandayscompanies`
--
ALTER TABLE `mandayscompanies`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roomlist`
--
ALTER TABLE `roomlist`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roomtype`
--
ALTER TABLE `roomtype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stocksheet`
--
ALTER TABLE `stocksheet`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stock_entrance`
--
ALTER TABLE `stock_entrance`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stock_exit`
--
ALTER TABLE `stock_exit`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_products`
--
ALTER TABLE `stock_products`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tripcompany`
--
ALTER TABLE `tripcompany`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tripdrinking`
--
ALTER TABLE `tripdrinking`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tripprices`
--
ALTER TABLE `tripprices`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tripsewage`
--
ALTER TABLE `tripsewage`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tripskip`
--
ALTER TABLE `tripskip`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
