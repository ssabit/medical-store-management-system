-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 07:20 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `phone`, `email`, `address`) VALUES
(1, 'Navana', '942903', 'Navana@gmail.com', 'Dhaka,Bangladesh'),
(2, 'Squre', '823234777', 'Squre@gmail.com', 'Tangail');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(100) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `medicine_type` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `price_per_unit` int(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `current_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `medicine_name`, `medicine_type`, `company_name`, `price_per_unit`, `stock`, `current_stock`) VALUES
(1, 'Napa', 'Tablet', 'Beximco Pharmaceuticals Ltd.', 8, 100, 90),
(2, 'Cab-5', 'Relax', 'Opsonine', 5, 200, 100),
(3, 'Napa Extra', 'PainKiller', 'Squre', 50, 150, 149),
(37, 'Dexpoten', 'Syrup', 'Eskayef Bangladesh Ltd.', 55, 260, 10),
(38, 'Napa', 'Tablet', 'Beximco Pharmaceuticals Ltd.', 50, 110, 99),
(39, 'Seclo', 'Capsule', 'Omeprazole', 5, 75, 59),
(40, 'Arotril', 'Tablet', 'Aristopharma Limited', 50, 16, 16),
(42, 'asd', 'sad', 'sad', 12, 100, 90);

-- --------------------------------------------------------

--
-- Table structure for table `sellsrecord`
--

CREATE TABLE `sellsrecord` (
  `no` int(11) NOT NULL,
  `mediId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `totalBill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellsrecord`
--

INSERT INTO `sellsrecord` (`no`, `mediId`, `name`, `quantity`, `price`, `totalBill`) VALUES
(48, 38, 'Napa', 5, 5, 25),
(49, 39, 'Seclo', 5, 10, 50),
(50, 40, 'Arotril', 5, 5, 25),
(51, 39, 'Seclo', 5, 10, 50),
(52, 39, 'Seclo', 5, 5, 25),
(53, 38, 'Napa', 50, 10, 500),
(54, 40, 'Arotril', 50, 5, 250),
(55, 39, 'Seclo', 5, 10, 50),
(56, 38, 'Napa', 50, 1, 50),
(57, 39, 'Seclo', 5, 13, 65),
(58, 38, 'Napa', 50, 5, 250),
(59, 39, 'Seclo', 5, 10, 50),
(60, 37, 'Dexpoten', 55, 5, 275),
(61, 39, 'Seclo', 5, 10, 50),
(62, 2, 'Cab-5', 5, 5, 25),
(63, 37, 'Dexpoten', 55, 10, 550),
(64, 39, 'Seclo', 5, 10, 50),
(65, 2, 'Cab-5', 5, 10, 50),
(66, 39, 'Seclo', 5, 10, 50),
(67, 3, 'Napa Extra', 50, 10, 500),
(68, 3, 'Napa Extra', 50, 10, 500),
(69, 3, 'Napa Extra', 50, 10, 500),
(70, 3, 'Napa Extra', 50, 50, 2500),
(71, 3, 'Napa Extra', 50, 25, 1250),
(72, 3, 'Napa Extra', 50, 30, 1500),
(73, 39, 'Seclo', 5, 1, 5),
(74, 3, 'Napa Extra', 50, 4, 200),
(75, 3, 'Napa Extra', 50, 4, 200),
(76, 3, 'Napa Extra', 50, 3, 150),
(77, 3, 'Napa Extra', 50, 3, 150),
(78, 3, 'Napa Extra', 50, 3, 150),
(79, 3, 'Napa Extra', 50, 2, 100),
(80, 3, 'Napa Extra', 50, 8, 400),
(81, 3, 'Napa Extra', 50, 8, 400),
(82, 3, 'Napa Extra', 50, 8, 400),
(83, 3, 'Napa Extra', 50, 8, 400),
(84, 3, 'Napa Extra', 50, 7, 350),
(85, 3, 'Napa Extra', 50, 6, 300),
(86, 3, 'Napa Extra', 50, 5, 250),
(87, 37, 'Dexpoten', 55, 10, 550),
(88, 39, 'Seclo', 5, 10, 50),
(89, 38, 'Napa', 50, 17, 850),
(90, 38, 'Napa', 50, 15, 750),
(91, 38, 'Napa', 50, 44, 2200),
(92, 2, 'Cab-5', 5, 10, 50),
(93, 40, 'Arotril', 50, 5, 250),
(94, 40, 'Arotril', 50, 4, 200),
(95, 39, 'Seclo', 5, 10, 50),
(96, 39, 'Seclo', 5, 10, 50),
(97, 39, 'Seclo', 5, 10, 50),
(98, 39, 'Seclo', 68, 10, 680),
(99, 3, 'Napa Extra', 50, 5, 250),
(100, 37, 'Dexpoten', 55, 10, 550),
(101, 37, 'Dexpoten', 55, 9, 495),
(102, 37, 'Dexpoten', 8, 55, 440),
(103, 38, 'Napa', 30, 50, 1500),
(104, 37, 'Dexpoten', 75, 55, 4125),
(105, 37, 'Dexpoten', 74, 55, 4070),
(106, 3, 'Napa Extra', 4, 50, 200),
(107, 3, 'Napa Extra', 4, 50, 200),
(108, 3, 'Napa Extra', 46, 50, 2300),
(109, 3, 'Napa Extra', 10, 50, 500),
(110, 3, 'Napa Extra', 2, 50, 100),
(111, 2, 'Cab-5', 2, 5, 10),
(112, 3, 'Napa Extra', 2, 50, 100),
(113, 3, 'Napa Extra', 2, 50, 100),
(114, 3, 'Napa Extra', 2, 50, 100),
(115, 2, 'Cab-5', 5, 5, 25),
(116, 41, 'nirjor', 10, 50000, 500000),
(117, 41, 'nirjor', 10, 50000, 500000),
(118, 41, 'nirjor', 11, 50000, 550000),
(119, 40, 'Arotril', 41, 50, 2050),
(120, 38, 'Napa', 10, 50, 500),
(121, 37, 'Dexpoten', 10, 55, 550),
(122, 39, 'Seclo', 104, 5, 520),
(123, 40, 'Arotril', 89, 50, 4450),
(124, 38, 'Napa', 10, 50, 500),
(125, 39, 'Seclo', 10, 5, 50),
(126, 38, 'Napa', 1, 50, 50),
(127, 40, 'Arotril', 10, 50, 500),
(128, 40, 'Arotril', 10, 50, 500),
(129, 40, 'Arotril', 15, 50, 750),
(130, 1, 'Napa', 10, 8, 80),
(131, 41, 'skba', 10, 5, 50),
(132, 41, 'skba', 3, 5, 15),
(133, 41, 'skba', 9, 5, 45),
(134, 41, 'skba', 8, 5, 40),
(135, 41, 'skba', 5, 5, 25),
(136, 39, 'Seclo', 6, 5, 30),
(137, 2, 'Cab-5', 200, 10, 2000),
(138, 42, 'asd', 100, 11, 1100),
(139, 42, 'asd', 8, 12, 96),
(140, 42, 'asd', 2, 12, 24),
(141, 3, 'Napa Extra', 1, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(16) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_type` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` text NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_type`, `address`, `mobile`, `gender`, `dob`, `mail`) VALUES
(3, 'admin', 'admin', 'saad', 'sabit', 1, 'home', '123456', 'male', '1-1-1990', 'admin@gmail.com'),
(5, 'asus', 'asus', 'asus', 'asus', 0, 'asus,asus', '1234567890', 'male', 'Jul 1, 2016', 'asus@gmail.com'),
(7, 'nameer', 'nameer', 'nameer', 'hassan', 0, 'dhaka,Bangladesh', '1234667', 'male', 'Feb 28, 2012', 'nameer.nameer@gmail.com'),
(8, 'bappy', 'bappy', 'bappy', 'bapy', 1, 'asdasd', '384924', 'male', 'Aug 12, 2016', 'kasjkljl'),
(10, 'asdf', 'asdf', 'klasjdlk', 'sadasd', 0, 'asda', '234234', 'male', 'Jan 13, 2017', 'adsdad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellsrecord`
--
ALTER TABLE `sellsrecord`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sellsrecord`
--
ALTER TABLE `sellsrecord`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
