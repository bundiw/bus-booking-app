-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_bus`
--

CREATE TABLE `book_bus` (
  `book_id` int(5) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(13) NOT NULL,
  `depart_from` varchar(10) NOT NULL,
  `destination` varchar(10) NOT NULL,
  `plate_registration` varchar(10) DEFAULT NULL,
  `bus_comfort` varchar(10) NOT NULL,
  `capacity` int(5) DEFAULT 0,
  `book_date` varchar(12) NOT NULL,
  `book_time` varchar(6) NOT NULL,
  `ticket_amount` float NOT NULL,
  `mpesa_code` varchar(10) NOT NULL,
  `book_status` varchar(7) DEFAULT 'PENDING',
  `ticket_no` int(3) DEFAULT NULL,
  `admin_no` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_bus`
--

INSERT INTO `book_bus` (`book_id`, `user_email`, `user_phone`, `depart_from`, `destination`, `plate_registration`, `bus_comfort`, `capacity`, `book_date`, `book_time`, `ticket_amount`, `mpesa_code`, `book_status`, `ticket_no`, `admin_no`) VALUES
(84, 'bundichris1400@gmail.com', '0702612564', 'mombasa', 'nairobi', 'KCD', 'vvip', 30, '2021-12-12', '07:12', 2850, 'Ak47', 'ACTIVE', 11, 15),
(85, 'bundichris1400@gmail.com', '0702612564', 'mombasa', 'nairobi', 'KCD', 'vvip', 30, '2021-12-12', '07:12', 2850, 'Ak48', 'ACTIVE', 11, 15),
(86, 'bundichris1400@gmail.com', '0702612564', 'mombasa', 'nairobi', 'KAQ', 'Ordinary', 30, '2021-11-12', '10:00', 2500, 'Ak49', 'PENDING', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `plate_registration` varchar(10) NOT NULL,
  `bus_condition` varchar(10) NOT NULL,
  `bus_capacity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `user_id`, `plate_registration`, `bus_condition`, `bus_capacity`) VALUES
(19, 3, 'KCL 117M', 'new', 30),
(21, 3, 'KBW 458Y', 'new', 30),
(22, 3, 'KBL', 'medium', 60),
(24, 3, 'KDA', 'new', 50),
(25, 3, 'KAY 789E', 'old', 50),
(26, 3, 'KCD', 'medium', 30),
(27, 3, 'KAQ', 'old', 30),
(28, 3, 'KAD 780Q', 'medium', 60),
(30, 15, 'KWE 789', 'OLD', 50);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `plate_registration` varchar(10) NOT NULL,
  `depart_from` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `bus_comfort` varchar(10) NOT NULL,
  `travel_date` varchar(10) NOT NULL,
  `travel_time` varchar(5) NOT NULL,
  `travel_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_id`, `plate_registration`, `depart_from`, `destination`, `bus_comfort`, `travel_date`, `travel_time`, `travel_cost`) VALUES
(3, 'KCD', 'mombasa', 'nairobi', 'vvip', '2021-12-12', '07:12', 3000),
(4, 'KAQ', 'mombasa', 'nairobi', 'Ordinary', '2021-11-12', '10:00', 2500),
(5, 'KAY 789E', 'mombasa', 'nairobi', 'vip', '2021-12-11', '12:00', 2700),
(6, 'KAD 780Q', 'mombasa', 'nairobi', 'Ordinary', '2022-11-01', '14:00', 2500),
(7, 'KCD', 'Meru', 'Nairobi', 'Ordinary', '2021-12-11', '19:00', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `bill_id` int(5) NOT NULL,
  `user_phone` varchar(13) NOT NULL,
  `paid_amount` float NOT NULL,
  `mpesa_code` varchar(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`bill_id`, `user_phone`, `paid_amount`, `mpesa_code`, `status`) VALUES
(1, '070261', 2000, 'AK47', 1),
(2, '0702', 500, 'AK48', 1),
(3, '07', 2500, 'AK49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `phone`, `email`, `password`, `gender`) VALUES
(14, 'Christoper Bundi', '0702612564', 'bundichris1400@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male'),
(15, 'Lilian', '072319', 'lilian@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male'),
(16, 'Mercyline', '072358', 'merry@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_bus`
--
ALTER TABLE `book_bus`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `user_email` (`user_email`,`user_phone`,`mpesa_code`),
  ADD KEY `mpesa_code` (`mpesa_code`),
  ADD KEY `admin_no` (`admin_no`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`),
  ADD UNIQUE KEY `plate_value` (`plate_registration`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `plate_registration` (`plate_registration`,`travel_date`,`travel_time`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`mpesa_code`),
  ADD UNIQUE KEY `paid_amount` (`paid_amount`,`mpesa_code`),
  ADD UNIQUE KEY `bill_id` (`bill_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_bus`
--
ALTER TABLE `book_bus`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `bus_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `bill_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_bus`
--
ALTER TABLE `book_bus`
  ADD CONSTRAINT `book_bus_ibfk_1` FOREIGN KEY (`mpesa_code`) REFERENCES `transactions` (`mpesa_code`),
  ADD CONSTRAINT `book_bus_ibfk_2` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `book_bus_ibfk_3` FOREIGN KEY (`admin_no`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `book_bus_ibfk_4` FOREIGN KEY (`plate_registration`) REFERENCES `buses` (`plate_registration`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`plate_registration`) REFERENCES `buses` (`plate_registration`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
