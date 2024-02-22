-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: oct 31, 2023 at 11:22 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cropname` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_mobile` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_address` varchar(500) NOT NULL,
  `c_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`c_id`, `c_name`, `c_mobile`, `c_email`, `c_address`, `c_message`) VALUES
(6, 'Melisa', '0970952525', 'melisakachali@gmail.com', 'ndola', 'How many times should water my crops');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `Crop_id` int(255) NOT NULL,
  `Crop_name` varchar(255) NOT NULL,
  `N_value` double NOT NULL,
  `P_value` double NOT NULL,
  `K_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`Crop_id`, `Crop_name`, `N_value`, `P_value`, `K_value`) VALUES
(1, 'Rice', 20, 25, 25),
(2, 'wheat', 50, 25, 0),
(3, 'Maize', 135, 62.5, 50),
(4, 'Cotton', 50, 25, 25),
(5, 'Sweetpotato', 20, 80, 40),
(6, 'cassava', 12.5, 25, 12.5),
(7, 'Ground Nuts', 25, 50, 75),
(8, 'Sugarcane', 300, 100, 200);

-- --------------------------------------------------------

--
-- Table structure for table `custlogin`
--

CREATE TABLE `custlogin` (
  `cust_id` int(20) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custlogin`
--

INSERT INTO `custlogin` (`cust_id`, `cust_name`, `password`, `email`, `address`, `city`, `pincode`, `state`, `phone_no`, otp) VALUES
(1, 'Taonga Kachali', 'password', 'kachalitaonga92@gmail.com', 'northrise', 'ndola', '000000', 'copperbelt', '0762028181',0);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `DistCode` int(11) NOT NULL,
  `StCode` int(11) DEFAULT NULL,
  `DistrictName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- -- Dumping data for table `district`
INSERT INTO `district` (`DistCode`, `StCode`, `DistrictName`) VALUES
(1, 1, 'Chililabombwe'),
(2, 1, 'Chingola'),
(3, 1, 'Kalulushi'),
(4, 1, 'Kitwe'),
(5, 1, 'Luanshya'),
(6, 1, 'Mufumbwe'),
(7, 2, 'Kabompo'),
(8, 2, 'Kasempa'),
(9, 2, 'Kipushi'),
(10, 2, 'Mwinilunga'),
(11, 2, 'Solwezi'),
(12, 3, 'Chavuma'),
(13, 3, 'Kawambwa'),
(14, 3, 'Mbereshi'),
(15, 3, 'Mporokoso'),
(16, 3, 'Mpulungu'),
(17, 4, 'Isoka'),
(18, 4, 'Kasama'),
(19, 4, 'Luwingu'),
(20, 4, 'Mungwi'),
(21, 4, 'Mpika'),
(22, 4, 'Nakonde'),
(23, 4, 'Shiwangandu'),
(24, 5, 'Chadiza'),
(25, 5, 'Chama'),
(26, 5, 'Chipata'),
(27, 5, 'Katete'),
(28, 5, 'Lundazi'),
(29, 5, 'Mambwe'),
(30, 5, 'Nyimba'),
(31, 6, 'Chinsali'),
(32, 6, 'Isoka'),
(33, 6, 'Kasama'),
(34, 6, 'Mansa'),
(35, 6, 'Mbala'),
(36, 6, 'Mwense'),
(37, 7, 'Chilubi'),
(38, 7, 'Kaputa'),
(39, 7, 'Kawambwa'),
(40, 7, 'Luapula'),
(41, 7, 'Mbala'),
(42, 7, 'Mporokoso'),
(43, 8, 'Chimwemwe'),
(44, 8, 'Chingola'),
(45, 8, 'Kankoyo'),
(46, 8, 'Kawama'),
(47, 8, 'Kitwe'),
(48, 8, 'Luanshya'),
(49, 8, 'Ndola'),
(50, 8, 'Nkana'),
(51, 8, 'Ndeke'),
(52, 9, 'Baluba'),
(53, 9, 'Chambeshi'),
(54, 9, 'Kawama'),
(55, 9, 'Kawambwa'),
(56, 9, 'Luanshya'),
(57, 9, 'Mansa'),
(58, 9, 'Mufulira'),
(59, 9, 'Ndola'),
(60, 9, 'Nkana'),
(61, 10, 'Chambeshi'),
(62, 10, 'Kabompo'),
(63, 10, 'Kasempa'),
(64, 10, 'Kipushi'),
(65, 10, 'Mansa'),
(66, 10, 'Mufumbwe'),
(67, 10, 'Solwezi'),
(68, 11, 'Chadiza'),
(69, 11, 'Chama'),
(70, 11, 'Chipata'),
(71, 11, 'Katete'),
(72, 11, 'Lundazi'),
(73, 11, 'Mambwe'),
(74, 11, 'Nyimba'),
(75, 12, 'Chavuma'),
(76, 12, 'Kabompo'),
(77, 12, 'Kasempa'),
(78, 12, 'Kipushi'),
(79, 12, 'Mwinilunga'),
(80, 12, 'Solwezi'),
(81, 13, 'Isoka'),
(82, 13, 'Kasama'),
(83, 13, 'Luwingu'),
(84, 13, 'Mungwi'),
(85, 13, 'Mpika'),
(86, 13, 'Nakonde'),
(87, 13, 'Shiwangandu'),
(88, 14, 'Chilubi'),
(89, 14, 'Kaputa'),
(90, 14, 'Kawambwa'),
(91, 14, 'Luapula'),
(92, 14, 'Mbala'),
(93, 14, 'Mporokoso'),
(94, 15, 'Chimwemwe'),
(95, 15, 'Chingola'),
(96, 15, 'Kankoyo'),
(97, 15, 'Kawama'),
(98, 15, 'Kitwe'),
(99, 15, 'Luanshya'),
(100, 15, 'Ndola'),
(101, 15, 'Nkana'),
(102, 15, 'Ndeke'),
(103, 16, 'Baluba'),
(104, 16, 'Chambeshi'),
(105, 16, 'Kawama'),
(106, 16, 'Kawambwa'),
(107, 16, 'Luanshya'),
(108, 16, 'Mansa'),
(109, 16, 'Mufulira'),
(110, 16, 'Ndola'),
(111, 16, 'Nkana'),
(112, 17, 'Chambeshi'),
(113, 17, 'Kabompo'),
(114, 17, 'Kasempa'),
(115, 17, 'Kipushi'),
(116, 17, 'Mansa'),
(117, 17, 'Mufumbwe'),
(118, 17, 'Solwezi'),
(119, 18, 'Chadiza'),
(120, 18, 'Chama'),
(121, 18, 'Chipata'),
(122, 18, 'Katete'),
(123, 18, 'Lundazi'),
(124, 18, 'Mambwe'),
(125, 18, 'Nyimba'),
(126, 19, 'Chavuma'),
(127, 19, 'Kabompo'),
(128, 19, 'Kasempa'),
(129, 19, 'Kipushi'),
(130, 19, 'Mwinilunga'),
(131, 19, 'Solwezi'),
(132, 20, 'Isoka'),
(133, 20, 'Kasama'),
(134, 20, 'Luwingu'),
(135, 20, 'Mungwi'),
(136, 20, 'Mpika'),
(137, 20, 'Nakonde'),
(138, 20, 'Shiwangandu'),
(139, 21, 'Chilubi'),
(140, 21, 'Kaputa'),
(141, 21, 'Kawambwa'),
(142, 21, 'Luapula'),
(143, 21, 'Mbala'),
(144, 21, 'Mporokoso'),
(145, 22, 'Chimwemwe'),
(146, 22, 'Chingola'),
(147, 22, 'Kankoyo'),
(148, 22, 'Kawama'),
(149, 22, 'Kitwe'),
(150, 22, 'Luanshya'),
(151, 22, 'Ndola'),
(152, 22, 'Nkana'),
(153, 22, 'Ndeke'),
(154, 23, 'Baluba'),
(155, 23, 'Chambeshi'),
(156, 23, 'Kawama'),
(157, 23, 'Kawambwa'),
(158, 23, 'Luanshya'),
(159, 23, 'Mansa'),
(160, 23, 'Mufulira'),
(161, 23, 'Ndola'),
(162, 23, 'Nkana');
-- --------------------------------------------------------

--
-- Table structure for table `farmerlogin`
--

CREATE TABLE `farmerlogin` (
  `farmer_id` int(11) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `F_gender` varchar(255) NOT NULL,
  `F_birthday` varchar(255) NOT NULL,
  `F_State` varchar(255) NOT NULL,
  `F_District` varchar(255) NOT NULL,
  `F_Location` varchar(255) NOT NULL,
  `otp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmerlogin`
--

INSERT INTO `farmerlogin` (`farmer_id`, `farmer_name`, `password`, `email`, `phone_no`, `F_gender`, `F_birthday`, `F_State`, `F_District`, `F_Location`, otp) VALUES
(44, 'Taonga Kachali', 'password', 'kachalitaonga92@gmail.com', '0762028181', 'female', '2000-10-23', 'Ndola', 'CB', 'Northrise', 0);

-- --------------------------------------------------------

-- Table structure for table `farmer_crops_trade`
--

CREATE TABLE `farmer_crops_trade` (
  `trade_id` int(11) NOT NULL,
  `farmer_fkid` int(50) NOT NULL,
  `Trade_crop` varchar(255) NOT NULL,
  `Crop_quantity` double NOT NULL,
  `costperkg` int(11) NOT NULL,
  `msp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_crops_trade`
--

INSERT INTO `farmer_crops_trade` (`trade_id`, `farmer_fkid`, `Trade_crop`, `Crop_quantity`, `costperkg`, `msp`) VALUES
(103, 44, 'maize', 8, 40, 60),
(104, 44, 'maize', 2, 39, 60),
(105, 44, 'millets', 2, 15, 23),
(106, 44, 'cotton', 8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `farmer_history`
--

CREATE TABLE `farmer_history` (
  `History_id` int(11) NOT NULL,
  `farmer_id` int(50) NOT NULL,
  `farmer_crop` varchar(255) NOT NULL,
  `farmer_quantity` int(50) NOT NULL,
  `farmer_price` int(50) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_history`
