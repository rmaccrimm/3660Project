-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2018 at 04:18 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `state` char(50) NOT NULL,
  `zip_code` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(20) NOT NULL,
  `tax_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `last_name`, `first_name`, `address`, `city`, `state`, `zip_code`, `phone`, `date_of_birth`, `gender`, `tax_id`) VALUES
(1, 'TACO', 'FISH', 'sf', 'l;kj;', 'AL', 'TKJDFE', '3023123123123', '1980-02-12', 'male', 123123),
(2, 'Toly', 'Ethan', 'Ethans House', 'Lethbridge', 'AL', '90210', '403-911-9111', '2018-04-03', 'female', 222233),
(3, 'Doe', 'John', 'P Sherman 42 Wallaby Way', 'Sydney', 'AL', '909090', '123123123', '2018-04-18', 'prefer_no', 123443);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `job_id` int(11) NOT NULL,
  `address` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `state` char(50) NOT NULL,
  `zip_code` char(50) NOT NULL,
  `gender` char(50) NOT NULL,
  `date_of_birth` char(20) NOT NULL,
  `commission` float DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `FK_JOB_ID` (`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `last_name`, `first_name`, `phone`, `job_id`, `address`, `city`, `state`, `zip_code`, `gender`, `date_of_birth`, `commission`) VALUES
(2, 'Johnathonson', 'John', '123-123123-232', 1, 'B', 'B', 'CA', '123123', 'male', '2019-12-12', NULL),
(3, 'Bobob', 'Bob', '1-1-1-1-1-1-1-', 2, 'A', 'A', 'DE', '123123', 'female', '0012-12-12', 10),
(4, 'Duke', 'Guy', '403-101-1000', 1, 'Guys House', 'Lethbridge', 'AL', '02993', 'other', '2018-04-26', NULL),
(5, 'MacCrimmon', 'Roddy', '1231231233', 2, '11 2 Ave N', 'Lethbridge', 'AL', '231lkj', 'male', '1880-01-01', 10);

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

