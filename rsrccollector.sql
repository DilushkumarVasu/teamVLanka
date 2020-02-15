-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 05:15 AM
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
-- Table structure for table `rsrccollector`
--

CREATE TABLE `rsrccollector` (
  `rsrc_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(12) NOT NULL,
  `area` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsrccollector`
--

INSERT INTO `rsrccollector` (`rsrc_id`, `name`, `nic`, `address`, `email`, `telephone`, `area`, `username`, `password`) VALUES
('17000785', 'Ishan Sasika', '973642219V', '3rd Lane, Uggalboda, Kalutara', 'ishansasika@gmail.com', 772199181, 'Kalutara', 'ishansasika', 'e82a4897cd9a67da74aff5ca5bfa124c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rsrccollector`
--
ALTER TABLE `rsrccollector`
  ADD PRIMARY KEY (`rsrc_id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `uname` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
