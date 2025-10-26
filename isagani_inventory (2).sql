-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2025 at 11:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isagani_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catid` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` double NOT NULL,
  `discount` double NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `total` double NOT NULL,
  `payment_type` tinytext NOT NULL,
  `due` double NOT NULL,
  `paid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`invoice_id`, `order_date`, `subtotal`, `discount`, `sgst`, `cgst`, `total`, `payment_type`, `due`, `paid`) VALUES
(8, '2025-09-26', 500, 20, 2.3, 2.5, 424, 'cash', 424, 0),
(9, '2025-09-26', 500, 20, 2.3, 2.5, 424, 'cash', 424, 0),
(10, '2025-09-26', 500, 20, 2.3, 2.5, 424, 'cash', 424, 0),
(11, '2025-09-26', 550, 20, 2.3, 2.5, 466.4, 'cash', 466.4, 0),
(12, '2025-09-26', 550, 20, 2.3, 2.5, 466.4, 'cash', 466.4, 0),
(13, '2025-09-27', 7000, 20, 2.3, 2.5, 5936, 'cash', -64, 6000),
(14, '2025-10-01', 10000, 20, 2.3, 2.5, 8480, 'cash', 7480, 1000),
(15, '2025-10-01', 5000, 20, 2.3, 2.5, 4240, 'cash', -760, 5000),
(16, '2025-10-17', 0, 20, 2.3, 2.5, 0, 'cash', 0, 0),
(17, '2025-10-17', 0, 20, 2.3, 2.5, 0, 'cash', -1000, 1000),
(18, '2025-10-17', 1000, 20, 2.3, 2.5, 848, 'cash', -152, 1000),
(19, '2025-10-17', 1000, 20, 2.3, 2.5, 848, 'cash', -152, 1000),
(20, '2025-10-17', 1900, 20, 2.3, 2.5, 1611.2, 'cash', -388.8, 2000),
(21, '2025-10-21', 3800, 20, 2.3, 2.5, 3222.4, 'cash', -777.6, 4000),
(22, '2025-10-24', 3000, 20, 2.3, 2.5, 2544, 'cash', -456, 3000),
(23, '2025-10-24', 1900, 20, 2.3, 2.5, 1611.2, 'cash', 388.8, 2000),
(24, '2025-10-24', 1000, 20, 2.3, 2.5, 848, 'cash', 152, 1000),
(25, '2025-10-24', 1000, 20, 2.3, 2.5, 848, 'cash', -152, 1000),
(26, '2025-10-24', 1950, 0, 2.3, 2.5, 2043.6, 'cash', 2043.6, 0),
(44, '2025-10-25', 1000, 20, 2.3, 2.5, 848, 'cash', -152, 1000),
(45, '2025-10-25', 3000, 20, 2.3, 2.5, 2544, 'cash', -456, 3000),
(46, '2025-10-25', 1000, 20, 2.3, 2.5, 848, 'cash', -152, 1000),
(47, '2025-10-25', 1050, 0, 2.3, 2.5, 1100.4, 'cash', -199.6, 1300),
(48, '2025-10-25', 450, 20, 2.3, 2.5, 381.6, 'cash', -118.4, 500),
(49, '2025-10-25', 1450, 20, 2.3, 2.5, 1229.6, 'cash', -770.4, 2000),
(50, '2025-10-25', 1050, 0, 2.3, 2.5, 1100.4, 'cash', -99.6, 1200),
(51, '2025-10-25', 1000, 0, 2.3, 2.5, 1048, 'cash', -452, 1500),
(52, '2025-10-25', 1050, 0, 2.3, 2.5, 1100.4, 'cash', -99.6, 1200),
(53, '2025-10-25', 450, 20, 2.3, 2.5, 381.6, 'cash', -118.4, 500),
(54, '2025-10-25', 500, 20, 2.3, 2.5, 424, 'cash', -76, 500),
(55, '2025-10-25', 450, 20, 2.3, 2.5, 381.6, 'cash', -118.4, 500),
(56, '2025-10-25', 500, 20, 2.3, 2.5, 424, 'cash', -76, 500),
(57, '2025-10-25', 1050, 0, 2.3, 2.5, 1100.4, 'cash', -399.6, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_details`
--

