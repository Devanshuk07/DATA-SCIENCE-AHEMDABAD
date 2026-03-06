-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2026 at 03:08 PM
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
-- Database: `db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `duration` int(11) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`, `duration`, `fees`) VALUES
(1, 'bba', 3, 20000),
(2, 'bcom', 2, 10000),
(3, 'btech', 3, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `hire_date` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `salary`, `department`, `hire_date`, `is_active`) VALUES
(1, 'zara', 22000, 'IT', 17, 1),
(2, 'mehta', 39000, 'HR', 20, 1),
(3, 'diku', 52000, 'HR', 22, 1),
(4, 'vijay', 55000, 'IT', 12, 1),
(5, 'arzoo', 12000, 'SALES', 13, 1),
(6, 'nafiza', 22000, 'SALES', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enroll_id` int(11) NOT NULL,
  `pupil_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enroll_id`, `pupil_id`, `course_id`) VALUES
(2, 2, 2),
(3, 3, 3),
(4, 4, 3),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `high_sal_emp`
-- (See below for the actual view)
--
CREATE TABLE `high_sal_emp` (
`emp_id` int(11)
,`name` varchar(30)
,`salary` int(11)
,`department` varchar(20)
,`hire_date` int(11)
,`is_active` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `category` varchar(30) NOT NULL,
  `created_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `product_name`, `price`, `stock`, `category`, `created_at`) VALUES
(1, 'GOKU', 2000, 1, 'TOYS', 'APRIL'),
(3, 'LEMON', 20, 1, 'VEGETABLES', 'FEB'),
(4, 'TOMATO', 30, 1, 'VEGETABLES', 'FEB'),
(5, 'BOOK', 30, 1, 'STATIONARY', 'DEC'),
(6, 'PEN', 50, 1, 'STATIONARY', 'DEC'),
(7, 'WAFFER', 10, 1, 'GROCERY', 'MAY'),
(8, 'BISCUIT', 50, 1, 'GROCERY', 'MAY');

-- --------------------------------------------------------

--
-- Table structure for table `pupil`
--

CREATE TABLE `pupil` (
  `pupil_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `course` varchar(20) NOT NULL,
  `created_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pupil`
--

INSERT INTO `pupil` (`pupil_id`, `name`, `email`, `age`, `course`, `created_at`) VALUES
(2, 'zoya', 'zoya1', 21, 'bcom', '2024'),
(3, 'lion', 'lion1', 22, 'btech', '2025'),
(4, 'rabbit', 'rabbit1', 23, 'mba', '2023'),
(5, 'mouse', 'dear1', 24, 'bcom', '2026');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pupil_course_details`
-- (See below for the actual view)
--
CREATE TABLE `pupil_course_details` (
`pupil_id` int(11)
,`pupil_name` varchar(30)
,`course_id` int(11)
,`name` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `high_sal_emp`
--
DROP TABLE IF EXISTS `high_sal_emp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `high_sal_emp`  AS SELECT `employee`.`emp_id` AS `emp_id`, `employee`.`name` AS `name`, `employee`.`salary` AS `salary`, `employee`.`department` AS `department`, `employee`.`hire_date` AS `hire_date`, `employee`.`is_active` AS `is_active` FROM `employee` WHERE `employee`.`salary` > '20000' ;

-- --------------------------------------------------------

--
-- Structure for view `pupil_course_details`
--
DROP TABLE IF EXISTS `pupil_course_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pupil_course_details`  AS SELECT `p`.`pupil_id` AS `pupil_id`, `p`.`name` AS `pupil_name`, `c`.`course_id` AS `course_id`, `c`.`name` AS `name` FROM ((`enrollment` `e` join `pupil` `p` on(`e`.`pupil_id` = `p`.`pupil_id`)) join `course` `c` on(`e`.`course_id` = `c`.`course_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_dep_sal` (`department`,`salary`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `pupil_id` (`pupil_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `pupil`
--
ALTER TABLE `pupil`
  ADD PRIMARY KEY (`pupil_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `pupil_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pupil`
--
ALTER TABLE `pupil`
  MODIFY `pupil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`pupil_id`) REFERENCES `pupil` (`pupil_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
