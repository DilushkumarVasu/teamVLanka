-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 12:30 PM
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
('1234564567', 'den', 'male', 'def', '90909090', 'dilushvasu1996@gmail.com', '4ed9407630eb1000c0f6b63842defa7d'),
('17000085', 'Sabthar', 'Male', 'Welampitiya', '0753464396', 'sabtharugc0@gmail.com', '[B@7925e538'),
('17000200', 'Naveen', 'Male', 'welampitiya', '1198822900', 'dilushvasu1996@gmail.com', '[B@6fa6ed3f'),
('17000496', 'Ishan', 'Male', 'Maharagama', '02345678', 'dilushvasu1996@gmail.com', '[B@33ddd364'),
('178911', 'suganthan', 'Male', 'welampitiya', '0112345', 'dilushvasu1996@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
('23456', 'sharan', 'male', 'welampitiya', '075-3464396', 'sharan1994@gmail.com', '[B@53b453ea'),
('9329890', 'Vasudevan', 'Male', 'Wattala', '076-1234567', 'vasudevan@gmail.com', '[B@34698d8c');

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_specialist`
--

CREATE TABLE `agricultural_specialist` (
  `nic` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `speciality` varchar(500) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `region` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agricultural_specialist`
--

INSERT INTO `agricultural_specialist` (`nic`, `name`, `speciality`, `address`, `email`, `region`, `telephone`) VALUES
('23423423', 'werwer', 'dsf', 'sdf', 'sdf@dsf', 'dsfsdf', 'ewr');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `nic` varchar(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`nic`, `name`, `address`, `gender`, `telephone`, `email`, `username`, `password`) VALUES
('125487985v', 'Tester', '123 abc colombo', 'male', '11111111', 'abc@abc.com', 'uu', '[B@53f783a4'),
('12865`9`598e9', 'sai', 'sai', 'male', '613941689', 'sai@gmail.com', 'sai', '[B@1331c4ca'),
('1326596', 'yuqgewuy', 'fgy', 'female', '45541385', 'lol@gmail.com', 'admin', '[B@6cb17f21'),
('940456123v', 'sharanraj', 'Wattala', 'Male', '075-5054567', 'thorsharan1994@gmail.com', 'sharan', 'sharan'),
('960900245v', 'hacker', 'wellawatta', 'male', '075-5054565', 'Khosalan@gmail.com', 'hacker', '123'),
('960900277v', 'codehunt9', 'wellawatta', 'male', '077-0588466', 'abc@gmail.com', 'abc', 'abc'),
('960900278v', 'Vasudevan Dilushkumar', 'Wattala', 'male', '077-058847', 'dilushvasu1996@gmail.com', 'DilushVasu', '1234'),
('960900298v', 'Khosalan', 'Dehiwala', 'male', '077-737164', 'Khosalan@gmail.com', 'sabthar', 'admin'),
('963234567v', 'Sathiyawathi', 'wattala', 'female', '0770588477', 'sathiya@gmail.com', 'sathiya', '[B@4b72f18d'),
('963234568v', 'Sathiyawathni', 'wattala', 'female', '0770587477', 'sathiyani@gmail.com', 'sathiyani', '[B@48dcd956'),
('968900228v', 'suganthan', 'wellawatta', 'male', '077-745679', 'Khosalan@gmail.com', 'sugan', 'sugan'),
('986237567v', 'kasun', 'Enderamulla', 'male', '1122333333', 'kasun@gmail.com', 'kasun', '[B@44766aec'),
('986567567v', 'Shanmugam', 'Vauniya', 'male', '1122334455', 'sha@gmail.com', 'sha', '[B@14f755c2'),
('988997788v', 'gem', 'Endera', 'male', '1111111122', 'gem@gmail.com', 'gem', '[B@15ff7d7b'),
('988998888v', 'gemini', 'Enderamulla', 'male', '1111111111', 'gemini@gmail.com', 'gemini', '[B@579d0300');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `field_id` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `owner_nic` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `field_rice`
--

CREATE TABLE `field_rice` (
  `field_rice_id` varchar(100) NOT NULL,
  `field_id` varchar(100) NOT NULL,
  `rice_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_ques`
--

CREATE TABLE `f_ques` (
  `q_id` int(100) NOT NULL,
  `f_id` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_ques`
--

INSERT INTO `f_ques` (`q_id`, `f_id`, `date`, `question`) VALUES
(1, '968900228v', '2020-01-10', 'cad vl'),
(2, '960900278v', '1998-12-10', 'what the fuck'),
(3, '940456123v', '2020-01-17', 'xvfxfb'),
(4, '960900278v', '2020-01-01', 'nvhjbvhj'),
(5, '940456123v', '2020-01-02', 'hai dude\r\n'),
(6, '960900278v', '2020-01-03', 'axas'),
(7, '960900278v', '2020-01-14', 'ngns'),
(8, '960900278v', '2020-01-02', 'hai dude ? nice to meet you'),
(9, '5671234`8v', '2020-01-01', 'scasdvzx '),
(10, '960900278v', '2020-01-09', 'hcb,dhckjilcjwdckw;lch bdkjjldjcowclclew'),
(11, '234156789v', '2020-01-15', 'dchvhhdhiuhwjljhvuifhev'),
(12, '234156789v', '2020-01-15', 'dchvhhdhiuhwjljhvuifhev'),
(13, '960900245v', '2020-01-01', 'jyjk');

-- --------------------------------------------------------

--
-- Table structure for table `landowner`
--

CREATE TABLE `landowner` (
  `l_id` varchar(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `pdf` blob,
  `land_status` varchar(200) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `postadd`
--

CREATE TABLE `postadd` (
  `addId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `tele_number` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `msg_id` int(100) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `nic` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`msg_id`, `parent`, `nic`, `date`, `message`, `status`) VALUES
(11, NULL, '960900277v', '2019-11-07', 'Testing.......................', 'new'),
(13, NULL, '940456123v', '2019-11-08', 'testing message 123', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `resourcead`
--

CREATE TABLE `resourcead` (
  `ad_id` varchar(200) NOT NULL,
  `approved` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rice`
--

CREATE TABLE `rice` (
  `rice_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ripe_time` varchar(100) NOT NULL,
  `unit_price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rsrccollector`
--

CREATE TABLE `rsrccollector` (
  `name` varchar(100) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(12) NOT NULL,
  `area` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsrccollector`
--

INSERT INTO `rsrccollector` (`name`, `nic`, `address`, `email`, `telephone`, `area`, `username`, `password`) VALUES
('Ishan', '973642219v', '3rd lane, uggalboda, kalutara', 'ishansasika@gmail.com', 772199181, 'western', 'ishan', 'ishan1997');

-- --------------------------------------------------------

--
-- Table structure for table `userad`
--

CREATE TABLE `userad` (
  `adver_id` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `user_type` varchar(100) NOT NULL,
  `content` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `agricultural_specialist`
--
ALTER TABLE `agricultural_specialist`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`nic`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `owner_id` (`owner_nic`);

--
-- Indexes for table `field_rice`
--
ALTER TABLE `field_rice`
  ADD PRIMARY KEY (`field_rice_id`),
  ADD UNIQUE KEY `field_rice_id` (`field_rice_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `rice_id` (`rice_id`);

--
-- Indexes for table `f_ques`
--
ALTER TABLE `f_ques`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `landowner`
--
ALTER TABLE `landowner`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `postadd`
--
ALTER TABLE `postadd`
  ADD PRIMARY KEY (`addId`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `f_id` (`nic`);

--
-- Indexes for table `resourcead`
--
ALTER TABLE `resourcead`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `rice`
--
ALTER TABLE `rice`
  ADD PRIMARY KEY (`rice_id`);

--
-- Indexes for table `userad`
--
ALTER TABLE `userad`
  ADD PRIMARY KEY (`adver_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_ques`
--
ALTER TABLE `f_ques`
  MODIFY `q_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `postadd`
--
ALTER TABLE `postadd`
  MODIFY `addId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `field_rice`
--
ALTER TABLE `field_rice`
  ADD CONSTRAINT `field_rice_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`),
  ADD CONSTRAINT `field_rice_ibfk_2` FOREIGN KEY (`rice_id`) REFERENCES `rice` (`rice_id`);

--
-- Constraints for table `resourcead`
--
ALTER TABLE `resourcead`
  ADD CONSTRAINT `resourcead_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `userad` (`adver_id`);

--
-- Constraints for table `userad`
--
ALTER TABLE `userad`
  ADD CONSTRAINT `userad_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `farmer` (`nic`),
  ADD CONSTRAINT `userad_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `landowner` (`l_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
