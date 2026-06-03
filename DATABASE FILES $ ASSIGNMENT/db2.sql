-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2026 at 09:03 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_insert` (IN `cid` INT, IN `cname` VARCHAR(30), IN `cduration` INT)   BEGIN
    INSERT INTO course(course_id,course_name,course_duration) VALUES(cid,cname,cduration);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `course_update` (`cid` INT, `cname` VARCHAR(30), `cduration` INT)   BEGIN
    UPDATE course
    SET course_name=cname,
    course_duration=cduration
    WHERE course_id=cid;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_del` (`eid` INT)   BEGIN
    DELETE FROM employee WHERE emp_id=eid;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_insert` (`eid` INT, `ename` VARCHAR(30), `esalary` INT, `eis_active` BOOLEAN, `edepart` VARCHAR(30))   BEGIN
    INSERT INTO employee(emp_id,emp_name,emp_salary,is_active,emp_department) VALUES(eid,ename,esalary,eis_active,edepart);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_insert` (`proid` INT, `proname` VARCHAR(30), `proprice` INT)   BEGIN
    INSERT INTO product(product_id,product_name,product_price) VALUES(proid,proname,proprice);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `student_insert` (IN `sid` INT, IN `sname` VARCHAR(30), IN `semail` VARCHAR(30), IN `sage` INT)   BEGIN
    INSERT INTO student(student_id,student_name,student_email,student_age) VALUES(sid,sname,semail,sage);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `student_update` (`sid` INT, `sname` VARCHAR(30), `semail` VARCHAR(30), `sage` INT)   BEGIN
    UPDATE student
    SET student_name=sname,
    student_email=semail,
    student_age=sage
    WHERE student_id=sid;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stu_fetch` ()   BEGIN
SELECT * FROM student;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_duration`) VALUES
(1, 'PHD', 5),
(2, 'DS', 3),
(3, 'IB', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `emp_salary` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `emp_department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_salary`, `is_active`, `emp_department`) VALUES
(1, 'alpha', 20000, 1, 'IT'),
(2, 'beta', 40000, 1, 'IT'),
(3, 'gamma', 50000, 1, 'HR'),
(4, 'chala', 11000, 1, 'HR'),
(6, 'dala', 55000, 1, 'SALES');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `student_id`, `course_id`) VALUES
(1, 1, 3),
(2, 2, 2),
(4, 4, 1),
(5, 5, 3),
(7, 7, 2),
(8, 3, 2),
(9, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'apple', 30),
(2, 'banana', 20),
(3, 'mango', 50),
(4, 'pencil', 10),
(5, 'brush', 20),
(6, 'aeroplane', 3000),
(7, 'stimmer', 2000),
(8, 'butterfly', 500);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_email` varchar(30) DEFAULT NULL,
  `student_age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_email`, `student_age`) VALUES
(1, 'ajay', 'ajay1', 23),
(2, 'shera', 'shera1', 33),
(3, 'hero', 'hero1', 29),
(4, 'zara', 'zara07', 22),
(5, 'shrinil', 'shrinil1', 29),
(6, 'jani', 'jani1', 22),
(7, 'charan', 'charan1', 29);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_course`
-- (See below for the actual view)
--
CREATE TABLE `student_course` (
`student_name` varchar(30)
,`course_name` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `student_course`
--
DROP TABLE IF EXISTS `student_course`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_course`  AS SELECT `student`.`student_name` AS `student_name`, `course`.`course_name` AS `course_name` FROM ((`enrollment` join `student` on(`enrollment`.`student_id` = `student`.`student_id`)) join `course` on(`enrollment`.`course_id` = `course`.`course_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_index` (`course_name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_index` (`student_name`);

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
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
