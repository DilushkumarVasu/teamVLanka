-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2020 at 05:33 AM
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
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `communication`
--

CREATE TABLE `communication` (
  `com_id` varchar(100) NOT NULL,
  `farmer_id` varchar(50) NOT NULL,
  `landowner_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_agent`
--

CREATE TABLE `data_agent` (
  `d_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('940456123v', 'Sharanraj', 'Wattala', 'Male', '075-5054567', 'sharan1994@gmail.com', 'sharan', 'sharan'),
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
(8, '960900278v', '2020-01-02', 'hai dude ? nice to meet you');

-- --------------------------------------------------------

--
-- Table structure for table `landowner`
--

CREATE TABLE `landowner` (
  `l_id` varchar(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `land_status` varchar(200) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `resource_collector`
--

CREATE TABLE `resource_collector` (
  `r_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `telephone` int(20) NOT NULL
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
-- Table structure for table `r_f_l_communication`
--

CREATE TABLE `r_f_l_communication` (
  `communicate_id` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
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
-- Indexes for table `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `farmer_id` (`farmer_id`),
  ADD KEY `landowner_id` (`landowner_id`);

--
-- Indexes for table `data_agent`
--
ALTER TABLE `data_agent`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`nic`);

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
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `f_id` (`nic`);

--
-- Indexes for table `resource_collector`
--
ALTER TABLE `resource_collector`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `rice`
--
ALTER TABLE `rice`
  ADD PRIMARY KEY (`rice_id`);

--
-- Indexes for table `r_f_l_communication`
--
ALTER TABLE `r_f_l_communication`
  ADD PRIMARY KEY (`communicate_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_ques`
--
ALTER TABLE `f_ques`
  MODIFY `q_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `communication`
--
ALTER TABLE `communication`
  ADD CONSTRAINT `communication_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`nic`),
  ADD CONSTRAINT `communication_ibfk_2` FOREIGN KEY (`landowner_id`) REFERENCES `landowner` (`l_id`);

--
-- Constraints for table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `field_ibfk_1` FOREIGN KEY (`owner_nic`) REFERENCES `landowner` (`l_id`);

--
-- Constraints for table `field_rice`
--
ALTER TABLE `field_rice`
  ADD CONSTRAINT `field_rice_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`),
  ADD CONSTRAINT `field_rice_ibfk_2` FOREIGN KEY (`rice_id`) REFERENCES `rice` (`rice_id`);

--
-- Constraints for table `r_f_l_communication`
--
ALTER TABLE `r_f_l_communication`
  ADD CONSTRAINT `r_f_l_communication_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `farmer` (`nic`),
  ADD CONSTRAINT `r_f_l_communication_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `landowner` (`l_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