CREATE TABLE `tbl_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `barcode` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` double NOT NULL,
  `saleprice` double NOT NULL,
  `order_date` date NOT NULL,
  `servicetype` varchar(50) DEFAULT 'Pick up',
  `addfee` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice_details`
--

INSERT INTO `tbl_invoice_details` (`id`, `invoice_id`, `barcode`, `product_id`, `product_name`, `qty`, `rate`, `saleprice`, `order_date`, `servicetype`, `addfee`) VALUES
(6, 8, '11 Kg (Standard)', 21, 'STANDARD', 1, 12, 500, '2025-09-26', 'Pick up', 0.00),
(7, 9, '2.7 kg (Small)', 26, 'SMALL', 1, 10, 500, '2025-09-26', 'Pick up', 0.00),
(8, 10, '', 26, 'SMALL', 1, 9, 500, '2025-09-26', 'Pick up', 0.00),
(9, 12, '2.7 kg (Small)', 33, 'SMALL', 1, 10, 550, '2025-09-26', 'Pick up', 0.00),
(10, 13, '0', 31, 'Standard ', 10, 13, 7000, '2025-09-27', 'Pick up', 0.00),
(11, 14, '11', 46, 'Lpg-002', 10, 45, 10000, '2025-10-01', 'Pick up', 0.00),
(12, 15, '5', 44, 'Lpg-001', 5, 50, 5000, '2025-10-01', 'Pick up', 0.00),
(13, 18, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-17', 'Pick up', 0.00),
(14, 19, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-17', 'Pick up', 0.00),
(15, 20, '', 65, '1123', 1, 1900, 1900, '2025-10-17', 'Pick up', 0.00),
(16, 21, '', 65, '1123', 2, 1900, 3800, '2025-10-21', 'Pick up', 0.00),
(17, 22, 'undefined', 44, 'Lpg-001', 3, 29, 3000, '2025-10-24', 'Pick up', 0.00),
(20, 23, 'undefined', 65, '1123', 1, 18, 1900, '2025-10-24', 'Pick up', 0.00),
(26, 24, '', 44, 'Lpg-001', 1, 26, 1000, '2025-10-24', 'Pick up', 0.00),
(27, 25, 'undefined', 44, 'Lpg-001', 1, 25, 1000, '2025-10-24', 'Pick up', 0.00),
(28, 26, '', 65, '1123', 1, 1900, 1950, '2025-10-24', 'Pick up', 0.00),
(29, 44, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-25', 'Pick up', 0.00),
(30, 45, '', 44, 'Lpg-001', 3, 1000, 3000, '2025-10-25', 'Pick up', 0.00),
(31, 46, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-25', 'Pick up', 0.00),
(32, 47, '', 44, 'Lpg-001', 1, 1000, 1050, '2025-10-25', 'Delivery', 50.00),
(33, 48, '', 66, '10004', 1, 450, 450, '2025-10-25', 'Pick up', 0.00),
(34, 49, '', 66, '10004', 1, 450, 450, '2025-10-25', 'Pick up', 0.00),
(35, 49, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-25', 'Pick up', 0.00),
(36, 50, '', 44, 'Lpg-001', 1, 1000, 1050, '2025-10-25', 'Delivery', 50.00),
(37, 51, '', 44, 'Lpg-001', 1, 1000, 1000, '2025-10-25', 'Pick up', 0.00),
(38, 52, '', 44, 'Lpg-001', 1, 1000, 1050, '2025-10-25', 'Delivery', 50.00),
(39, 53, '', 66, '10004', 1, 450, 450, '2025-10-25', 'Pick up', 0.00),
(40, 54, '', 66, '10004', 1, 450, 500, '2025-10-25', 'Delivery', 50.00),
(41, 55, '', 66, '10004', 1, 450, 450, '2025-10-25', 'Pick up', 0.00),
(42, 56, '', 66, '10004', 1, 450, 500, '2025-10-25', 'Delivery', 50.00),
(43, 57, '', 44, 'Lpg-001', 1, 1000, 1050, '2025-10-25', 'Delivery', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pid` int(11) NOT NULL,
  `product` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `purchaseprice` float NOT NULL,
  `saleprice` float NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pid`, `product`, `category`, `description`, `stock`, `brand`, `expirydate`, `purchaseprice`, `saleprice`, `image`) VALUES
(44, 'Lpg-001', '5 kg (Medium)', 'household', 13, 'PRYCEGAS', NULL, 700, 1000, '68dc89060c4c4.jpg'),
(46, 'Lpg-002', '11 Kg ', 'Household', 35, 'PRYCEGAS', NULL, 0, 0, '68dc89ca3d243.jpg'),
(49, 'Lpg-003', '22 kg', 'household', 30, 'PRYCEGAS', NULL, 700, 1000, '68dc89060c4c4.jpg'),
(58, 'Lpg-004', '50 Kg ', 'Household', 50, 'PRYCEGAS', NULL, 0, 0, '68dc89ca3d243.jpg'),
(66, '10004', '5 kg (Medium)', 'asdadasd', 44, 'lpgbrand', '2025-10-25', 400, 450, '68fcc61e6583f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxdis`
--

CREATE TABLE `tbl_taxdis` (
  `taxdis_id` int(11) NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taxdis`
--

INSERT INTO `tbl_taxdis` (`taxdis_id`, `sgst`, `cgst`, `discount`) VALUES
(1, 2.3, 2.5, 20),
(2, 50, 55, 50),
(3, 2, 3, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userpassword` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL,
  `userage` int(200) NOT NULL,
  `useraddress` varchar(200) NOT NULL,
  `usercontact` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `useremail`, `userpassword`, `role`, `userage`, `useraddress`, `usercontact`) VALUES
(13, 'SPM LPG TRADING', 'isagani@gmail.com', 'isagani', 'Admin', 20, 'subic', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  ADD PRIMARY KEY (`taxdis_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  MODIFY `taxdis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