--

INSERT INTO `farmer_history` (`History_id`, `farmer_id`, `farmer_crop`, `farmer_quantity`, `farmer_price`, `date`) VALUES
(25, 44, 'maize', 1, 23, '01/04/2023'),
(26, 44, 'maize', 1, 23, '03/04/2023'),
(27, 44, 'beans', 1, 2, '03/04/2023'),
(28, 44, 'rice', 1, 60, '03/04/2023'),
(29, 44, 'soyabean', 1, 23, '03/04/2023'),
(30, 44, 'beans', 1, 2, '03/04/2023'),
(31, 44, 'rice', 1, 60, '03/04/2023');

-- --------------------------------------------------------

--
-- Table structure for table `production_approx`
--

CREATE TABLE `production_approx` (
  `crop` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_approx`
--

INSERT INTO `production_approx` (`crop`, `quantity`) VALUES
('rice', 10),
('soyabean', 2),
('beans', 8),
('cotton', 0),
('sugarcane', 0),
('pineapples', 0),
('cotton', 0),
('millet', 0),
('maize', 0),
('groundnuts', 0),
('cassava', 0),
('sorghum', 0),
('sunflower', 0),
('banana', 0),
('wheat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `StCode` int(11) NOT NULL,
  `StateName` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StCode`, `StateName`) VALUES
