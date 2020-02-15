-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 09:20 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vlanka`
--

-- --------------------------------------------------------

--
-- Table structure for table `userad`
--

CREATE TABLE `userad` (
  `adver_id` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `user_type` varchar(100) NOT NULL,
  `telephone` int(20) NOT NULL,
  `content` longblob NOT NULL,
  `status` binary(2) DEFAULT '\0\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userad`
--
ALTER TABLE `userad`
  ADD PRIMARY KEY (`adver_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userad`
--
ALTER TABLE `userad`
  ADD CONSTRAINT `userad_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `farmer` (`nic`),
  ADD CONSTRAINT `userad_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `landowner` (`l_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
