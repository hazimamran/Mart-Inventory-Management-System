-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 08:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_ID` varchar(20) NOT NULL,
  `admin_pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_ID`, `admin_pass`, `admin_name`) VALUES
('1', '123abc', 'hazim');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `C_ID` int(255) NOT NULL,
  `cash` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`C_ID`, `cash`, `total`, `balance`, `date`, `month`, `year`) VALUES
(1, 11.00, 10.00, 1.00, '09-06-2022', 6, 2022),
(2, 10.00, 10.00, 0.00, '09-06-2022', 6, 2022),
(3, 5.00, 5.00, 0.00, '10-06-2022', 6, 2022),
(15, 10.50, 9.50, 1.00, '12-06-2021', 6, 2021),
(16, 8.50, 5.50, 2.00, '12-06-2022', 6, 2022),
(17, 20.00, 15.00, 5.00, '13-06-2022', 6, 2022),
(18, 10.00, 5.00, 5.00, '13-06-2022', 6, 2022),
(19, 20.00, 15.00, 5.00, '13-06-2022', 6, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `staff_pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`staff_name`, `staff_pass`) VALUES
('hazimamran', '123123'),
('Ali', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` int(25) NOT NULL,
  `product_price` double NOT NULL,
  `brand` varchar(255) NOT NULL,
  `expireddate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`product_id`, `product_name`, `product_quantity`, `product_price`, `brand`, `expireddate`) VALUES
(2, 'Sardin', 3, 5, 'Kasturi', '20/12/2030'),
(3, 'Kuey Teow', 5, 10, 'pelangi', '12/4/3030'),
(4, 'Toothpaste', 49, 10, 'Colgate', '20/10/2025'),
(5, 'Toothpaste', 50, 5, 'Darlie', '20/05/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `C_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
