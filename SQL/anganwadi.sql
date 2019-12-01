-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 04:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anganwadi`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `disp` ()  BEGIN
SELECT * from resident;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dispBirthReg` ()  BEGIN 
SELECT * FROM birthregister;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `birthregister`
--

CREATE TABLE `birthregister` (
  `SNo` int(11) DEFAULT NULL,
  `Child_ID` varchar(12) NOT NULL,
  `Name_` text NOT NULL DEFAULT 'NULL',
  `Gender` text NOT NULL DEFAULT 'NULL',
  `DeliveryDate` text NOT NULL DEFAULT 'NULL',
  `PlaceOfBirth` text NOT NULL DEFAULT 'NULL',
  `MethodOfBirth` text NOT NULL DEFAULT 'NULL',
  `NoOfSiblings` int(11) DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `birthregister`
--

INSERT INTO `birthregister` (`SNo`, `Child_ID`, `Name_`, `Gender`, `DeliveryDate`, `PlaceOfBirth`, `MethodOfBirth`, `NoOfSiblings`, `Weight`) VALUES
(0, '007', '007', '007', '2019-04-12', '007', '007', 7, 7),
(0, '008', '123', '123', '2019-05-05', '123', '123', 123, 123),
(0, '12685', 'Rifas', 'Male', '1999-11-06', 'Hospital', 'N', 1, 2);

--
-- Triggers `birthregister`
--
DELIMITER $$
CREATE TRIGGER `resInsBirthReg` AFTER INSERT ON `birthregister` FOR EACH ROW begin
insert into resident values (new.Child_ID, new.Name_, NUll, new.DeliveryDate, new.Gender, '');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `ID` varchar(12) NOT NULL,
  `Mother_ID` varchar(12) NOT NULL,
  `Father_ID` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`ID`, `Mother_ID`, `Father_ID`) VALUES
('1006', '1003', '1005');

-- --------------------------------------------------------

--
-- Table structure for table `child_health`
--

