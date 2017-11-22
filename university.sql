-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 01:13 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `COLLEGE_ID` varchar(50) NOT NULL,
  `COLLEGE_NAME` varchar(50) NOT NULL,
  `COLLEGE_ADDRESS` varchar(50) NOT NULL,
  `NO_OF_STUDENTS` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`COLLEGE_ID`, `COLLEGE_NAME`, `COLLEGE_ADDRESS`, `NO_OF_STUDENTS`) VALUES
('2SR', 'STJ INSTITUTE OF TECHNOLOGY', 'BELAGAVI', 900),
('3BR', 'BELLARY ENGINEERING COLLEGE', 'KALABURGI', 850),
('4PE', 'PES COLLEGE OF ENGINEERING', 'MYSORE', 700),
('76', 'BELLARY ENGINNERING COLLEGE', '', 675),
('79', 'SRI VENKATESHWARA COLLEGE OF ENGINEERING', '3', 675432);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_CODE` varchar(50) NOT NULL,
  `COURSE_NAME` varchar(50) NOT NULL,
  `NO_OF_CREDITS` int(20) NOT NULL,
  `FACULTY_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_CODE`, `COURSE_NAME`, `NO_OF_CREDITS`, `FACULTY_ID`) VALUES
('20', 'FLUID MECHANICS', 53, '62'),
('31', '3', 65321, '9'),
('32', '3', 65321, '98'),
('55', 'mechanics', 4, '67');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENT_NUMBER` varchar(50) NOT NULL,
  `DEPARTMENT_NAME` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `FACULTY_ID` varchar(50) NOT NULL,
  `DEPARTMENT_HEAD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPARTMENT_NUMBER`, `DEPARTMENT_NAME`, `STUDENT_ID`, `FACULTY_ID`, `DEPARTMENT_HEAD`) VALUES
('10000', 'INFORMATION SCIENCE AND ENGINEERING', '11111144', '56787654', 'wef'),
('10000000', 'INFORMATION SCIENCE AND ENGINEERING', '111111111', '22222222', 'shhh'),
('11', 'cse', '45', '78', '65'),
('11111111', 'INFORMATION SCIENCE AND ENGINEERING', '100000', '1001', 'add'),
('112', 'INFORMATION SCIENCE AND ENGINEERING', '11100', '1111100', 'hhh');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FACULTY_ID` varchar(50) NOT NULL,
  `FACULTY_NAME` varchar(50) NOT NULL,
  `DESIGNATION` varchar(50) NOT NULL,
  `SALARY` double NOT NULL,
  `DEPARTMENT_NUMBER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FACULTY_ID`, `FACULTY_NAME`, `DESIGNATION`, `SALARY`, `DEPARTMENT_NUMBER`) VALUES
('104', 'VARSHA', 'HOD', 80000, '10'),
('109', 'KAVITHA', 'INSTRUCTOR', 40000, '13'),
('202', 'HARSHITHA', 'ASSISTANT PROFFESOR', 60000, '10'),
('210', 'PUNEETH', 'HOD', 80000, '12'),
('215', 'DILIP', 'ASSISTANT PROFFESOR', 60000, '12'),
('320', 'MAHESH', 'ASSISTANT PROFFESOR', 60000, '13'),
('50', 'tgy', '', 890765, '56'),
('59', 'kijh', '', 76532, '09'),
('6', 'hu', '', 980, '60'),
('654322', 'hbh', '', 643211, '45689');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `DEPARTMENT_NUMBER` varchar(50) NOT NULL,
  `SEX` varchar(50) NOT NULL,
  `COLLEGE_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_ID`, `STUDENT_NAME`, `DEPARTMENT_NUMBER`, `SEX`, `COLLEGE_ID`) VALUES
('34', 'hgb', '78', 'male', '90'),
('5', 'jnk', '58', 'male', '7'),
('54', 'juh', '876', 'male', '7765'),
('90', 'fcd', '75', 'male', '76');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`COLLEGE_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_CODE`) USING BTREE;

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPARTMENT_NUMBER`) USING BTREE;

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FACULTY_ID`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
