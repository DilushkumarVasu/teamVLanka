-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 14, 2020 at 05:36 AM
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
-- Table structure for table `landowner`
--

DROP TABLE IF EXISTS `landowner`;
CREATE TABLE IF NOT EXISTS `landowner` (
  `l_id` varchar(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `pdf` blob,
  `land_status` varchar(200) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landowner`
--

INSERT INTO `landowner` (`l_id`, `name`, `address`, `gender`, `pdf`, `land_status`, `telephone`, `email`, `username`, `password`) VALUES
('1232456', 'sharan', 'kalaniya', 'male', NULL, 'available', '0763830832', 'dilush@gmail.com', 'sharan', 'sharan'),
('7938759v', 'gaminda', 'piliyandala', 'male', '', 'available', '98759824', 'asdfokko@gmail.com', 'gaminda', 'gaminda'),
('926901160v', 'dinuka', 'colombo7', 'female', '', 'not available', '0000000000', 'dinukaf@gmail.com', 'dinuka', 'dinuka'),
('962901050v', 'naveen', 'welmilla', 'male', NULL, 'not available', '0763830832', 'nvnpersonal@gmail.com', 'naveen', 'naveen'),
('9730809432v', 'ishan', 'kalutara', 'male', NULL, 'available', '0992480989', 'ishan@gmail.com', 'ishan', 'ishan'),
('u8234801053', 'naveen', 'fsdgfds', 'male', '', 'available', '01234567', 'hakjhf@gmail.com', 'naviya', 'naviya');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
