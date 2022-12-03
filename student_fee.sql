-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 08:41 AM
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
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `fee_amount` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_id`, `student_id`, `batch_id`, `fee_amount`, `paid_amount`, `paid_date`, `paid_status`) VALUES
(1, 701, 101, 10000, 5000, '2022-12-01', 1),
(2, 702, 110, 12000, 10000, '2022-11-01', 1),
(3, 703, 115, 13000, 10000, '2022-11-10', 1),
(4, 704, 120, 13000, 13000, '2022-11-10', 1),
(5, 705, 125, 15000, 10000, '2022-11-20', 1),
(6, 706, 128, 15000, 15000, '2022-10-31', 1),
(7, 707, 131, 20000, 15000, '2022-11-15', 1),
(8, 708, 134, 20000, 20000, '2022-12-01', 1),
(9, 709, 141, 21000, 15000, '2022-11-20', 1),
(10, 710, 148, 25000, 15000, '2022-11-15', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
