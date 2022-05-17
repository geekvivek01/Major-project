-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 06:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newosms`
--
CREATE DATABASE IF NOT EXISTS `newosms` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `newosms`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(0, 'Admin', 'admin123@gmail.com', '123456'),
(1, 'vivek', 'vivek123@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tb`
--

CREATE TABLE `assets_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) COLLATE utf8_bin NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets_tb`
--

INSERT INTO `assets_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(2467389, 'Monitor', '2022-05-17', 11, 20, 3000, 5000),
(3823095, 'Mouse', '2022-04-26', 2, 12, 300, 400),
(3985183, 'Keyword', '2022-04-26', 2, 12, 200, 300);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(20) NOT NULL,
  `assign_tech` varchar(60) COLLATE utf8_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(1660203, 4362655, 'LENEVO,WASHING MACHINE', 'keyword not working something ', 'rohan', '187/a', '187/a', 'dsd', 'wb', 432651, 'rohan123@gmail.com', 5698741236, 'sohan', '2022-05-16'),
(7962388, 3414499, 'laptop is not working', 'laptop is not working laptop is not working', 'rohan', 'Address 128/B', 'Address 128/B', 'JORHAT', 'west bangal', 253698, 'rohan123@gmail.com', 1234567893, 'sohan', '2022-04-25'),
(8777193, 7103634, 'keyword not working', 'mouse is not working something', 'rohan', 'Address 124/A', 'Address 124/A', 'kotkata', 'ASSAM', 253698, 'rohan123@gmail.com', 7894561236, 'sohan', '2022-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1330775, 'kamesh', '187/A Maligaon', 'Keyword', 1, 300, 300, '2022-05-20'),
(1942914, 'ram', '458/A', 'Monitor', 1, 5000, 5000, '2022-05-18'),
(2327674, 'ram', '458/A', 'Monitor', 1, 5000, 5000, '2022-05-16'),
(2541238, 'kamesh', '187/A Maligaon', 'Mouse', 4, 400, 1600, '2022-05-17'),
(3327326, 'rohit ', '188/A Maligaon', 'Mouse', 1, 400, 400, '2022-04-29'),
(3535713, 'kamesh', 'Maligaon', 'Mouse', 1, 400, 400, '2022-04-27'),
(3667459, 'ram', '458/A', 'Monitor', 1, 5000, 5000, '2022-05-17'),
(4161164, 'kamesh', '187/A Maligaon', 'Mouse', 1, 400, 400, '2022-05-17'),
(5303814, 'fthtfy', '356', 'Monitor', 1, 5000, 5000, '2022-05-16'),
(5401517, 'kamesh', '187/A Maligaon', 'Monitor', 1, 5000, 5000, '2022-05-17'),
(5501416, 'kamesh', '187/A Maligaon', 'Monitor', 1, 5000, 5000, '2022-05-16'),
(5626195, 'vivek', '199/A', 'Monitor', 1, 5000, 5000, '2022-05-17'),
(5999166, 'kamesh', '187/A Maligaon', 'Monitor', 1, 5000, 5000, '2022-05-27'),
(6039339, 'kamesh', '187/A Maligaon', 'Keyword', 1, 300, 300, '2022-05-19'),
(6110112, 'ram', '458/A', 'Monitor', 1, 5000, 5000, '2022-05-17'),
(6498042, 'rohit sharma', '187/A Maligaon', 'Keyword', 2, 300, 600, '2022-04-29'),
(7635710, 'kamesh', '187/A Maligaon', 'Keyword', 1, 300, 300, '2022-05-17'),
(7909882, 'kamesh', '187/A Maligaon', 'Monitor', 1, 5000, 5000, '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `requestlogin_tb`
--

CREATE TABLE `requestlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requestlogin_tb`
--

INSERT INTO `requestlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(13, 'rajesh', 'rajesh123@gmail.com', '321654'),
(14, 'rohan kumar', 'rohan123@gmail.com', '123456'),
(15, 'm!n', 'dfd@hmail.com', '1234'),
(16, 'jj', 'min@hmail.com', '9632'),
(17, 'nitish', 'nitish@gmail.com', '123456'),
(18, 'rakesh', 'rakesh@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(20) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(4362655, 'LENEVO,WASHING MACHINE', 'keyword not working something ', 'rohan', '187/a', '187/a', 'dsd', 'wb', 432651, 'rohan123@gmail.com', 5698741236, '2022-05-16'),
(7204220, 'DELL,LAPTOP/PC', 'laptop is not working laptop is not working', 'rohan', '199/A', '199/A', 'Nagaon', 'ASSAM', 781014, 'rohan123@gmail.com', 7896541236, '2022-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empname` varchar(60) COLLATE utf8_bin NOT NULL,
  `empcity` varchar(60) COLLATE utf8_bin NOT NULL,
  `empMobile` bigint(20) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empname`, `empcity`, `empMobile`, `empEmail`) VALUES
(3397092, 'Sohan', 'Jorhat', 7002548687, 'shoan123@gmail.com'),
(7589718, 'Kunal Deka', 'Guwahati', 7002548689, 'kunal123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets_tb`
--
ALTER TABLE `assets_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requestlogin_tb`
--
ALTER TABLE `requestlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requestlogin_tb`
--
ALTER TABLE `requestlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