(1, 'Central Province'),
(2, 'Copperbelt Province'),
(3, 'Eastern Province'),
(4, 'Luapula Province'),
(5, 'Lusaka Province'),
(6, 'Muchinga Province'),
(7, 'North-Western Province'),
(8, 'Northern Province'),
(9, 'Southern Province'),
(10, 'Western Province');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cropname` (`cropname`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`Crop_id`);

--
-- Indexes for table `custlogin`
--
ALTER TABLE `custlogin`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DistCode`),
  ADD KEY `StCode` (`StCode`);

--
-- Indexes for table `farmerlogin`
--
ALTER TABLE `farmerlogin`
  ADD PRIMARY KEY (`farmer_id`);

--
-- Indexes for table `farmer_crops_trade`
--
ALTER TABLE `farmer_crops_trade`
  ADD PRIMARY KEY (`trade_id`),
  ADD KEY `farmer_fkid` (`farmer_fkid`);

--
-- Indexes for table `farmer_history`
--
ALTER TABLE `farmer_history`
  ADD PRIMARY KEY (`History_id`);

--
-- Indexes for table `production_approx`
--
ALTER TABLE `production_approx`
  ADD PRIMARY KEY (`crop`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`StCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custlogin`
--
ALTER TABLE `custlogin`
  MODIFY `cust_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `DistCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

--
-- AUTO_INCREMENT for table `farmerlogin`
--
ALTER TABLE `farmerlogin`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `farmer_crops_trade`
--
ALTER TABLE `farmer_crops_trade`
  MODIFY `trade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `farmer_history`
--
ALTER TABLE `farmer_history`
  MODIFY `History_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `StCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farmer_crops_trade`
--
ALTER TABLE `farmer_crops_trade`
  ADD CONSTRAINT `farmer_crops_trade_ibfk_1` FOREIGN KEY (`farmer_fkid`) REFERENCES `farmerlogin` (`farmer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
