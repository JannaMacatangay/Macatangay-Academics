-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 06:18 PM
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
-- Database: `clothespos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`) VALUES
(1, 'Blouse'),
(2, 'Dress'),
(3, 'Pants'),
(4, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `imageFolder` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `name`, `code`, `imageFolder`, `image`) VALUES
(1, 1, 'Casual date Top', 'CDT', 'blouse', 'b1.png'),
(2, 1, 'Church day Top', 'CHDT', 'blouse', 'b2.png'),
(3, 1, 'Casual Photoshoot Top', 'CPT', 'blouse', 'b3.png'),
(4, 1, 'Mall day Top', 'MDT', 'blouse', 'b4.png'),
(5, 1, 'Defense Top', 'DT', 'blouse', 'b5.png'),
(6, 1, 'Presentation day Top', 'PDT', 'blouse', 'b6.png'),
(7, 1, 'Cold weather Top', 'CWT', 'blouse', 'b7.png'),
(8, 1, 'Casual Green Top', 'CGT', 'blouse', 'b8.png'),
(9, 1, 'Refreshing Top', 'RT', 'blouse', 'b9.png'),
(10, 1, 'Birthday Top', 'BT', 'blouse', 'b10.png'),
(11, 1, 'Errand\'s day Top', 'EDT', 'blouse', 'b11.png'),
(12, 1, 'Friendship date Top', 'FDT', 'blouse', 'b12.png'),
(13, 1, 'Conservative Top', 'RT', 'blouse', 'b13.png'),
(14, 1, 'Powerful Top', 'PT', 'blouse', 'b14.png'),
(15, 1, 'School Top', 'RT', 'blouse', 'b15.png'),
(16, 2, 'Cute White Dress', 'CWD', 'dress', 'd1.png'),
(17, 2, 'Flowy Dress', 'FD', 'dress', 'd2.png'),
(18, 2, 'Dalagang Filipina Dress', 'DFD', 'dress', 'd3.png'),
(19, 2, 'Cute and Elegant Pink Dress', 'CEPD', 'dress', 'd4.png'),
(20, 2, 'Black Party Dress', 'BPD', 'dress', 'd5.png'),
(21, 2, 'Casual Green Dress', 'CGD', 'dress', 'd6.png'),
(22, 2, 'Marilyn Monroe Dress', 'MMD', 'dress', 'd7.png'),
(23, 2, 'Kasalan ng Bayan Dress', 'KBD', 'dress', 'd8.png'),
(24, 2, 'Casual Date Dress', 'CDD', 'dress', 'd9.png'),
(25, 2, 'Floral Dress', 'FLD', 'dress', 'd10.png'),
(26, 3, 'School Pants', 'SP', 'pants', 'p1.png'),
(27, 3, 'Dancer Pants', 'DP', 'pants', 'p2.png'),
(28, 3, 'Flowy Pants', 'FP', 'pants', 'p3.png'),
(29, 3, 'Black Defense Pants', 'FLD', 'pants', 'p4.png'),
(30, 3, 'Wide leg Pants', 'WLP', 'pants', 'p5.png'),
(31, 3, 'Star Pants', 'SP', 'pants', 'p6.png'),
(32, 3, 'Casual Pants', 'CP', 'pants', 'p7.png'),
(33, 3, 'Party Pants', 'PP', 'pants', 'p8.png'),
(34, 3, 'Brown Leather Pants', 'BLP', 'pants', 'p9.png'),
(35, 3, 'White Pants', 'WP', 'pants', 'p10.png'),
(36, 4, 'Converse Pink Shoes', 'CPS', 'shoes', 's1.png'),
(37, 4, 'Bulky White Shoes', 'BWS', 'shoes', 's2.png'),
(38, 4, 'White Shoes', 'WS', 'shoes', 's3.png'),
(39, 4, 'Casual rubber shoes', 'CRS', 'shoes', 's4.png'),
(40, 4, 'High heels shoes', 'HHS', 'shoes', 's5.png'),
(41, 4, 'Photoshoot shoes', 'PS', 'shoes', 's6.png'),
(42, 4, 'Black Sandals', 'BS', 'shoes', 's7.png'),
(43, 4, 'Black Boots', 'BBS', 'shoes', 's8.png'),
(44, 4, 'Favorite shoes', 'FS', 'shoes', 's9.png'),
(45, 4, 'Hiking shoes', 'HS', 'shoes', 's10.png');

-- --------------------------------------------------------

--
-- Table structure for table `shoesprices`
--

