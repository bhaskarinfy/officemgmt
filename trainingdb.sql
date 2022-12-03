-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 05:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `batchmst`
--

CREATE TABLE `batchmst` (
  `batch_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_name` varchar(30) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `batchmst`
--

INSERT INTO `batchmst` (`batch_id`, `course_id`, `batch_name`, `startdate`, `enddate`, `faculty_id`, `fees`, `company_id`, `status`) VALUES
(101, 900, 'red', '2022-12-01', '2022-12-31', 301, 10000, 2201, 1),
(110, 901, 'green', '2022-12-02', '2022-12-31', 302, 12000, 2201, 1),
(115, 902, 'blue', '2022-12-03', '2022-12-31', 303, 13000, 2201, 1),
(120, 903, 'orange', '2022-12-04', '2022-12-31', 304, 13000, 2201, 1),
(125, 904, 'white', '2022-12-05', '2022-12-31', 305, 15000, 2201, 1),
(128, 905, 'pink', '2022-12-06', '2022-12-31', 306, 15000, 2201, 1),
(131, 906, 'yellow', '2022-12-07', '2022-12-31', 307, 20000, 2201, 1),
(134, 907, 'black', '2002-12-08', '2022-12-31', 308, 20000, 2201, 1),
(141, 908, 'violet', '2022-12-09', '2022-12-31', 309, 21000, 2201, 1),
(148, 909, 'sky blue ', '2022-12-10', '2022-12-31', 310, 25000, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `companymst`
--

CREATE TABLE `companymst` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_registration` varchar(30) DEFAULT NULL,
  `company_emailid` varchar(50) DEFAULT NULL,
  `company_phoneno` varchar(15) DEFAULT NULL,
  `company_contactperson` varchar(30) DEFAULT NULL,
  `company_designation` varchar(10) DEFAULT NULL,
  `company_image` varchar(30) DEFAULT NULL,
  `company_logo` varchar(30) DEFAULT NULL,
  `classrooms` int(11) DEFAULT NULL,
  `subscript_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companymst`
--

INSERT INTO `companymst` (`company_id`, `company_name`, `company_registration`, `company_emailid`, `company_phoneno`, `company_contactperson`, `company_designation`, `company_image`, `company_logo`, `classrooms`, `subscript_id`, `start_date`, `status`) VALUES
(2202, 'ACER', 'acer5300', 'acer. join@gmail.com', '2143009922', 'ram', 'human reso', '', '', 0, 3300, '2015-11-08', 1),
(2201, 'NOKIA', 'nokia5200', 'nokia.2201@gmail.com', '2123562201', 'dhanush', 'traninee', '', '', 0, 3302, '2022-12-01', 1),
(2203, 'SONY', 'sony400', 'sony.club.com', '2143009933', 'arjun', 'ceo', '', '', 0, 3304, '2012-04-02', 1),
(2204, 'INTEL', 'inte500', 'intelprocesser@gmail.com', '2143004445', 'Prashanth', 'CFO', '', '', 0, 3306, '2022-10-13', 1),
(2205, 'MATRIX', 'matrix222', 'matrix@gmail.com', '2142335401', 'john', 'developer', '', '', 0, 3308, '2017-06-21', 1),
(2206, 'APPLE', 'apple234', 'apple5@gmail.com', '2143111222', 'stevejob', 'co-fonder', '', '', 0, 3310, '2013-12-24', 1),
(2207, 'TATA', 'tatagroups', 'tatatcs@gmail.com', '2147400000', 'raan tata', 'founder', '', '', 0, 3312, '2012-08-27', 1),
(2208, 'AADANI', 'Aadanigruopclub', 'clubadani@gamil.com', '2142331234', 'gouthamadani', 'senior man', '', '', 0, 3314, '2018-09-04', 1),
(2209, 'dell', 'delllap', 'dellstore@gmail.com', '2143111002', 'sunder', 'sales mana', '', '', 0, 3316, '2014-09-10', 1),
(2210, 'INFOSYS', 'infosys12', 'info33@gmail.com', '2143111654', 'murthy', 'markting m', '', '', 0, 3318, '2022-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursemst`
--

CREATE TABLE `coursemst` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(30) DEFAULT NULL,
  `course_content` text DEFAULT NULL,
  `course_description` text DEFAULT NULL,
  `company_id` int(11) DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coursemst`
--

INSERT INTO `coursemst` (`course_id`, `course_name`, `course_content`, `course_description`, `company_id`, `status`) VALUES
(900, 'civil', 'civil engineering', 'welcome to civil', 2201, 1),
(901, 'mechanical', 'mechanical engineering', 'welcome to mechanical', 2201, 1),
(902, 'CSE', 'CSE engineering', 'welcome to CSE engineering', 2201, 1),
(903, 'ECE', 'ECE engineering', 'welcome to ECE', 2201, 1),
(904, 'EEE', 'EEE engineering', 'welcome to EEE', 2201, 1),
(905, 'CSM', 'CSM engineering', 'welcome to csm engineering', 2201, 1),
(906, 'Chemical', 'Chemical engineering', 'welcome to chemical engineering', 2201, 1),
(907, 'BSC', 'BSC', 'welcome to bsc', 2201, 1),
(908, 'BZC', 'BZC', 'welcome to bzc', 2201, 1),
(909, 'B COM', 'B Com', 'welcome to b com', 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departmentmst`
--

CREATE TABLE `departmentmst` (
  `dept_id` int(100) NOT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `dept_description` varchar(100) DEFAULT NULL,
  `comany_id` int(15) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departmentmst`
--

INSERT INTO `departmentmst` (`dept_id`, `dept_name`, `dept_description`, `comany_id`, `status`) VALUES
(221, 'computer sciece', 'computer science', 2201, 1),
(222, 'chemistry', 'chem', 2201, 1),
(223, 'maths', 'maths', 2201, 1),
(224, 'physics', 'physics', 2201, 1),
(225, 'mpcs', 'mpcs', 2201, 1),
(226, 'civil', 'civil', 2201, 1),
(227, 'mechanic', 'mechanic', 2201, 1),
(228, 'english dept', 'english', 2201, 1),
(229, 'elecitrical dept', 'electrical', 2201, 1),
(230, 'drawying dept', 'drawying ', 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facultycourselink`
--

CREATE TABLE `facultycourselink` (
  `lnk_id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facultycourselink`
--

INSERT INTO `facultycourselink` (`lnk_id`, `faculty_id`, `course_id`, `company_id`, `status`) VALUES
(3300, 301, 900, 2201, 1),
(3301, 302, 901, 2201, 1),
(3302, 303, 902, 2201, 1),
(3303, 304, 903, 2201, 1),
(3304, 305, 904, 2201, 1),
(3305, 306, 905, 2201, 1),
(3306, 307, 906, 2201, 1),
(3307, 308, 907, 2201, 1),
(3308, 309, 908, 2201, 1),
(3309, 310, 909, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facultymst`
--

CREATE TABLE `facultymst` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(30) DEFAULT NULL,
  `faculty_email` varchar(30) DEFAULT NULL,
  `faculty_contactno` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facultymst`
--

INSERT INTO `facultymst` (`faculty_id`, `faculty_name`, `faculty_email`, `faculty_contactno`, `company_id`, `status`) VALUES
(301, 'd.vijaykumar', 'vijaykumar123@gmail.com', 1280920, 2201, 1),
(302, 'R.Sainath', 'ragamsai342@gmail.com', 112345, 2201, 1),
(303, 'k.sudharshan', 'sudharshan221@gmail.com', 100100, 2201, 1),
(304, 'N.Srinivas', 'nallalasrinu@gmail.com', 12345678, 2201, 1),
(305, 'G.Thirupathi reddy', 'thirureddy2213@gmail.com', 456321, 2201, 1),
(306, 'MD.Yaqub ali', 'yaqub001@gmail.com', 127890, 2201, 1),
(307, 'L.Lakshminarayana', 'lakshminarayana156@gmail.com', 1989867, 2201, 1),
(308, 'CH.Srinivas reddy', 'srinivasreddy334@gmail.com', 1900009, 2201, 1),
(309, 'N.Pranavraj', 'pranav1001@gmail.com', 1221223, 2201, 1),
(310, 'A.Naresh', 'nareshavula12@gmail.com', 143143, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paymentsmst`
--

CREATE TABLE `paymentsmst` (
  `staff_id` int(100) NOT NULL,
  `month` text DEFAULT NULL,
  `year` int(100) DEFAULT NULL,
  `salary` int(100) DEFAULT NULL,
  `e_insensitive` varchar(100) DEFAULT NULL,
  `bonus` varchar(100) DEFAULT NULL,
  `deducation` varchar(100) DEFAULT '0',
  `company_id` int(15) DEFAULT NULL,
  `advance_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentsmst`
--

INSERT INTO `paymentsmst` (`staff_id`, `month`, `year`, `salary`, `e_insensitive`, `bonus`, `deducation`, `company_id`, `advance_payment`) VALUES
(701, '01', 2001, 10000, '500', '1000', '0', 2201, '0'),
(702, '02', 2002, 12000, '700', '500', '0', 2201, '1200'),
(703, '03', 2003, 14000, '800', '1000', '100', 2201, '1400'),
(704, '04', 2004, 15000, '1000', '1200', '200', 2201, '1500'),
(705, '05', 2005, 18000, '1500', '1000', '500', 2201, '2000'),
(706, '06', 2006, 20000, '1500', '1500', '500', 2201, '1000'),
(707, '07', 2007, 23000, '2000', '1700', '700', 2201, '1500'),
(708, '08', 2008, 24000, '2500', '2000', '1000', 2201, '3000'),
(709, '09', 2009, 27000, '2700', '2200', '1200', 2201, '3500'),
(710, '10', 2010, 30000, '3000', '2500', '1500', 2201, '4000');

-- --------------------------------------------------------

--
-- Table structure for table `salarymst`
--

CREATE TABLE `salarymst` (
  `salary_id` int(100) NOT NULL,
  `staff_id` int(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `start_month` text DEFAULT NULL,
  `year` int(100) DEFAULT NULL,
  `company_id` int(15) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salarymst`
--

INSERT INTO `salarymst` (`salary_id`, `staff_id`, `salary`, `start_month`, `year`, `company_id`, `status`) VALUES
(101, 701, '10000', 'january', 2007, 2201, 1),
(102, 702, '10500', 'february', 2008, 2201, 1),
(103, 703, '11000', 'march', 2009, 2201, 1),
(104, 704, '11500', 'april', 2010, 2201, 1),
(105, 705, '12000', 'may', 2011, 2201, 1),
(106, 706, '13000', 'june', 2011, 2201, 1),
(107, 707, '14000', 'febraury', 2014, 2201, 1),
(108, 708, '14000', 'june', 2016, 2201, 1),
(109, 709, '15000', 'january', 2019, 2201, 1),
(110, 710, '16000', 'may', 2021, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffmst`
--

CREATE TABLE `staffmst` (
  `staff_id` int(100) NOT NULL,
  `dept_id` int(100) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `mobile_number` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `company_id` int(15) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffmst`
--

INSERT INTO `staffmst` (`staff_id`, `dept_id`, `name`, `mobile_number`, `email`, `joining_date`, `company_id`, `status`) VALUES
(701, 220, 'ram', 21478783, ' ram@gmail.com', '2012-08-01', 2201, 1),
(702, 221, 'venu', 214748447, 'venu@gmail.com', '2012-11-15', 2201, 1),
(703, 222, 'prashanth', 2147481123, 'prashanth@gmail.com', '2012-12-07', 2201, 1),
(704, 223, 'shashi', 214747632, 'shashi@gmail.com', '2012-12-20', 2201, 1),
(705, 224, 'adithya ', 214784628, 'adithya@gmail.com', '2012-12-23', 2201, 1),
(706, 225, 'srinu', 21478365, 'srinu@gmail.com', '2012-12-12', 2201, 1),
(707, 226, 'anil', 21474833, 'anil@gmail.com', '2012-11-06', 2201, 1),
(708, 227, 'praneeth', 21474863, 'praneeth@gmail.com', '2013-08-13', 2201, 1),
(709, 228, 'laxman', 21477732, 'laxman@gmail.com', '2013-07-10', 2201, 1),
(710, 229, 'venkat', 214748222, 'venkat@gmail.com', '2013-09-10', 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentmst`
--

CREATE TABLE `studentmst` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(30) DEFAULT NULL,
  `student_idno` varchar(10) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `student_phoneno` int(100) DEFAULT NULL,
  `date_registration` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentmst`
--

INSERT INTO `studentmst` (`student_id`, `student_name`, `student_idno`, `student_email`, `student_phoneno`, `date_registration`, `status`, `remarks`, `company_id`) VALUES
(702, 'gajjela adithya', '122', 'gajjelaadithya2000@gmail.com', 2093905885, '2022-12-01 06:49:18', 1, 'better to improve communication skills', 2201),
(701, 'shashi kumar', '121', 'shashikumarnaganuri@gmai.com', 2093905848, '2022-12-01 06:47:16', 1, 'better to improve skills in java', 2201),
(703, 'kakkera ramakrishna', '123', 'kakkeraramakrishna@gmail.com', 2093905838, '2022-12-01 06:50:59', 1, 'angry management', 2201),
(704, 'prashanth', '124', 'prashanth282@gmail.com', 2093905534, '2022-12-01 06:52:54', 1, 'need to improve typing skills', 2201),
(705, 'venu', '125', 'venustylish143@gmail.com', 2093905801, '2022-12-01 06:54:05', 1, 'need to improve typing skills', 2201),
(706, 'kasanagottu bhavana', '126', 'kasanagottubhavana@gmail.com', 2093905908, '2022-12-01 06:55:45', 1, 'improve skills in programming', 2201),
(707, 'gajjela akhil', '127', 'gajjelaakhil@gmail.com', 2093905884, '2022-12-01 06:57:09', 1, 'better to do hardwork', 2201),
(708, 'thejaswini', '128', 'thejaswini33@gmail.com', 2093903393, '2022-12-01 06:58:55', 1, 'need to improve technical skills', 2201),
(709, 'hyndavi', '129', 'hyndavi22@gmail.com', 2093906767, '2022-12-01 07:00:20', 1, 'improve work duration', 2201),
(710, 'amulya reddy', '130', 'amulya242@gmail.com', 2093905534, '2022-12-01 07:02:31', 1, 'do work on hard', 2201);

-- --------------------------------------------------------

--
-- Table structure for table `student_courselink`
--

CREATE TABLE `student_courselink` (
  `lnk_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(100) DEFAULT NULL,
  `fc_id` int(11) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `fee_status` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_courselink`
--

INSERT INTO `student_courselink` (`lnk_id`, `student_id`, `batch_id`, `fc_id`, `reg_date`, `fee_status`, `company_id`, `status`) VALUES
(3301, 701, 101, 301, '2022-12-01', 1, 2201, 1),
(3300, 702, 110, 302, '2022-12-01', 1, 2201, 1),
(3302, 703, 115, 303, '2022-12-01', 1, 2201, 1),
(3303, 704, 120, 304, '2022-12-01', 1, 2201, 1),
(3304, 705, 125, 305, '2022-12-01', 1, 2201, 1),
(3305, 706, 130, 306, '2022-12-01', 1, 2201, 1),
(3306, 707, 135, 307, '2022-12-01', 1, 2201, 1),
(3307, 708, 140, 308, '2022-12-01', 1, 2201, 1),
(3308, 709, 145, 309, '2022-12-01', 1, 2201, 1),
(3309, 710, 150, 310, '2022-12-01', 1, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `fee_amount` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `company_id` int(15) DEFAULT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_id`, `student_id`, `batch_id`, `fee_amount`, `paid_amount`, `paid_date`, `company_id`, `paid_status`) VALUES
(1, 701, 101, 10000, 5000, '2022-12-01', 2201, 1),
(2, 702, 110, 12000, 10000, '2022-11-01', 2201, 1),
(3, 703, 115, 13000, 10000, '2022-11-10', 2201, 1),
(4, 704, 120, 13000, 13000, '2022-11-10', 2201, 1),
(5, 705, 125, 15000, 10000, '2022-11-20', 2201, 1),
(6, 706, 128, 15000, 15000, '2022-10-31', 2201, 1),
(7, 707, 131, 20000, 15000, '2022-11-15', 2201, 1),
(8, 708, 134, 20000, 20000, '2022-12-01', 2201, 1),
(9, 709, 141, 21000, 15000, '2022-11-20', 2201, 1),
(10, 710, 148, 25000, 15000, '2022-11-15', 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionmst`
--

CREATE TABLE `subscriptionmst` (
  `subscript_id` int(11) NOT NULL,
  `subscript_name` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `disc_percent` int(11) DEFAULT NULL,
  `company_id` int(15) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptionmst`
--

INSERT INTO `subscriptionmst` (`subscript_id`, `subscript_name`, `start_date`, `end_date`, `charges`, `disc_percent`, `company_id`, `status`) VALUES
(3300, 'Netflix', '2013-04-02', '2014-04-02', 2000, 0, 2201, 1),
(3302, 'Amazon', '2012-01-01', '2012-04-01', 600, 0, 2201, 1);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `month_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `t_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `class_held` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `course_id`, `batch_id`, `faculty_id`, `month_id`, `company_id`, `t_date`, `start_time`, `duration`, `status`, `class_held`) VALUES
(2403, 902, 115, 303, 3, 2201, '2022-12-06', '43:10:22', 0, 1, NULL),
(2401, 900, 101, 301, 1, 2201, '2022-12-02', '05:14:20', 12, 1, NULL),
(2402, 901, 110, 302, 2, 2201, '2019-08-29', '76:14:35', 11, 1, NULL),
(2404, 903, 120, 304, 4, 2201, '2022-09-01', '12:15:46', 0, 1, NULL),
(2405, 904, 125, 305, 5, 2201, '2014-12-11', '27:31:48', 0, 1, NULL),
(2406, 905, 128, 306, 6, 2201, '2018-07-09', '55:00:35', 0, 1, NULL),
(2407, 906, 131, 307, 7, 2201, '2019-03-12', '53:00:35', 0, 1, NULL),
(2408, 907, 134, 308, 8, 2201, '2016-08-10', '24:12:32', 0, 1, NULL),
(2409, 908, 141, 309, 9, 2201, '2022-02-22', '43:25:00', 0, 1, NULL),
(2410, 909, 148, 310, 10, 2201, '2022-07-04', '39:18:06', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_batchmst`
-- (See below for the actual view)
--
CREATE TABLE `vw_batchmst` (
`batch_id` int(11)
,`batch_name` varchar(30)
,`course_id` int(11)
,`course_name` varchar(30)
,`faculty_id` int(11)
,`faculty_name` varchar(30)
,`company_id` int(11)
,`company_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_facultycourselink`
-- (See below for the actual view)
--
CREATE TABLE `vw_facultycourselink` (
`faculty_id` int(11)
,`faculty_name` varchar(30)
,`faculty_email` varchar(30)
,`faculty_contactno` int(10)
,`lnk_id` int(11)
,`course_id` int(11)
,`course_name` varchar(30)
,`course_content` text
,`company_id` int(11)
,`company_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_paymentsmst`
-- (See below for the actual view)
--
CREATE TABLE `vw_paymentsmst` (
`staff_id` int(100)
,`name` text
,`email` varchar(100)
,`month` text
,`year` int(100)
,`salary` int(100)
,`bonus` varchar(100)
,`company_id` int(15)
,`company_name` varchar(50)
,`company_contactperson` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_salary`
-- (See below for the actual view)
--
CREATE TABLE `vw_salary` (
`salary_id` int(100)
,`salary` varchar(100)
,`staff_id` int(100)
,`name` text
,`mobile_number` int(100)
,`joining_date` date
,`company_id` int(15)
,`company_name` varchar(50)
,`company_registration` varchar(30)
,`company_designation` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_staffmst`
-- (See below for the actual view)
--
CREATE TABLE `vw_staffmst` (
`staff_id` int(100)
,`name` text
,`dept_id` int(100)
,`dept_name` varchar(100)
,`dept_description` varchar(100)
,`company_id` int(15)
,`company_name` varchar(50)
,`company_emailid` varchar(50)
,`start_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_studentcourselink`
-- (See below for the actual view)
--
CREATE TABLE `vw_studentcourselink` (
`lnk_id` int(11)
,`reg_date` date
,`student_id` int(11)
,`student_name` varchar(30)
,`remarks` text
,`batch_id` int(100)
,`batch_name` varchar(30)
,`fees` int(11)
,`fc_id` int(11)
,`faculty_name` varchar(30)
,`faculty_contactno` int(10)
,`company_id` int(11)
,`company_name` varchar(50)
,`company_phoneno` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_student_fee`
-- (See below for the actual view)
--
CREATE TABLE `vw_student_fee` (
`fee_id` int(11)
,`fee_amount` int(11)
,`student_id` int(11)
,`student_name` varchar(30)
,`student_idno` varchar(10)
,`batch_id` int(11)
,`batch_name` varchar(30)
,`course_id` int(11)
,`company_id` int(15)
,`company_name` varchar(50)
,`company_emailid` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_timetable`
-- (See below for the actual view)
--
CREATE TABLE `vw_timetable` (
`company_id` int(11)
,`company_name` varchar(50)
,`faculty_id` int(11)
,`faculty_name` varchar(30)
,`batch_id` int(11)
,`batch_name` varchar(30)
,`startdate` date
,`enddate` date
,`course_id` int(11)
,`course_name` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_batchmst`
--
DROP TABLE IF EXISTS `vw_batchmst`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_batchmst`  AS SELECT `bm`.`batch_id` AS `batch_id`, `bm`.`batch_name` AS `batch_name`, `bm`.`course_id` AS `course_id`, `cs`.`course_name` AS `course_name`, `bm`.`faculty_id` AS `faculty_id`, `fm`.`faculty_name` AS `faculty_name`, `bm`.`company_id` AS `company_id`, `cp`.`company_name` AS `company_name` FROM (((`batchmst` `bm` join `coursemst` `cs`) join `facultymst` `fm`) join `companymst` `cp`) WHERE `bm`.`course_id` = `cs`.`course_id` AND `bm`.`faculty_id` = `fm`.`faculty_id` AND `bm`.`company_id` = `cp`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_facultycourselink`
--
DROP TABLE IF EXISTS `vw_facultycourselink`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_facultycourselink`  AS SELECT `fcl`.`faculty_id` AS `faculty_id`, `fm`.`faculty_name` AS `faculty_name`, `fm`.`faculty_email` AS `faculty_email`, `fm`.`faculty_contactno` AS `faculty_contactno`, `fcl`.`lnk_id` AS `lnk_id`, `fcl`.`course_id` AS `course_id`, `cm`.`course_name` AS `course_name`, `cm`.`course_content` AS `course_content`, `cpm`.`company_id` AS `company_id`, `cpm`.`company_name` AS `company_name` FROM (((`facultycourselink` `fcl` join `facultymst` `fm`) join `coursemst` `cm`) join `companymst` `cpm`) WHERE `fcl`.`faculty_id` = `fm`.`faculty_id` AND `fcl`.`course_id` = `cm`.`course_id` AND `fcl`.`company_id` = `cpm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_paymentsmst`
--
DROP TABLE IF EXISTS `vw_paymentsmst`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_paymentsmst`  AS SELECT `pm`.`staff_id` AS `staff_id`, `sm`.`name` AS `name`, `sm`.`email` AS `email`, `pm`.`month` AS `month`, `pm`.`year` AS `year`, `pm`.`salary` AS `salary`, `pm`.`bonus` AS `bonus`, `pm`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `cm`.`company_contactperson` AS `company_contactperson` FROM ((`paymentsmst` `pm` join `staffmst` `sm`) join `companymst` `cm`) WHERE `pm`.`staff_id` = `sm`.`staff_id` AND `pm`.`company_id` = `cm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_salary`
--
DROP TABLE IF EXISTS `vw_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_salary`  AS SELECT `sm`.`salary_id` AS `salary_id`, `sm`.`salary` AS `salary`, `sm`.`staff_id` AS `staff_id`, `stm`.`name` AS `name`, `stm`.`mobile_number` AS `mobile_number`, `stm`.`joining_date` AS `joining_date`, `sm`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `cm`.`company_registration` AS `company_registration`, `cm`.`company_designation` AS `company_designation` FROM ((`salarymst` `sm` join `staffmst` `stm`) join `companymst` `cm`) WHERE `sm`.`staff_id` = `stm`.`staff_id` AND `sm`.`company_id` = `cm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_staffmst`
--
DROP TABLE IF EXISTS `vw_staffmst`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_staffmst`  AS SELECT `sm`.`staff_id` AS `staff_id`, `sm`.`name` AS `name`, `sm`.`dept_id` AS `dept_id`, `dm`.`dept_name` AS `dept_name`, `dm`.`dept_description` AS `dept_description`, `sm`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `cm`.`company_emailid` AS `company_emailid`, `cm`.`start_date` AS `start_date` FROM ((`staffmst` `sm` join `departmentmst` `dm`) join `companymst` `cm`) WHERE `sm`.`dept_id` = `dm`.`dept_id` AND `sm`.`company_id` = `cm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_studentcourselink`
--
DROP TABLE IF EXISTS `vw_studentcourselink`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_studentcourselink`  AS SELECT `scm`.`lnk_id` AS `lnk_id`, `scm`.`reg_date` AS `reg_date`, `scm`.`student_id` AS `student_id`, `sm`.`student_name` AS `student_name`, `sm`.`remarks` AS `remarks`, `scm`.`batch_id` AS `batch_id`, `bm`.`batch_name` AS `batch_name`, `bm`.`fees` AS `fees`, `scm`.`fc_id` AS `fc_id`, `fm`.`faculty_name` AS `faculty_name`, `fm`.`faculty_contactno` AS `faculty_contactno`, `scm`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `cm`.`company_phoneno` AS `company_phoneno` FROM ((((`student_courselink` `scm` join `studentmst` `sm`) join `batchmst` `bm`) join `facultymst` `fm`) join `companymst` `cm`) WHERE `scm`.`student_id` = `sm`.`student_id` AND `scm`.`batch_id` = `bm`.`batch_id` AND `scm`.`fc_id` = `fm`.`faculty_id` AND `scm`.`company_id` = `cm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_student_fee`
--
DROP TABLE IF EXISTS `vw_student_fee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_student_fee`  AS SELECT `sf`.`fee_id` AS `fee_id`, `sf`.`fee_amount` AS `fee_amount`, `sf`.`student_id` AS `student_id`, `sm`.`student_name` AS `student_name`, `sm`.`student_idno` AS `student_idno`, `sf`.`batch_id` AS `batch_id`, `bm`.`batch_name` AS `batch_name`, `bm`.`course_id` AS `course_id`, `sf`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `cm`.`company_emailid` AS `company_emailid` FROM (((`student_fee` `sf` join `studentmst` `sm`) join `batchmst` `bm`) join `companymst` `cm`) WHERE `sf`.`student_id` = `sm`.`student_id` AND `sf`.`batch_id` = `bm`.`batch_id` AND `sf`.`company_id` = `cm`.`company_id``company_id`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_timetable`
--
DROP TABLE IF EXISTS `vw_timetable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_timetable`  AS SELECT `cm`.`company_id` AS `company_id`, `cm`.`company_name` AS `company_name`, `tt`.`faculty_id` AS `faculty_id`, `fm`.`faculty_name` AS `faculty_name`, `tt`.`batch_id` AS `batch_id`, `bm`.`batch_name` AS `batch_name`, `bm`.`startdate` AS `startdate`, `bm`.`enddate` AS `enddate`, `cs`.`course_id` AS `course_id`, `cs`.`course_name` AS `course_name` FROM ((((`timetable` `tt` join `coursemst` `cs`) join `facultymst` `fm`) join `companymst` `cm`) join `batchmst` `bm`) WHERE `tt`.`course_id` = `cs`.`course_id` AND `tt`.`faculty_id` = `fm`.`faculty_id` AND `tt`.`company_id` = `cm`.`company_id` AND `tt`.`batch_id` = `bm`.`batch_id``batch_id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batchmst`
--
ALTER TABLE `batchmst`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `companymst`
--
ALTER TABLE `companymst`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `coursemst`
--
ALTER TABLE `coursemst`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `departmentmst`
--
ALTER TABLE `departmentmst`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `facultycourselink`
--
ALTER TABLE `facultycourselink`
  ADD PRIMARY KEY (`lnk_id`);

--
-- Indexes for table `facultymst`
--
ALTER TABLE `facultymst`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `paymentsmst`
--
ALTER TABLE `paymentsmst`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `salarymst`
--
ALTER TABLE `salarymst`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `staffmst`
--
ALTER TABLE `staffmst`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `studentmst`
--
ALTER TABLE `studentmst`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_courselink`
--
ALTER TABLE `student_courselink`
  ADD PRIMARY KEY (`lnk_id`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `subscriptionmst`
--
ALTER TABLE `subscriptionmst`
  ADD PRIMARY KEY (`subscript_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`),
  ADD KEY `FK_course_id` (`course_id`),
  ADD KEY `FK_batch_id` (`batch_id`),
  ADD KEY `FK_faculty_id` (`faculty_id`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batchmst`
--
ALTER TABLE `batchmst`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `coursemst`
--
ALTER TABLE `coursemst`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT for table `facultymst`
--
ALTER TABLE `facultymst`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112346;

--
-- AUTO_INCREMENT for table `student_courselink`
--
ALTER TABLE `student_courselink`
  MODIFY `lnk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3310;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
