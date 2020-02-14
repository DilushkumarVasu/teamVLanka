-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2020 at 03:21 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

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
-- Table structure for table `postadd`
--

DROP TABLE IF EXISTS `postadd`;
CREATE TABLE IF NOT EXISTS `postadd` (
  `addId` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `tele_number` varchar(10) NOT NULL,
  PRIMARY KEY (`addId`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postadd`
--

INSERT INTO `postadd` (`addId`, `price`, `details`, `username`, `tele_number`) VALUES
(1, 79897789, 'hiuhoijoijh', 'naveen', ''),
(2, 79897789, 'iinijnj', 'naveen', ''),
(3, 6789, NULL, 'naveen', '0763830832'),
(4, 884503, NULL, 'naveen', '0763830832'),
(5, 7890, 'not available', 'naveen', '0763830832'),
(6, 2528082, 'very good', 'sharan', '0763830832'),
(7, 789, 'not available', 'naveen', '0763830832'),
(8, 82035, 'not available', 'naveen', '0763830832'),
(9, 1200000, '1acre, free', 'naveen', '0763830832');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
