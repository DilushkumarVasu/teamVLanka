-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 07:21 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `gender`, `address`, `phone`, `email`, `password`) VALUES
('123456', 'Khosalan', 'male', 'dehi', '5w65474u846', 'Khosalan5@gmail.com', '[B@6403ce0d'),
('123456789', 'codehunt9', 'Male', 'Gampaha', '0770588478', 'dilushvasu1996@gmail.com', '[B@39269158'),
('17000085', 'Sabthar', 'Male', 'Welampitiya', '0753464396', 'sabtharugc0@gmail.com', '[B@7925e538'),
('17000297', 'Vasudevan Dilushkumar', 'Male', 'Wattala', '0770588477', 'dilushvasu1996@gmail.com', '[B@50792af8'),
('17000298', 'DilushVasu', 'Male', 'wattala', '075-3464396', 'dilushkumar1996@gmail.com', '[B@d9e273f'),
('23456', 'sharan', 'male', 'welampitiya', '075-3464396', 'sharan1994@gmail.com', '[B@53b453ea'),
('9329890', 'Vasudevan', 'Male', 'Wattala', '076-1234567', 'vasudevan@gmail.com', '[B@34698d8c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
