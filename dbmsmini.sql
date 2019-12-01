-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmsmini`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Adm_No`, `Name`, `Class`, `English`, `Kannada`, `Mathematics`, `Science`, `Social_Science`, `Total`) VALUES
('e1', 'test', 1, 1, 0, 0, 1, 0, 2);

--
-- Triggers `attendance`
--
DELIMITER $$
CREATE TRIGGER `tot1` BEFORE INSERT ON `attendance` FOR EACH ROW BEGIN
SET NEW.Total = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dailyfood`
--

CREATE TABLE `dailyfood` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fa1`
--

CREATE TABLE `fa1` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Class` int(11) NOT NULL,
  `English_` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa1`
--
DELIMITER $$
CREATE TRIGGER `avg1` BEFORE INSERT ON `fa1` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English_+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa2`
--

CREATE TABLE `fa2` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa2`
--
DELIMITER $$
CREATE TRIGGER `avg2` BEFORE INSERT ON `fa2` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa3`
--

CREATE TABLE `fa3` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa3`
--
DELIMITER $$
CREATE TRIGGER `avg3` BEFORE INSERT ON `fa3` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa4`
--

CREATE TABLE `fa4` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa4`
--
DELIMITER $$
CREATE TRIGGER `avg4` BEFORE INSERT ON `fa4` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ptm`
--

CREATE TABLE `ptm` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` int(11) NOT NULL,
  `Teachers_name` varchar(20) NOT NULL,
  `Discussion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sa1`
--

CREATE TABLE `sa1` (
  `Adm_No` text NOT NULL,
  `Name` text NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `sa1`
--
DELIMITER $$
CREATE TRIGGER `avg22` BEFORE INSERT ON `sa1` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sa2`
--

CREATE TABLE `sa2` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `sa2`
--
DELIMITER $$
CREATE TRIGGER `avg21` BEFORE INSERT ON `sa2` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stationery`
--

CREATE TABLE `stationery` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Books` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD PRIMARY KEY (`Adm_No`,`Date`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa1`
--
ALTER TABLE `fa1`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa2`
--
ALTER TABLE `fa2`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa3`
--
ALTER TABLE `fa3`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa4`
--
ALTER TABLE `fa4`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `ptm`
--
ALTER TABLE `ptm`
  ADD PRIMARY KEY (`Adm_No`,`Teachers_name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `sa2`
--
ALTER TABLE `sa2`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `stationery`
--
ALTER TABLE `stationery`
  ADD PRIMARY KEY (`Adm_No`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD CONSTRAINT `dailyfood_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa1`
--
ALTER TABLE `fa1`
  ADD CONSTRAINT `fa1_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa2`
--
ALTER TABLE `fa2`
  ADD CONSTRAINT `fa2_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa3`
--
ALTER TABLE `fa3`
  ADD CONSTRAINT `fa3_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa4`
--
ALTER TABLE `fa4`
  ADD CONSTRAINT `fa4_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `ptm`
--
ALTER TABLE `ptm`
  ADD CONSTRAINT `ptm_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `sa2`
--
ALTER TABLE `sa2`
  ADD CONSTRAINT `sa2_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `stationery`
--
ALTER TABLE `stationery`
  ADD CONSTRAINT `stationery_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
