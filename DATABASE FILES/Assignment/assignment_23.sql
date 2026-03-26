-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2026 at 12:07 PM
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
-- Database: `assignment_23`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `assign_man` (`pemp_id` INT, `emanager_id` INT)   BEGIN
    UPDATE employee
    SET manager_id=emanager_id
    WHERE emp_id=pemp_id ;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `del_emp` (`edept_id` INT)   BEGIN
    DELETE FROM employee WHERE dept_id=edept_id;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_emp` (`iemp_id` INT, `ifirst_name` VARCHAR(30), `ilast_name` VARCHAR(30), `ijob_id` INT, `imanager_id` INT, `isalary` INT, `icommission` INT, `idept_id` INT, `ijob_title` VARCHAR(30))   BEGIN
    INSERT INTO employee(emp_id,first_name,last_name,job_id,manager_id,salary,commission,dept_id,job_title) VALUES(iemp_id,ifirst_name,ilast_name,ijob_id,imanager_id,isalary,icommission,idept_id,ijob_title);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `max_salary` ()   BEGIN
    SELECT first_name,last_name,dept_id,MAX(salary) AS max_salary 
    FROM employee 
    GROUP BY dept_id ;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `promote_emp` (`pemp_id` INT, `pincri_salary` INT, `pjob` VARCHAR(30))   BEGIN
    UPDATE employee
    SET job_title=pjob,salary=salary+pincri_salary
    WHERE emp_id=pemp_id ;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `c_city` varchar(30) NOT NULL,
  `c_grade` varchar(10) NOT NULL,
  `salesman_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `c_name`, `c_city`, `c_grade`, `salesman_id`) VALUES
(1, 'vijay', 'london', '100', 111),
(2, 'shera', 'washington', '120', 121),
(3, 'kuldeep', 'new york', '110', 221),
(4, 'parmar', 'london', '91', 321),
(5, 'nikunj', 'paris', '89', 231),
(6, 'dhiraj', 'new york', '190', 421),
(7, 'yogesh', 'london', '112', 521),
(8, 'sumit', 'washington', '99', 721),
(9, 'tendulkar', 'japan', '91', 621),
(10, 'neeti', 'japan', '117', 921);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `dept_location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_location`) VALUES
(111, 'management', 'toranto'),
(119, 'cash', 'singapore'),
(122, 'sales', 'dubai'),
(190, 'help', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `commission` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `job_title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `first_name`, `last_name`, `job_id`, `manager_id`, `salary`, `commission`, `dept_id`, `job_title`) VALUES
(1, 'singhaniya', 'vipul', 2, NULL, 75000, 24000, 122, 'sales_manager'),
(2, 'arijit', 'singh', 40, NULL, 30000, 10000, 190, 'helper_manager'),
(3, 'raijada', 'reyansh', 11, NULL, 45000, 14000, 111, 'cash_manager'),
(4, 'gulam', 'simran', 10, 4, 37000, 9000, 111, 'assist_manager'),
(5, 'thakur', 'vijay', 21, 1, 20000, 4000, 122, 'salesman'),
(6, 'surya', 'bhima', 20, 4, 22000, 3000, 111, 'assistant'),
(7, 'chaudhari', 'zara', 19, 1, 30000, 6000, 122, 'salesman'),
(8, 'mittal', 'dhamu', 12, 1, 19000, 2000, 122, 'salesman'),
(9, 'zoravar', 'zeel', 4, 1, 30000, 7000, 111, 'assistant'),
(10, 'hamza', 'ali', 7, 4, 33000, 5000, 111, 'senior_assistant'),
(11, 'alina', 'khan', 30, 3, 23000, 3000, 119, 'senior_cashier'),
(12, 'jamali', 'jameel', 29, 3, 29000, 6000, 119, 'cashier'),
(13, 'rehman', 'baloch', 32, 3, 32000, 7000, 119, 'senior_cashier'),
(14, 'mirza', 'galib', 37, 2, 15000, 1000, 190, 'helper'),
(15, 'gulzar', 'jeeya', 35, 2, 17000, 2000, 190, 'helper'),
(16, 'nirmal', 'suresh', 27, 2, 20000, 4000, 190, 'senior_helper'),
(17, 'hirva', 'mehta', 44, 1, 22000, 3000, 122, 'sales_executive'),
(18, 'hakim', 'sura', 45, 2, 12000, 1000, 190, 'general_helper'),
(19, 'hirva', 'mehta', 46, 3, 32000, 6000, 111, 'senior_casier');

-- --------------------------------------------------------

--
-- Stand-in structure for view `emp_dept`
-- (See below for the actual view)
--
CREATE TABLE `emp_dept` (
`emp_id` int(11)
,`first_name` varchar(30)
,`last_name` varchar(30)
,`job_id` int(11)
,`manager_id` int(11)
,`salary` int(11)
,`commission` int(11)
,`dept_id` int(11)
,`job_title` varchar(30)
,`dept_name` varchar(30)
,`dept_location` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `purchase_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `purchase_amount`) VALUES
(1, 1, 2000),
(2, 2, 6000),
(3, 3, 3000),
(4, 4, 4000),
(5, 5, 1500),
(6, 6, 1700),
(7, 7, 2700),
(8, 8, 3200),
(9, 9, 3700),
(10, 10, 4900),
(11, 1, 4000),
(12, 1, 5000),
(13, 2, 2000),
(14, 5, 5000),
(15, 7, 6000),
(16, 3, 3000),
(17, 1, 1200),
(18, 4, 4000),
(19, 5, 5900),
(20, 9, 5800),
(21, 10, 5100),
(22, 10, 5200),
(23, 9, 5400),
(24, 2, 4400),
(25, 9, 5500),
(26, 10, 5100);

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
(1, 'tea', 300),
(2, 'biscuit', 45),
(3, 'water', 70),
(4, 'milk', 120),
(5, 'oil', 400),
(6, 'petrol', 100),
(7, 'ghee', 210),
(8, 'paneer', 120),
(9, 'ice', 20),
(10, 'cream', 90),
(11, 'potato', 40),
(12, 'onion', 80),
(13, 'shoes', 1200),
(14, 'tshirt', 900),
(15, 'gucci', 3000);

-- --------------------------------------------------------

--
-- Structure for view `emp_dept`
--
DROP TABLE IF EXISTS `emp_dept`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_dept`  AS SELECT `employee`.`emp_id` AS `emp_id`, `employee`.`first_name` AS `first_name`, `employee`.`last_name` AS `last_name`, `employee`.`job_id` AS `job_id`, `employee`.`manager_id` AS `manager_id`, `employee`.`salary` AS `salary`, `employee`.`commission` AS `commission`, `employee`.`dept_id` AS `dept_id`, `employee`.`job_title` AS `job_title`, `department`.`dept_name` AS `dept_name`, `department`.`dept_location` AS `dept_location` FROM (`employee` join `department` on(`employee`.`dept_id` = `department`.`dept_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
