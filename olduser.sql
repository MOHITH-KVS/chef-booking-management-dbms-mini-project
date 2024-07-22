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
-- Database: `olduser`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'mohith', 'mohith@gmail.com', '1234'),
(2, 'abishek', 'abishek@gmail.com', '4567'),
(3, 'gautham', 'gautham@gmail.com', '7890'),
(4, 'praveen', 'praveen@gmail.com', '987'),
(5, 'satish', 'satish@gmail.com', 'sdfasdf'),
(6, 'girish', 'girish@gmail.com', 'asdfas'),
(7, 'pavan', 'pavan@gmail.com', 'fdasfsa'),
(8, 'harshitha', 'harshitha@gmail.com', 'bdsbs'),
(9, 'susmitha', 'susmitha@gmail.com', 'bsdf'),
(10, 'satwika', 'satwika@gmail.com', 'zsdbvds'),
(11, 'neha', 'neha@gmail.com', 'sdbvz'),
(12, 'namitha', 'namitha@gmail.com', 'adfg'),
(13, 'sriya', 'sriya@gmail.com', 'dsgs'),
(14, 'rishabh', 'rishabh@gmail.com', 'sdbs'),
(15, 'mahindra', 'mahindra@gmail.com', 'fdsfg'),
(16, 'deepak', 'deepak@gmail.com', '4523'),
(17, 'ramu', 'ramu@gmail.com', '667'),
(18, 'haricharan', 'haricharan@gmail.com', '5634'),
(19, 'abdul', 'abdul@gmail.com', '32523'),
(20, 'sandilya', 'sandilya@gmail.com', '342q5');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
