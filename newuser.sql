-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 05:42 PM
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
-- Database: `newuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'gautham', 'sai', 'gauthamsai88@gmail.com', '$2y$10$cf7oZuvaRxRrQvqul56Q.u2HROlCfURuBgva1XllnhhJpnI6CFkm6'),
(3, 'mohith', 'sai', 'mohith@gmail.com', '$2y$10$nrPuHQF2Jf4vO15nzvAM3uW9G.fPHmF7ocxfPaEz1dNmL3puioTL.'),
(4, 'rishabh', 'patel', 'patelrishabh998935@gmail.com', '$2y$10$tnAFlBb5JHlMUgrIOP1ifORS/PLYLF4/h378f2h.4/mXPC48ZhO9e'),
(5, 'pranitham', 'malla', 'pranitham@gmail.com', '$2y$10$.pPH5a4/33Bg6LvMK4mNduOcVfOYfd6DRQbwghk/2LP3.DjjGKKhq'),
(6, 'satish', 'masabattula', 'satishsatish5864@gmail.com', '$2y$10$MDfo0M4v6T0JZz4wXicZIe9Ehsza3Mlt5vp5JCOk11UsHh7k.PxZ2'),
(8, 'Kintali venkata ', 'sai mohith', '5starmohith@gmail.com', '$2y$10$GhD2cYkPSAdOm2B7cqUiT.2QwMsDhRx15wicvBK09WRd3zvrz0xiq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