DROP TABLE IF EXISTS `employee_job`;
CREATE TABLE IF NOT EXISTS `employee_job` (
  `job_id` int(11) NOT NULL,
  `job_title` char(20) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_job`
--

INSERT INTO `employee_job` (`job_id`, `job_title`) VALUES
(1, 'buyer'),
(2, 'salesperson');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

DROP TABLE IF EXISTS `employment_history`;
CREATE TABLE IF NOT EXISTS `employment_history` (
  `customer_id` int(11) NOT NULL,
  `employer` char(50) NOT NULL,
  `title` char(50) NOT NULL,
  `supervisor` char(50) NOT NULL,
  `phone` char(20) NOT NULL,
  `address` char(50) NOT NULL,
  `start` date NOT NULL,
  `employment_hist_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`employment_hist_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`customer_id`, `employer`, `title`, `supervisor`, `phone`, `address`, `start`, `employment_hist_id`) VALUES
(1, 'Farmers Edge', 'Guy', 'Other guy', '403 999 9999', 'Farm Rd W', '2018-04-18', 1),
(2, 'McDonalds', 'Burger guy', 'Joe Smith', '403-333-3333', 'downtown lethbridge', '2017-01-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amount` float NOT NULL,
  `bank_account` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_date`, `due_date`, `amount`, `bank_account`) VALUES
(1, 0, '2001-01-01', '2002-02-02', 123123, 2332),
(2, 0, '1999-02-10', '1999-12-02', 500, 123123),
(3, 0, '1999-02-10', '1999-02-01', 123123, 123123),
(4, 14, '1999-12-11', '1998-01-01', 123.23, 234234),
(5, 0, '2012-12-12', '2012-01-12', 2323.32, 123123),
(6, 0, '2020-02-02', '2020-01-30', 400, 123),
(7, 0, '2020-02-20', '2020-12-13', 321, 44),
(8, 0, '2020-12-12', '2020-12-14', 123, 123),
(9, 0, '2020-12-13', '2020-12-12', 123.32, 12314),
(10, 0, '1212-12-12', '1212-12-11', 123, 123),
(11, 0, '1212-12-11', '1212-12-12', 123, 123),
(12, 0, '1212-12-11', '1212-12-12', 123, 123),
(13, 0, '1212-12-11', '1212-12-01', 123, 123),
(14, 0, '1212-12-11', '1212-12-22', 123, 123),
(15, 1, '1212-12-12', '2000-12-12', 123123, 123123),
(16, 1, '1212-12-12', '1213-12-12', 123123, 123123),
(17, 1, '1212-12-12', '1211-12-12', 123123, 123123),
(18, 1, '2018-04-10', '2018-04-14', 25, 999999),
(19, 1, '2018-04-10', '2018-04-14', 25, 9999990),
(20, 1, '2018-04-03', '2018-04-27', 2, 84844);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE IF NOT EXISTS `payment_info` (
  `tax_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `avg_days_late` float NOT NULL,
  `late_payments` int(11) NOT NULL,
  PRIMARY KEY (`tax_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`tax_id`, `customer_id`, `avg_days_late`, `late_payments`) VALUES
(0, 58, 73, 15),
(1, 26, 0, 79),
(2, 84, 19, 32),
(3, 76, 69, 84),
(4, 11, 12, 73),
(5, 20, 44, 65),
(6, 17, 96, 17),
(7, 20, 64, 38),
(8, 56, 7, 84),
(9, 30, 4, 3),
(10, 69, 0, 3),
(11, 38, 44, 32),
(12, 56, 73, 7),
(13, 20, 22, 32),
(14, 95, 95, 87),
(15, 50, 56, 63),
(16, 35, 20, 60),
(17, 10, 90, 47),
(18, 25, 82, 56),
(19, 1, 67.4318, 88),
(55, 0, 77.5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `date` date NOT NULL,
  `location` char(20) NOT NULL,
  `auction` tinyint(1) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`purchase_id`),
  KEY `FK_VEHICLE_ID` (`vehicle_id`),
  KEY `FK_EMP_ID` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`date`, `location`, `auction`, `employee_id`, `vehicle_id`, `purchase_id`) VALUES
('2018-01-01', 'Coaldale', 1, 2, 8, 6),
('2018-01-01', 'Lethbridge', 1, 2, 9, 7),
('2018-01-01', 'Calgary', 1, 4, 10, 8),
('2018-01-01', 'Calgary', 1, 2, 11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `total_due` decimal(10,0) NOT NULL,
  `down_payment` decimal(10,0) NOT NULL,
  `finance_amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`),
  KEY `FK_EMP_ID` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `employee_id`, `customer_id`, `date`, `total_due`, `down_payment`, `finance_amount`) VALUES
(10, 5, 2, '2018-01-01', '5000', '2500', '10');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `miles` int(11) NOT NULL,
  `vehicle_condition` char(50) NOT NULL,
  `book_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `style` char(10) NOT NULL,
  `exterior_color` char(10) NOT NULL,
  `interior_color` char(10) NOT NULL,
  `make` char(20) NOT NULL,
  `model` char(20) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `miles`, `vehicle_condition`, `book_price`, `sale_price`, `style`, `exterior_color`, `interior_color`, `make`, `model`, `year`) VALUES
(8, 200000, 'Good', 30000, 10000, 'truck', 'black', 'black', 'Dodge', 'Ram', 2011),
(9, 350000, 'Poor', 10000, 2500, 'sedan', 'silver', 'grey', 'Volkswagen', 'Beetle', 1990),
(10, 50000, 'Excellent', 25000, 10000, 'hatchback', 'pink', 'grey', 'Honda', 'Civic', 2015),
(11, 200000, 'Average', 15000, 2000, 'sedan', 'red', 'black', 'Ford', 'F1-50', 2001);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_owner`
--

DROP TABLE IF EXISTS `vehicle_owner`;
CREATE TABLE IF NOT EXISTS `vehicle_owner` (
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_owner`
--

INSERT INTO `vehicle_owner` (`customer_id`, `vehicle_id`) VALUES
(1, 1),
(1, 2),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_problem`
--

DROP TABLE IF EXISTS `vehicle_problem`;
CREATE TABLE IF NOT EXISTS `vehicle_problem` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` char(50) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `estimated_cost` int(11) NOT NULL,
  `actual_cost` int(11) NOT NULL,
  PRIMARY KEY (`problem_id`) USING BTREE,
  KEY `FK_PURCHASE_ID` (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_problem`
--

INSERT INTO `vehicle_problem` (`problem_id`, `description`, `purchase_id`, `estimated_cost`, `actual_cost`) VALUES
(5, 'Flat Tire', 6, 20, 90),
(6, 'No Windshield', 7, 400, 350),
(7, '', 8, 0, 0),
(8, 'Timing belt shot', 9, 200, 200);

-- --------------------------------------------------------

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
CREATE TABLE IF NOT EXISTS `warranty` (
  `vehicle_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `warranty_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_date` date NOT NULL,
  `total_cost` decimal(10,0) NOT NULL,
  `monthly_cost` decimal(10,0) NOT NULL,
  PRIMARY KEY (`warranty_id`),
  KEY `FK_VEHICLE_ID` (`vehicle_id`),
  KEY `FK_EMP_ID` (`employee_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warranty`
--

INSERT INTO `warranty` (`vehicle_id`, `employee_id`, `customer_id`, `warranty_id`, `sale_date`, `total_cost`, `monthly_cost`) VALUES
(8, 5, 2, 1, '2018-04-10', '1000', '100');

-- --------------------------------------------------------

--
-- Table structure for table `warranty_item`
--

DROP TABLE IF EXISTS `warranty_item`;
CREATE TABLE IF NOT EXISTS `warranty_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `warranty_id` int(11) NOT NULL,
  `item_covered` char(20) NOT NULL,
  `start_date` date NOT NULL,
  `length` int(11) NOT NULL,
  `cost` decimal(10,0) NOT NULL,
  `deductible` decimal(10,0) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_WARRANTY_ID` (`warranty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warranty_item`
--

INSERT INTO `warranty_item` (`item_id`, `warranty_id`, `item_covered`, `start_date`, `length`, `cost`, `deductible`) VALUES
(1, 1, 'Tires', '2018-04-09', 24, '1200', '1200');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
