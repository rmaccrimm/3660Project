-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 04:05 AM
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
  `customer_id` int(11) NOT NULL,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `state` char(50) NOT NULL,
  `zip_code` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `last_name`, `first_name`, `address`, `city`, `state`, `zip_code`, `phone`, `date_of_birth`) VALUES
(0, 'SALZ', 'LAURENCE', '832 Croton Street', 'Salinas', 'Alabama', 'D0S3U3', '(826)-615-9358', '1950-11-07'),
(1, 'ERNSPIKER', 'ARACELI', '790 La Mirada Street', 'Boulder', 'New York', 'U1T1F7', '(475)-211-2149', '1961-12-18'),
(2, 'PIERCEFIELD', 'MARYLIN', '535 Shorrold Street', 'Naperville', 'Michigan', 'U1A9I4', '(057)-008-7465', '1943-01-17'),
(3, 'MARKUS', 'DEBORA', '342 West San Carlos Street', 'Duluth', 'Indiana', 'G1P5C3', '(991)-799-5698', '1944-05-29'),
(4, 'ALTOBELLI', 'BRYCE', '555 N Ludlam Way', 'Lubbock', 'Wyomin', 'X5K6K0', '(413)-168-8523', '1980-06-10'),
(5, 'LEVINGS', 'SUZIE', '351 Millridge Boulevard', 'Garden Grove', 'Arizona', 'Q9P9A3', '(755)-504-7589', '1977-03-27'),
(6, 'RAMGEL', 'ANTONE', '33 Deer Path Way', 'Sunnyvale', 'New York', 'T6F3K8', '(649)-110-4497', '1953-10-26'),
(7, 'PRASSER', 'FLORENCIA', '181 Dean Lesher Street', 'Dayton', 'Utah', 'Q5L5P1', '(560)-793-5112', '1998-03-15'),
(8, 'DEMRY', 'MARRY', '655 Gerome Drive', 'Ocala', 'Missouri', 'D4Y5H7', '(415)-097-0710', '1972-10-13'),
(9, 'RAEHL', 'NANA', '332 Plyers Mill Drive', 'Cape Coral', 'Ohio', 'K5M8K5', '(087)-522-3561', '1980-07-11'),
(10, 'VISKER', 'CRISTY', '218 Hearn Drive', 'Richmond County', 'Kansas', 'P5W5G1', '(206)-953-3050', '1972-01-12'),
(11, 'OPPENHEIMER', 'LEONTINE', '50 Porto Marino Boulevard', 'Canton', 'Mississippi', 'P6X3S1', '(951)-673-4441', '1987-08-01'),
(12, 'CORDONNIER', 'ROSEANNA', '156 Ferol Way', 'Beaumont', 'Ohio', 'S0U3G5', '(187)-206-4830', '1983-08-14'),
(13, 'MERKSAMER', 'HANG', '86 Kingwell Boulevard', 'Portsmouth', 'Montana', 'E7T9F3', '(090)-660-2665', '1997-08-17'),
(14, 'QUINOES', 'DIANA', '209 Pleasant Colony Avenue', 'Sebastian', 'Oregon', 'S2Y4P6', '(406)-837-2000', '1957-11-23'),
(15, 'CLARENCE', 'CRISTEN', '674 Tunnell Boulevard', 'Virginia Beach', 'Louisiana', 'B2G9P3', '(437)-908-4336', '1976-05-26'),
(16, 'ZHENG', 'TAMEKA', '522 Darvell Way', 'Green Bay', 'Louisiana', 'C4X4O9', '(351)-101-5710', '1964-07-21'),
(17, 'VARAS', 'BRINDA', '157 N Emerson Drive', 'Miramar', 'Texas', 'U5X3H9', '(411)-598-6742', '1956-03-14'),
(18, 'LEVERETT', 'TRANG', '260 Ghyll Avenue', 'Henderson', 'Kentucky', 'M5J2E0', '(790)-103-7823', '1950-04-13'),
(19, 'GUICE', 'ROBIN', '276 Okehurst Avenue', 'Billings', 'Texas', 'J3W2R6', '(431)-411-1283', '1960-01-26'),
(20, 'URPS', 'LUZ', '480 Ourisman Drive', 'Olympia', 'Arkansas', 'F0T4Q9', '(419)-418-0508', '1964-06-19'),
(21, 'LOCUST', 'KIZZIE', '87 Maynestone Avenue', 'Arvada', 'Alabama', 'U1W2H5', '(120)-476-9501', '1938-09-15'),
(22, 'WINARSKI', 'HILARIO', '390 Mima Street', 'Durham', 'Utah', 'O6G1O5', '(199)-164-3411', '1968-04-25'),
(23, 'FINNEL', 'GABRIELLA', '103 Cornwall Street', 'Panama City', 'Mississippi', 'F3S6Y9', '(171)-062-9731', '1942-11-29'),
(24, 'LASHUA', 'HIROKO', '692 Gregg Road', 'Orem', 'New Hampshire', 'O5U7P6', '(375)-688-4291', '1942-03-06'),
(25, 'LOWLER', 'VERDELL', '649 Stedham Road', 'North Charleston', 'Virginia', 'L6I6N9', '(955)-921-9750', '1936-05-08'),
(26, 'KOVALCIK', 'DEADRA', '638 Chubbs Brook Drive', 'Hesperia', 'New Jersey', 'L2J8Z4', '(748)-932-5012', '1963-11-19'),
(27, 'MUNDAY', 'DEBRAH', '867 South E Drive', 'Aurora', 'Kansas', 'K9L9K5', '(773)-025-2366', '1982-05-12'),
(28, 'ZAKARIAN', 'DOYLE', '125 Kyalite Avenue', 'Orem', 'Vermont', 'B6Z8O5', '(960)-100-6929', '1964-04-09'),
(29, 'DRACH', 'STANLEY', '620 Silk MIll Way', 'Akron', 'Connecticut', 'O0T0X1', '(536)-741-0470', '1938-08-03'),
(30, 'RAYBUCK', 'ISSAC', '361 Siskiyou Drive', 'Clarke County', 'Louisiana', 'R4C7J6', '(399)-742-0424', '1956-03-26'),
(31, 'CIERLEY', 'HERMINA', '374 Bellevale Avenue', 'Bellevue', 'Oklahoma', 'M6E0M8', '(565)-335-5736', '1937-11-04'),
(32, 'HORNSTEIN', 'GRAYCE', '160 Buntingford Drive', 'Ogden', 'Arizona', 'C2W9L6', '(985)-654-4560', '1930-05-08'),
(33, 'VOLO', 'SHARONDA', '609 Demetrius Boulevard', 'Waco', 'Michigan', 'U9W7Z8', '(873)-860-4835', '1999-10-11'),
(34, 'CORNFIELD', 'YUK', '682 Flemish Drive', 'Glendale', 'Arkansas', 'O7Z3F0', '(587)-058-0676', '1948-03-12'),
(35, 'NERIO', 'MINDY', '572 Quattro Way', 'Santa Rosa', 'Virginia', 'E0L7V0', '(514)-905-7394', '1986-08-04'),
(36, 'SYRSTAD', 'MARCOS', '204 Saint Benedicts Road', 'Minneapolis', 'Arkansas', 'C0M6J8', '(550)-228-5443', '1984-06-19'),
(37, 'DRESSMAN', 'MELIDA', '592 Pier Approach Street', 'Sebastian', 'Wisconsin', 'U4W7A6', '(227)-786-8127', '1957-04-17'),
(38, 'GLIMPSE', 'SHAWN', '154 E Wheelock Drive', 'Saginaw', 'New York', 'R7T0C3', '(060)-545-0277', '1986-09-17'),
(39, 'KOLKMAN', 'TOBIE', '302 Marble Fawn Boulevard', 'Trenton', 'Montana', 'T8E8V6', '(144)-388-7127', '1996-03-25'),
(40, 'WRIGLEY', 'ROSEMARIE', '886 Fara Avenue', 'Marysville', 'Iowa', 'H2F3N6', '(264)-898-6673', '1942-12-05'),
(41, 'FARQUHARSON', 'DENNISE', '173 Horseshoe Bend Drive', 'Hollywood', 'Texas', 'V0S1G0', '(764)-965-6946', '1978-06-23'),
(42, 'KIES', 'ALDEN', '23 Darnel Street', 'Killeen', 'Oregon', 'G8U4H8', '(230)-061-6062', '1931-09-11'),
(43, 'COOCH', 'SIMONA', '785 Lake Lawn Street', 'Fargo', 'Mississippi', 'W6A7E8', '(623)-405-5877', '1997-12-14'),
(44, 'MALEKZADEH', 'EUGENIE', '657 Ensign Street', 'Eugene', 'Illinois', 'M0Q0E9', '(072)-818-8495', '1985-09-22'),
(45, 'GUGLIELMO', 'CUC', '793 E Fulton Avenue', 'Harlingen', 'Arkansas', 'T0J8B4', '(392)-322-5011', '1967-03-29'),
(46, 'OZGA', 'EMERSON', '951 St. Ives Avenue', 'Visalia', 'Delaware', 'C9K9J7', '(709)-662-4595', '1942-08-02'),
(47, 'DIMERY', 'ERNA', '613 W Regan Boulevard', 'Palm Bay', 'California', 'J7H0V8', '(209)-818-7570', '1937-11-09'),
(48, 'KABIGTING', 'SEBRINA', '464 Geranimo Road', 'Tacoma', 'Connecticut', 'E4L8K7', '(644)-298-3664', '1959-11-11'),
(49, 'DEFRANCO', 'PHOEBE', '247 Asiatic Road', 'Madison', 'South Dakota', 'Z5X5W8', '(067)-783-5132', '1936-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `last_name` char(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `FK_JOB_ID` (`job_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `last_name`, `first_name`, `phone`, `job_id`) VALUES
(0, 'MINJAREZ', 'SHELBY', '(762)-693-2833', 1),
(1, 'DUNNAVILLE', 'LETA', '(542)-194-9751', 2),
(2, 'BERNET', 'GENNY', '(679)-183-6452', 1),
(3, 'PERRELLA', 'MARC', '(543)-762-8051', 2),
(4, 'KAINA', 'CHARLIE', '(082)-677-5186', 1),
(5, 'KALEHUAWEHE', 'DEBERA', '(469)-660-3038', 1),
(6, 'PRESLIPSKY', 'SHAREN', '(544)-007-1100', 1),
(7, 'BALLMER', 'CLAYTON', '(488)-818-8694', 2),
(8, 'BINFORD', 'CLIFF', '(853)-488-1131', 1),
(9, 'FOREST', 'CLARK', '(851)-203-8812', 2),
(10, 'LOCKLIN', 'LEEANNE', '(361)-510-2095', 2),
(11, 'KADY', 'SUNNY', '(197)-343-7805', 2),
(12, 'HA', 'ALEJANDRINA', '(428)-564-4358', 1),
(13, 'WIETZEL', 'BESSIE', '(470)-520-8283', 2),
(14, 'VIGUERAS', 'NICOLASA', '(004)-974-6663', 2),
(15, 'SNIFFIN', 'ADELINE', '(302)-007-3701', 1),
(16, 'GUTHRIE', 'JETTA', '(663)-030-7571', 2),
(17, 'POLAKOWSKI', 'MICAH', '(252)-709-5548', 2),
(18, 'BOBO', 'TEOFILA', '(579)-749-7418', 2),
(19, 'KINGDON', 'LATASHA', '(863)-440-1934', 1),
(20, 'TANZOSCH', 'BYRON', '(044)-576-4416', 2),
(21, 'PURSELL', 'NICKI', '(676)-638-3298', 2),
(22, 'VANDEZANDE', 'NICOLE', '(181)-292-2973', 2),
(23, 'WESTCOTT', 'TITUS', '(503)-434-6581', 2),
(24, 'HAUGLAND', 'BARABARA', '(965)-556-2942', 2),
(25, 'MERRIL', 'MARGIT', '(832)-353-7269', 2),
(26, 'BLACK', 'PEARLIE', '(981)-750-7373', 2),
(27, 'NEELON', 'YU', '(736)-160-6643', 1),
(28, 'OSBECK', 'RICKY', '(198)-530-2606', 2),
(29, 'VOTRAW', 'SHERIDAN', '(091)-458-1823', 2),
(30, 'DETHOMAS', 'GAYLE', '(705)-984-6945', 2),
(31, 'DELUNA', 'BETHANY', '(362)-836-2052', 2),
(32, 'CHEREPY', 'MARCOS', '(378)-018-7691', 1),
(33, 'BIELINSKI', 'WEN', '(895)-269-4219', 2),
(34, 'WHOBREY', 'ELODIA', '(174)-264-6950', 2),
(35, 'RINARD', 'DEBORAH', '(698)-980-4293', 2),
(36, 'SUBLETTE', 'JOSH', '(410)-623-5993', 2),
(37, 'KEMPNER', 'PHUONG', '(121)-706-7480', 2),
(38, 'SCHMOLDT', 'ZETTA', '(762)-985-7465', 2),
(39, 'BAMBURG', 'SHARRON', '(714)-855-6186', 1),
(40, 'RIPPERGER', 'CYRSTAL', '(522)-298-3469', 2),
(41, 'GULYAS', 'LATASHA', '(326)-673-7628', 1),
(42, 'ESSELINK', 'KAMI', '(048)-219-3283', 1),
(43, 'MEATH', 'DUSTI', '(124)-517-6056', 2),
(44, 'ROCKFORD', 'PAULETTA', '(375)-774-1315', 1),
(45, 'EARY', 'DONNETTE', '(126)-678-2718', 1),
(46, 'LISTA', 'VERDELL', '(454)-926-8245', 2),
(47, 'FERTAL', 'TATYANA', '(453)-830-7659', 2),
(48, 'MISHOE', 'BARBIE', '(228)-413-4064', 2),
(49, 'HOHENSEE', 'GIDGET', '(437)-309-6029', 1);

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
(1, 'salesperson'),
(2, 'buyer');

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
  `employment_hist_id` int(11) NOT NULL,
  PRIMARY KEY (`employment_hist_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `due_date` date NOT NULL,
  `paid_date` date NOT NULL,
  `amount` float NOT NULL,
  `bank_account` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE IF NOT EXISTS `payment_info` (
  `tax_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `avg_days_late` int(11) NOT NULL,
  `late_payments` int(11) NOT NULL,
  PRIMARY KEY (`tax_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `purchase_id` int(11) NOT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `FK_VEHICLE_ID` (`vehicle_id`),
  KEY `FK_EMP_ID` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `total_due` decimal(10,0) NOT NULL,
  `down_payment` decimal(10,0) NOT NULL,
  `finance_amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`),
  KEY `FK_EMP_ID` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_comission`
--

DROP TABLE IF EXISTS `sales_comission`;
CREATE TABLE IF NOT EXISTS `sales_comission` (
  `employee_id` int(11) DEFAULT NULL,
  `comission_amount` float NOT NULL,
  `commission_id` int(11) NOT NULL,
  PRIMARY KEY (`commission_id`),
  KEY `FK_EMP_ID` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_problem`
--

DROP TABLE IF EXISTS `vehicle_problem`;
CREATE TABLE IF NOT EXISTS `vehicle_problem` (
  `problem_id` int(11) NOT NULL,
  `description` char(50) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `estimated_cost` int(11) NOT NULL,
  `actual_cost` int(11) NOT NULL,
  PRIMARY KEY (`problem_id`) USING BTREE,
  KEY `FK_PURCHASE_ID` (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
CREATE TABLE IF NOT EXISTS `warranty` (
  `vehicle_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `warranty_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `total_cost` decimal(10,0) NOT NULL,
  `monthly_cost` decimal(10,0) NOT NULL,
  PRIMARY KEY (`warranty_id`),
  KEY `FK_VEHICLE_ID` (`vehicle_id`),
  KEY `FK_EMP_ID` (`employee_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warranty_item`
--

DROP TABLE IF EXISTS `warranty_item`;
CREATE TABLE IF NOT EXISTS `warranty_item` (
  `item_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `item_covered` char(20) NOT NULL,
  `start_date` date NOT NULL,
  `length` int(11) NOT NULL,
  `cost` decimal(10,0) NOT NULL,
  `deductible` decimal(10,0) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_WARRANTY_ID` (`warranty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `job_id_constraint` FOREIGN KEY (`job_id`) REFERENCES `employee_job` (`job_id`);

--
-- Constraints for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD CONSTRAINT `employment_hist_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_emp_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_comission`
--
ALTER TABLE `sales_comission`
  ADD CONSTRAINT `commission_emp_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_problem`
--
ALTER TABLE `vehicle_problem`
  ADD CONSTRAINT `problem_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`purchase_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warranty`
--
ALTER TABLE `warranty`
  ADD CONSTRAINT `warranty_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `warranty_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `warranty_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `warranty_item`
--
ALTER TABLE `warranty_item`
  ADD CONSTRAINT `item_warranty_id` FOREIGN KEY (`warranty_id`) REFERENCES `warranty` (`warranty_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
