-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2018 at 04:39 AM
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
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE IF NOT EXISTS `buyer` (
  `employee_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `state` int(50) NOT NULL,
  `zip_code` int(6) NOT NULL,
  `phone` int(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `tax_id` int(11) NOT NULL,
  `avg_days_late` int(11) NOT NULL,
  `late_payments` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `phone` char(20) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `start` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_date` date NOT NULL,
  `due_date` date NOT NULL,
  `paid_date` date NOT NULL,
  `amount` float NOT NULL,
  `bank_account` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `date` date NOT NULL,
  `location` char(20) NOT NULL,
  `auction` tinyint(1) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_due` decimal(10,0) NOT NULL,
  `down_payment` decimal(10,0) NOT NULL,
  `finance_amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
CREATE TABLE IF NOT EXISTS `salesperson` (
  `employee_id` int(11) NOT NULL,
  `comission` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `miles` int(11) NOT NULL,
  `vehicle_condition` int(11) NOT NULL,
  `book_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `style` char(10) NOT NULL,
  `exterior_color` char(10) NOT NULL,
  `interior_color` char(10) NOT NULL,
  `make` char(20) NOT NULL,
  `model` char(20) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_owner`
--

DROP TABLE IF EXISTS `vehicle_owner`;
CREATE TABLE IF NOT EXISTS `vehicle_owner` (
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_problem`
--

DROP TABLE IF EXISTS `vehicle_problem`;
CREATE TABLE IF NOT EXISTS `vehicle_problem` (
  `description` char(50) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `estimated_cost` int(11) NOT NULL,
  `actual_cost` int(11) NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
CREATE TABLE IF NOT EXISTS `warranty` (
  `vehicle_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `total_cost` decimal(10,0) NOT NULL,
  `monthly_cost` decimal(10,0) NOT NULL,
  PRIMARY KEY (`warranty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warranty_item`
--

DROP TABLE IF EXISTS `warranty_item`;
CREATE TABLE IF NOT EXISTS `warranty_item` (
  `warranty_id` int(11) NOT NULL,
  `item_covered` char(20) NOT NULL,
  `start_date` date NOT NULL,
  `length` int(11) NOT NULL,
  `cost` decimal(10,0) NOT NULL,
  `deductible` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
