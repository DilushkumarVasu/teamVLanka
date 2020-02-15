-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 11:21 AM
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
-- Table structure for table `f_ques`
--

CREATE TABLE `f_ques` (
  `q_id` int(100) NOT NULL,
  `f_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(200) NOT NULL DEFAULT 'On progress'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_ques`
--

INSERT INTO `f_ques` (`q_id`, `f_id`, `date`, `question`, `answer`) VALUES
(1, '940404040278v', 'Feb 15, 2020 1:53:06 PM', 'Hi guys how are you?', 'On progress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_ques`
--
ALTER TABLE `f_ques`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `f_id` (`f_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_ques`
--
ALTER TABLE `f_ques`
  MODIFY `q_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `f_ques`
--
ALTER TABLE `f_ques`
  ADD CONSTRAINT `f_ques_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `farmer` (`nic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
