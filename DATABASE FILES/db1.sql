-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2026 at 11:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `coursefees` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `dateofbirth` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `course`, `address`, `pincode`, `age`, `email`, `coursefees`, `day`, `dateofbirth`) VALUES
(1, 'devanshu', 'data science', 'rajkot', 36, 99, 'dd', 20000, 'monday', '22 april'),
(2, 'rutu', 'data science', 'mumbai', 9, 19, NULL, 10000, 'wednesday', '22 july'),
(3, 'meet', 'data ana', 'jamnagar', 99, 22, NULL, 20000, 'friday', '29 feb'),
(4, 'rehman daqait', 'DS,', 'BANARAS', 99, 22, NULL, 20000, 'FRIDAY', '22 APRIL'),
(5, 'rahul', 'bca', 'dehradun', 99, 20, NULL, 30000, 'wednesday', '17 december'),
(6, 'mirza', 'bca', 'ghaziyabad', 90, 22, NULL, 20000, 'friday', '22 march'),
(7, 'ruhi', 'btech', 'delhi', 92, 23, NULL, 10000, 'monday', '30 march'),
(8, 'diya', 'bca', 'jamnagar', 22, 19, NULL, 30000, 'friday', '22 july'),
(9, 'vijay', 'bcom', 'morbi', 190, 33, NULL, 30000, 'tuesday', '11 april'),
(10, 'diku', 'tech', 'rajashthan', 99, 20, NULL, 30000, 'monday', '2 march'),
(11, 'arzoo', 'btech', 'tankara', 99, 27, NULL, 20000, 'thursday', '25 may'),
(12, 'meera', 'engineer', 'delhi', 99, 31, NULL, 30000, 'wednesday', '19 january');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_coursefees`
-- (See below for the actual view)
--
CREATE TABLE `student_coursefees` (
`id` int(11)
,`name` varchar(30)
,`course` varchar(15)
,`address` varchar(50)
,`pincode` int(11)
,`age` int(11)
,`email` varchar(20)
,`coursefees` int(11)
,`day` varchar(10)
,`dateofbirth` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_pincode`
-- (See below for the actual view)
--
CREATE TABLE `student_pincode` (
`id` int(11)
,`name` varchar(30)
,`course` varchar(15)
,`address` varchar(50)
,`pincode` int(11)
,`age` int(11)
,`email` varchar(20)
,`coursefees` int(11)
,`day` varchar(10)
,`dateofbirth` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `student_coursefees`
--
DROP TABLE IF EXISTS `student_coursefees`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_coursefees`  AS SELECT `student`.`id` AS `id`, `student`.`name` AS `name`, `student`.`course` AS `course`, `student`.`address` AS `address`, `student`.`pincode` AS `pincode`, `student`.`age` AS `age`, `student`.`email` AS `email`, `student`.`coursefees` AS `coursefees`, `student`.`day` AS `day`, `student`.`dateofbirth` AS `dateofbirth` FROM `student` WHERE `student`.`coursefees` = '30000' ;

-- --------------------------------------------------------

--
-- Structure for view `student_pincode`
--
DROP TABLE IF EXISTS `student_pincode`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_pincode`  AS SELECT `student`.`id` AS `id`, `student`.`name` AS `name`, `student`.`course` AS `course`, `student`.`address` AS `address`, `student`.`pincode` AS `pincode`, `student`.`age` AS `age`, `student`.`email` AS `email`, `student`.`coursefees` AS `coursefees`, `student`.`day` AS `day`, `student`.`dateofbirth` AS `dateofbirth` FROM `student` WHERE `student`.`pincode` = '99' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
