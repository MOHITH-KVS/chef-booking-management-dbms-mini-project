-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 05:40 PM
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
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `chef_id` int(11) DEFAULT NULL,
  `chef_name` varchar(255) DEFAULT NULL,
  `chef_contact` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_contact` varchar(255) DEFAULT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `chef_id`, `chef_name`, `chef_contact`, `user_name`, `user_contact`, `booking_time`) VALUES
(21, 44, 'Poojitha', '6648697397', 'Alice', '37088970', '2024-07-16 03:50:04'),
(22, 2, 'V.Yuvanmai', '7037534236', 'Henry', '63983955', '2024-07-16 03:50:47'),
(23, 21, 'Mohit k.v.s', '8412203331', 'Jack', '63327316', '2024-07-16 03:51:53'),
(24, 34, 'Deepak', '0458585919', 'Henry', '69465651', '2024-07-16 03:54:59'),
(25, 5, 'Siva', '9704729440', 'Bob', '45473760', '2024-07-16 04:52:24'),
(26, 6, 'Namitha', '9154377440', 'Ivy', '86390141', '2024-07-16 04:53:58'),
(27, 17, 'J.Gayaneswari', '8308122245', 'Eve', '58064959', '2024-07-16 04:58:45'),
(28, 1, 'D.Rohit', '8300963238', 'Grace', '20696666', '2024-07-16 05:24:43'),
(29, 2, 'V.Yuvanmai', '7037534236', 'Alice', '15153877', '2024-07-16 15:46:22'),
(30, 3, 'MD.Abdul', '6305251208', 'Jack', '95343998', '2024-07-22 11:30:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