CREATE TABLE `shoesprices` (
  `priceID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoesprices`
--

INSERT INTO `shoesprices` (`priceID`, `productID`, `price`) VALUES
(1, 36, 1300.00),
(2, 37, 3000.00),
(3, 38, 4300.00),
(4, 39, 2400.00),
(5, 40, 3100.00),
(6, 41, 5400.00),
(7, 42, 3600.00),
(8, 43, 6900.00),
(9, 44, 4700.00),
(10, 45, 7300.00);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `sizeID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `code` varchar(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`sizeID`, `productID`, `name`, `code`, `price`) VALUES
(1, 1, 'small', 'SM', 130.00),
(2, 1, 'medium', 'MD', 135.00),
(3, 1, 'large', 'LG', 140.00),
(4, 2, 'small', 'SM', 140.00),
(5, 2, 'medium', 'MD', 145.00),
(6, 2, 'large', 'LG', 160.00),
(7, 3, 'small', 'SM', 120.00),
(8, 3, 'medium', 'MD', 125.00),
(9, 3, 'large', 'LG', 140.00),
(10, 4, 'small', 'SM', 70.00),
(11, 4, 'medium', 'MD', 80.00),
(12, 4, 'large', 'LG', 90.00),
(13, 5, 'small', 'SM', 130.00),
(14, 5, 'medium', 'MD', 135.00),
(15, 5, 'large', 'LG', 140.00),
(16, 6, 'small', 'SM', 300.00),
(17, 6, 'medium', 'MD', 320.00),
(18, 6, 'large', 'LG', 340.00),
(19, 7, 'small', 'SM', 230.00),
(20, 7, 'medium', 'MD', 235.00),
(21, 7, 'large', 'LG', 250.00),
(22, 8, 'small', 'SM', 120.00),
(23, 8, 'medium', 'MD', 125.00),
(24, 8, 'large', 'LG', 130.00),
(25, 9, 'small', 'SM', 400.00),
(26, 9, 'medium', 'MD', 420.00),
(27, 9, 'large', 'LG', 450.00),
(28, 10, 'small', 'SM', 50.00),
(29, 10, 'medium', 'MD', 60.00),
(30, 10, 'large', 'LG', 70.00),
(31, 11, 'small', 'SM', 300.00),
(32, 11, 'medium', 'MD', 320.00),
(33, 11, 'large', 'LG', 350.00),
(34, 12, 'small', 'SM', 20.00),
(35, 12, 'medium', 'MD', 25.00),
(36, 12, 'large', 'LG', 30.00),
(37, 13, 'small', 'SM', 500.00),
(38, 13, 'medium', 'MD', 520.00),
(39, 13, 'large', 'LG', 550.00),
(40, 14, 'small', 'SM', 360.00),
(41, 14, 'medium', 'MD', 370.00),
(42, 14, 'large', 'LG', 380.00),
(43, 15, 'small', 'SM', 400.00),
(44, 15, 'medium', 'MD', 420.00),
(45, 15, 'large', 'LG', 450.00),
(46, 16, 'small', 'SM', 600.00),
(47, 16, 'medium', 'MD', 670.00),
(48, 16, 'large', 'LG', 690.00),
(49, 17, 'small', 'SM', 1000.00),
(50, 17, 'medium', 'MD', 1200.00),
(51, 17, 'large', 'LG', 1300.00),
(52, 18, 'small', 'SM', 600.00),
(53, 18, 'medium', 'MD', 670.00),
(54, 18, 'large', 'LG', 690.00),
(55, 19, 'small', 'SM', 5000.00),
(56, 19, 'medium', 'MD', 5200.00),
(57, 19, 'large', 'LG', 5300.00),
(58, 20, 'small', 'SM', 1400.00),
(59, 20, 'medium', 'MD', 1420.00),
(60, 20, 'large', 'LG', 1430.00),
(61, 21, 'small', 'SM', 300.00),
(62, 21, 'medium', 'MD', 320.00),
(63, 21, 'large', 'LG', 340.00),
(64, 22, 'small', 'SM', 500.00),
(65, 22, 'medium', 'MD', 580.00),
(66, 22, 'large', 'LG', 600.00),
(67, 23, 'small', 'SM', 2000.00),
(68, 23, 'medium', 'MD', 2100.00),
(69, 23, 'large', 'LG', 2200.00),
(70, 24, 'small', 'SM', 700.00),
(71, 24, 'medium', 'MD', 770.00),
(72, 24, 'large', 'LG', 790.00),
(73, 25, 'small', 'SM', 1600.00),
(74, 25, 'medium', 'MD', 1670.00),
(75, 25, 'large', 'LG', 1690.00),
(76, 26, 'small', 'SM', 600.00),
(77, 26, 'medium', 'MD', 670.00),
(78, 26, 'large', 'LG', 690.00),
(79, 27, 'small', 'SM', 800.00),
(80, 27, 'medium', 'MD', 900.00),
(81, 27, 'large', 'LG', 1000.00),
(82, 28, 'small', 'SM', 1500.00),
(83, 28, 'medium', 'MD', 1570.00),
(84, 28, 'large', 'LG', 1590.00),
(85, 29, 'small', 'SM', 700.00),
(86, 29, 'medium', 'MD', 770.00),
(87, 29, 'large', 'LG', 790.00),
(88, 30, 'small', 'SM', 500.00),
(89, 30, 'medium', 'MD', 570.00),
(90, 30, 'large', 'LG', 590.00),
(91, 31, 'small', 'SM', 1500.00),
(92, 31, 'medium', 'MD', 1520.00),
(93, 31, 'large', 'LG', 1530.00),
(94, 32, 'small', 'SM', 800.00),
(95, 32, 'medium', 'MD', 820.00),
(96, 32, 'large', 'LG', 830.00),
(97, 33, 'small', 'SM', 1700.00),
(98, 33, 'medium', 'MD', 1800.00),
(99, 33, 'large', 'LG', 1900.00),
(100, 34, 'small', 'SM', 2000.00),
(101, 34, 'medium', 'MD', 2100.00),
(102, 34, 'large', 'LG', 2200.00),
(103, 35, 'small', 'SM', 300.00),
(104, 35, 'medium', 'MD', 320.00),
(105, 35, 'large', 'LG', 330.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `shoesprices`
--
ALTER TABLE `shoesprices`
  ADD PRIMARY KEY (`priceID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`sizeID`),
  ADD KEY `productID` (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `shoesprices`
--
ALTER TABLE `shoesprices`
  MODIFY `priceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `sizeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoesprices`
--
ALTER TABLE `shoesprices`
  ADD CONSTRAINT `shoesprices_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