CREATE TABLE `child_health` (
  `No` int(11) DEFAULT NULL,
  `CheckUp_Date` date NOT NULL,
  `Child_ID` varchar(12) NOT NULL,
  `Height` float DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Doc_ID` varchar(12) NOT NULL,
  `Diagnosis` text DEFAULT NULL,
  `Prescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dailyfood`
--

CREATE TABLE `dailyfood` (
  `SlNo` int(11) NOT NULL,
  `ID` varchar(12) NOT NULL,
  `Wheat` float DEFAULT NULL,
  `Sugar` int(11) DEFAULT NULL,
  `Jaggery` int(11) DEFAULT NULL,
  `Milk` int(11) DEFAULT NULL,
  `Nutrient_Mix` int(11) DEFAULT NULL,
  `Pulses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Visit date` date DEFAULT NULL,
  `DoctorID` varchar(12) NOT NULL,
  `DoctorName` text NOT NULL DEFAULT 'NULL',
  `HospName` text NOT NULL,
  `NoPatients` int(11) NOT NULL,
  `Signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Visit date`, `DoctorID`, `DoctorName`, `HospName`, `NoPatients`, `Signature`) VALUES
('2019-07-15', '3001', 'Dr. Shyam', 'General Hospital', 17, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `father`
--

CREATE TABLE `father` (
  `ID` varchar(12) NOT NULL,
  `Wife_ID` varchar(12) DEFAULT NULL,
  `No_of_Children` int(11) DEFAULT NULL,
  `Occupation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `father`
--

INSERT INTO `father` (`ID`, `Wife_ID`, `No_of_Children`, `Occupation`) VALUES
('1005', '1003', 1, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `mother`
--

CREATE TABLE `mother` (
  `ID` varchar(12) NOT NULL,
  `Husband_ID` varchar(12) DEFAULT NULL,
  `No_of_children` int(11) DEFAULT NULL,
  `Occupation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mother`
--

INSERT INTO `mother` (`ID`, `Husband_ID`, `No_of_children`, `Occupation`) VALUES
('1003', '1005', 1, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `pregnant_women`
--

CREATE TABLE `pregnant_women` (
  `Sl_No` int(11) DEFAULT NULL,
  `Survey_No` int(11) DEFAULT NULL,
  `ID` varchar(12) NOT NULL,
  `DocID` varchar(12) NOT NULL,
  `CheckDate` date NOT NULL,
  `Pregnancy_status` text DEFAULT NULL,
  `Diagnosis` text DEFAULT NULL,
  `Signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `ID` varchar(12) NOT NULL,
  `Name` text NOT NULL,
  `Aadhar_Number` int(11) DEFAULT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` text NOT NULL,
  `Address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`ID`, `Name`, `Aadhar_Number`, `Date_of_Birth`, `Gender`, `Address`) VALUES
('1001', 'Aarav S', 123456789, '1998-12-09', 'Male', '33/A, Ananya, Bangalore-152233'),
('1002', 'Rajesh K', 452136589, '2002-04-21', 'Male', '#12, Garden House, Bangalore - 560041'),
('1003', 'Joslin John', 789456123, '1972-08-14', 'Female', '#152, Shine Res, Bangalore - 560041'),
('1004', 'Ishita P', 741258963, '1990-09-11', 'Female', '#132, Blue House, Bangalore - 560041'),
('1005', 'Peter John', 963852741, '1970-10-05', 'Male', '#152, Shine Res, Bangalore - 560041'),
('1006', 'Ella John', 788845512, '2005-10-22', 'Female', '#152, Shine Res, Bangalore - 560041');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `ChildID` varchar(12) NOT NULL,
  `DocID` varchar(12) NOT NULL,
  `Polio` date DEFAULT NULL,
  `hepatitis_0` date DEFAULT NULL,
  `BCG` date DEFAULT NULL,
  `DPT_1` date DEFAULT NULL,
  `Hepatitis_1` date DEFAULT NULL,
  `MMR_1` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination2`
--

CREATE TABLE `vaccination2` (
  `ChildID` varchar(12) NOT NULL,
  `DocID` varchar(12) NOT NULL,
  `DPT2` date DEFAULT NULL,
  `OPV2` date DEFAULT NULL,
  `Hepatitis2` date DEFAULT NULL,
  `MMR2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination3`
--

CREATE TABLE `vaccination3` (
  `ChildID` varchar(12) NOT NULL,
  `DocID` varchar(12) NOT NULL,
  `DPT3` date DEFAULT NULL,
  `OPV3` date DEFAULT NULL,
  `LifeDose` date DEFAULT NULL,
  `DPTBooster` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birthregister`
--
ALTER TABLE `birthregister`
  ADD PRIMARY KEY (`Child_ID`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mother_ID` (`Mother_ID`),
  ADD UNIQUE KEY `Father_ID` (`Father_ID`);

--
-- Indexes for table `child_health`
--
ALTER TABLE `child_health`
  ADD PRIMARY KEY (`Child_ID`),
  ADD KEY `DocIdFK` (`Doc_ID`);

--
-- Indexes for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `father`
--
ALTER TABLE `father`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Wife_ID` (`Wife_ID`);

--
-- Indexes for table `mother`
--
ALTER TABLE `mother`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Husband_ID` (`Husband_ID`);

--
-- Indexes for table `pregnant_women`
--
ALTER TABLE `pregnant_women`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `docidfk40` (`DocID`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Aadhar_Number` (`Aadhar_Number`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `DocidFk20` (`DocID`);

--
-- Indexes for table `vaccination2`
--
ALTER TABLE `vaccination2`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `DocID` (`DocID`);

--
-- Indexes for table `vaccination3`
--
ALTER TABLE `vaccination3`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `DocIdFK30` (`DocID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `FatherIDFK` FOREIGN KEY (`Father_ID`) REFERENCES `father` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MotherIDFK` FOREIGN KEY (`Mother_ID`) REFERENCES `mother` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `childIDFK` FOREIGN KEY (`ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child_health`
--
ALTER TABLE `child_health`
  ADD CONSTRAINT `DocIdFK` FOREIGN KEY (`Doc_ID`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `HealthChildIDFK` FOREIGN KEY (`Child_ID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD CONSTRAINT `IDFK` FOREIGN KEY (`ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `father`
--
ALTER TABLE `father`
  ADD CONSTRAINT `father_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `father_ibfk_2` FOREIGN KEY (`Wife_ID`) REFERENCES `resident` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mother`
--
ALTER TABLE `mother`
  ADD CONSTRAINT `MothidFK` FOREIGN KEY (`ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `husIdFk` FOREIGN KEY (`Husband_ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pregnant_women`
--
ALTER TABLE `pregnant_women`
  ADD CONSTRAINT `PregIDFK` FOREIGN KEY (`ID`) REFERENCES `resident` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docidfk40` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD CONSTRAINT `DocidFk20` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DoctorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `VaccChildIDFK` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccination2`
--
ALTER TABLE `vaccination2`
  ADD CONSTRAINT `DocID` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DoctorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chidfk10` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccination3`
--
ALTER TABLE `vaccination3`
  ADD CONSTRAINT `DocIdFK30` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DoctorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chidfk30` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
