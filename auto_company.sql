-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 09:40 PM
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
(0, 'BODMAN', 'CAROLANN', '705817129', 2),
(1, 'PLONA', 'ROBBI', '311724291', 9),
(2, 'FORNER', 'DIANNA', '342925138', 3),
(3, 'STANWICK', 'CANDICE', '373487164', 1),
(4, 'TAJIRI', 'THAD', '356356701', 5),
(5, 'LISSY', 'LEDA', '961793052', 4),
(6, 'ZOBEL', 'KRISTIN', '105765650', 3),
(7, 'LANOIS', 'ALBA', '103266285', 5),
(8, 'NOVOSEL', 'AHMAD', '915063306', 4),
(9, 'SINKA', 'LATRISHA', '205826931', 2),
(10, 'AUTRY', 'SOMMER', '937688417', 0),
(11, 'MARQUES', 'ELENA', '781673139', 5),
(12, 'CARRIZALES', 'MARIEL', '698506780', 9),
(13, 'ZURN', 'LARRY', '245457572', 6),
(14, 'MORTELLARO', 'DYAN', '479380906', 5),
(15, 'RAYMOND', 'ANGLA', '855363906', 0),
(16, 'HUDEK', 'MATHILDA', '951804929', 9),
(17, 'RIPPER', 'KIRSTEN', '558731713', 9),
(18, 'SCHERTZ', 'GILLIAN', '386598090', 3),
(19, 'CAMILO', 'ORLANDO', '608961869', 3);

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
(0, 'JobTitle'),
(1, 'JobTitle'),
(2, 'JobTitle'),
(3, 'JobTitle'),
(4, 'JobTitle'),
(5, 'JobTitle'),
(6, 'JobTitle'),
(7, 'JobTitle'),
(8, 'JobTitle'),
(9, 'JobTitle'),
(10, 'JobTitle'),
(11, 'JobTitle'),
(12, 'JobTitle'),
(13, 'JobTitle'),
(14, 'JobTitle'),
(15, 'JobTitle'),
(16, 'JobTitle'),
(17, 'JobTitle'),
(18, 'JobTitle'),
(19, 'JobTitle');

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

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`customer_id`, `employer`, `title`, `supervisor`, `phone`, `address`, `start`, `employment_hist_id`) VALUES
(61, 'Lumencraft', 'Employee', 'CECILE MCCANDLISH', '219339239', '539 Wastdale Way', '1962-03-09', 0),
(84, 'International Business Machines (IBM)', 'Goon', 'JANNETTE LARRISON', '544379569', '892 E Bexhill Avenue', '1990-03-29', 1),
(27, 'Eureka', 'Employee', 'CAMILLE MATIER', '708626187', '675 East Sargent Street', '1995-02-18', 2),
(67, 'Chevron', 'Pipe Fitter', 'MANDA ZAVCEDO', '185625480', '846 Lullaby Street', '2004-11-16', 3),
(22, 'Sunny Real Estate Investments', 'CEO', 'KARREN DENNY', '504645315', '410 Northeast Ames Lake Avenue', '1983-10-14', 4),
(61, 'Syntel', 'Pipe Fitter', 'SOCORRO COSSABOON', '375244940', '142 Elverston Boulevard', '1940-05-19', 5),
(74, 'Hardee\'s', 'CEO', 'HATTIE NEITZEL', '912491352', '553 Wayletts Road', '1950-06-24', 6);

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_date`, `due_date`, `paid_date`, `amount`, `bank_account`) VALUES
(0, 26, '2009-11-03', '2006-01-07', '2003-06-28', 1402.52, 487471090),
(1, 49, '2001-05-05', '2010-02-06', '1999-10-18', 1288.14, 447038217),
(2, 77, '2001-10-23', '2009-09-22', '2011-02-13', 32.55, 308438444),
(3, 81, '2003-12-11', '2009-03-10', '2010-09-18', 600.48, 909165443),
(4, 11, '2001-04-14', '1999-10-21', '2004-10-02', 1180.87, 645407887),
(5, 39, '2001-04-14', '2000-11-23', '2000-04-03', 1937.18, 198344822),
(6, 46, '2002-08-03', '2000-02-09', '2004-11-08', 1630.4, 528675053),
(7, 15, '2012-05-13', '2001-05-18', '2005-10-25', 692.55, 152355052),
(8, 27, '2015-10-16', '2004-10-14', '2010-04-05', 1504.3, 693789632),
(9, 35, '2012-04-06', '2015-07-14', '2015-11-11', 1562.18, 477133409),
(10, 53, '2011-02-28', '2002-05-13', '2013-11-01', 1563.98, 283254940),
(11, 38, '2009-08-16', '2007-06-11', '2008-07-07', 1139.07, 156264714),
(12, 40, '2000-07-26', '2006-06-08', '2017-06-05', 1793.22, 969030931),
(13, 59, '2014-05-23', '2006-09-09', '2009-11-08', 237.45, 860036435),
(14, 35, '2011-10-16', '2001-12-29', '2001-05-06', 931.38, 893235989),
(15, 85, '2016-01-15', '2010-07-03', '1999-09-03', 1335, 880599904),
(16, 50, '2004-09-24', '2002-08-05', '2006-11-01', 1782.64, 352411920),
(17, 24, '2000-03-07', '2009-01-28', '2010-12-07', 736.53, 776629488),
(18, 61, '2011-01-16', '2008-11-15', '2011-08-29', 739.31, 963645690),
(19, 69, '2008-10-19', '2016-09-25', '2015-09-09', 1159.68, 456664596);

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
(19, 1, 64, 87);

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

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`date`, `location`, `auction`, `employee_id`, `vehicle_id`, `purchase_id`) VALUES
('2003-05-14', 'Yakima', 1, 4, 68, 0),
('2017-11-01', 'Punta Gorda', 0, 58, 62, 1),
('2003-11-01', 'Bakersfield', 1, 66, 55, 2),
('2016-01-14', 'Washington', 1, 19, 72, 3),
('2005-08-09', 'Fitchburg', 1, 7, 15, 4),
('1999-07-13', 'Ogden', 0, 48, 95, 5),
('2006-09-16', 'Fort Lauderdale', 0, 8, 23, 6),
('2014-05-09', 'Green Bay', 1, 90, 1, 7),
('2003-08-25', 'Virginia Beach', 1, 0, 76, 8),
('2012-02-02', 'Arvada', 1, 41, 38, 9),
('2000-09-09', 'Virginia Beach', 0, 46, 21, 10),
('2005-05-26', 'Colorado Springs', 1, 2, 91, 11),
('2001-10-19', 'McHenry', 0, 90, 12, 12),
('2014-12-26', 'San Antonio', 1, 31, 36, 13),
('2016-04-19', 'Plano', 0, 6, 38, 14),
('2000-04-14', 'El Monte', 0, 13, 30, 15),
('2010-09-21', 'Alexandria', 0, 94, 22, 16),
('2002-11-27', 'Pittsburgh', 0, 64, 80, 17),
('2009-08-07', 'Johnson City', 0, 49, 36, 18),
('2014-09-27', 'Spokane', 0, 39, 90, 19);

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

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `employee_id`, `customer_id`, `date`, `total_due`, `down_payment`, `finance_amount`) VALUES
(0, 78, 23, '2017-08-02', '8', '34', '91'),
(1, 59, 23, '2013-05-28', '66', '69', '62'),
(2, 95, 14, '2017-05-15', '4', '82', '18'),
(3, 46, 36, '2002-03-02', '48', '84', '91'),
(4, 67, 89, '2010-09-26', '0', '23', '80'),
(5, 26, 90, '2014-04-23', '8', '87', '40'),
(6, 83, 75, '2006-09-28', '22', '77', '42'),
(7, 55, 20, '2016-08-16', '29', '44', '65'),
(8, 42, 95, '2006-05-28', '34', '55', '74'),
(9, 9, 26, '2017-05-17', '19', '58', '71'),
(10, 16, 71, '2015-10-07', '81', '95', '100'),
(11, 62, 44, '1999-09-09', '33', '5', '60'),
(12, 57, 29, '2002-06-17', '71', '67', '23'),
(13, 74, 40, '2011-11-10', '67', '47', '40'),
(14, 28, 71, '2012-12-16', '26', '27', '100'),
(15, 97, 86, '2004-10-03', '71', '45', '96'),
(16, 54, 95, '2009-08-28', '17', '22', '15'),
(17, 65, 58, '2013-04-21', '22', '66', '95'),
(18, 69, 8, '2011-06-05', '74', '12', '84'),
(19, 30, 76, '2010-03-24', '93', '60', '15');

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

--
-- Dumping data for table `sales_comission`
--

INSERT INTO `sales_comission` (`employee_id`, `comission_amount`, `commission_id`) VALUES
(23, 731.86, 0),
(33, 1756.82, 1),
(83, 1302.17, 2),
(54, 1968.77, 3),
(88, 1929.28, 4),
(33, 1676.21, 5),
(85, 447.04, 6),
(52, 1835.25, 7),
(15, 1865.22, 8),
(15, 1501.49, 9),
(45, 1958.94, 10),
(25, 171.58, 11),
(19, 1256.95, 12),
(98, 444.03, 13),
(18, 1529.47, 14),
(5, 765.84, 15),
(58, 956.66, 16),
(58, 616.04, 17),
(92, 1260.67, 18),
(69, 1190.25, 19);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `miles` int(11) NOT NULL,
  `vehicle_condition` char(10) NOT NULL,
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

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `miles`, `vehicle_condition`, `book_price`, `sale_price`, `style`, `exterior_color`, `interior_color`, `make`, `model`, `year`) VALUES
(0, 123983, 973, 134009, 874754, 'Crossover', 'Red', 'Red', 'Lexus', 'Beetle', 1950),
(1, 265360, 423, 393927, 895923, 'Sedan', 'Blue', 'Yellow', 'Chrysler', 'Beetle', 1954),
(2, 975170, 882, 488217, 284276, 'Diesel', 'Red', 'Red', 'McLaren', 'Civic', 2004),
(3, 154399, 28, 806649, 95837, 'Sedan', 'Red', 'Yellow', 'Mazda', 'Sonic', 1954),
(4, 866015, 19, 322642, 280692, 'Sports Car', 'Orange', 'Yellow', 'Subaru', 'Beetle', 1988),
(5, 287049, 226, 293234, 355754, 'Truck', 'Yellow', 'Green', 'Maybach', 'Rio', 1961),
(6, 883726, 309, 163380, 655493, 'Sports Car', 'Orange', 'Blue', 'Chevrolet', 'Lancer', 1953),
(7, 485558, 358, 60769, 508144, 'Sedan', 'Orange', 'Purple', 'Maserati', 'Jetta', 1961),
(8, 508030, 991, 359384, 66691, 'Van', 'Green', 'Indigo', 'Lada', 'Fit', 2002),
(9, 247851, 962, 277133, 232099, 'Sports Car', 'Red', 'Red', 'Martini', 'Focus', 1969);

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
(3, 99),
(5, 68),
(9, 1),
(9, 30),
(9, 46),
(9, 79),
(15, 71),
(17, 52),
(20, 56),
(34, 47),
(41, 0),
(59, 14),
(59, 87),
(60, 22),
(61, 1),
(65, 80),
(65, 90),
(80, 7),
(82, 3),
(98, 39);

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

--
-- Dumping data for table `vehicle_problem`
--

INSERT INTO `vehicle_problem` (`problem_id`, `description`, `purchase_id`, `estimated_cost`, `actual_cost`) VALUES
(0, 'BLAH BLAH BLAH BLAH BLAH', 14, 684553, 760215),
(1, 'BLAH BLAH BLAH BLAH BLAH', 7, 79073, 144100),
(2, 'BLAH BLAH BLAH BLAH BLAH', 18, 150907, 317547),
(3, 'BLAH BLAH BLAH BLAH BLAH', 43, 381184, 862580),
(4, 'BLAH BLAH BLAH BLAH BLAH', 40, 891145, 178156),
(5, 'BLAH BLAH BLAH BLAH BLAH', 77, 509761, 809341),
(6, 'BLAH BLAH BLAH BLAH BLAH', 75, 18802, 101188),
(7, 'BLAH BLAH BLAH BLAH BLAH', 59, 795839, 983292),
(8, 'BLAH BLAH BLAH BLAH BLAH', 2, 580704, 744534),
(9, 'BLAH BLAH BLAH BLAH BLAH', 64, 757235, 72237),
(10, 'BLAH BLAH BLAH BLAH BLAH', 61, 677537, 599989),
(11, 'BLAH BLAH BLAH BLAH BLAH', 1, 932130, 16169),
(12, 'BLAH BLAH BLAH BLAH BLAH', 7, 591065, 502432),
(13, 'BLAH BLAH BLAH BLAH BLAH', 47, 356475, 420456),
(14, 'BLAH BLAH BLAH BLAH BLAH', 33, 523498, 468569),
(15, 'BLAH BLAH BLAH BLAH BLAH', 1, 573861, 927964),
(16, 'BLAH BLAH BLAH BLAH BLAH', 99, 567658, 913671),
(17, 'BLAH BLAH BLAH BLAH BLAH', 11, 911309, 284451),
(18, 'BLAH BLAH BLAH BLAH BLAH', 64, 687131, 782893),
(19, 'BLAH BLAH BLAH BLAH BLAH', 23, 694610, 481720);

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

--
-- Dumping data for table `warranty`
--

INSERT INTO `warranty` (`vehicle_id`, `employee_id`, `customer_id`, `warranty_id`, `sale_date`, `total_cost`, `monthly_cost`) VALUES
(49, 68, 40, 0, '2011-12-25', '83', '72'),
(47, 61, 30, 1, '2000-05-12', '88', '65'),
(14, 6, 96, 2, '2011-01-06', '58', '10'),
(61, 58, 77, 3, '2017-08-27', '99', '58'),
(98, 27, 12, 4, '2001-05-24', '56', '79'),
(61, 73, 57, 5, '2010-01-03', '73', '50'),
(5, 22, 88, 6, '2006-01-25', '99', '91'),
(46, 53, 47, 7, '2004-10-11', '29', '21'),
(4, 46, 41, 8, '2005-08-06', '76', '13'),
(30, 73, 85, 9, '2014-12-27', '94', '99'),
(90, 87, 55, 10, '2001-03-26', '34', '18'),
(11, 71, 21, 11, '2004-05-11', '90', '51'),
(62, 93, 94, 12, '2016-05-06', '46', '32'),
(82, 82, 23, 13, '2006-03-08', '61', '95'),
(0, 46, 84, 14, '2012-12-25', '50', '65'),
(67, 89, 69, 15, '2014-03-08', '71', '80'),
(32, 54, 0, 16, '2005-07-25', '94', '87'),
(73, 69, 53, 17, '2008-06-08', '10', '90'),
(57, 40, 8, 18, '2011-10-23', '7', '86'),
(5, 56, 69, 19, '2012-03-23', '45', '90');

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
-- Dumping data for table `warranty_item`
--

INSERT INTO `warranty_item` (`item_id`, `warranty_id`, `item_covered`, `start_date`, `length`, `cost`, `deductible`) VALUES
(0, 38, 'THING', '2005-10-14', 25, '44', '93'),
(1, 22, 'THING', '2009-10-13', 6, '37', '28'),
(2, 95, 'THING', '2005-10-08', 5, '63', '45'),
(3, 21, 'THING', '2011-01-08', 11, '38', '28'),
(4, 94, 'THING', '2009-05-06', 29, '75', '91'),
(5, 97, 'THING', '2002-08-16', 25, '20', '5'),
(6, 2, 'THING', '2008-05-05', 12, '42', '46'),
(7, 86, 'THING', '2009-03-10', 6, '20', '6'),
(8, 9, 'THING', '2013-03-19', 1, '14', '13'),
(9, 16, 'THING', '2002-12-27', 16, '57', '6'),
(10, 27, 'THING', '2001-03-12', 14, '68', '25'),
(11, 7, 'THING', '2007-08-09', 14, '82', '77'),
(12, 58, 'THING', '2006-03-26', 26, '86', '19'),
(13, 46, 'THING', '2017-03-29', 29, '83', '66'),
(14, 52, 'THING', '2013-01-09', 19, '7', '72'),
(15, 41, 'THING', '2002-06-21', 12, '7', '27'),
(16, 39, 'THING', '2014-08-23', 9, '41', '97'),
(17, 73, 'THING', '2010-03-09', 4, '34', '38'),
(18, 37, 'THING', '2005-07-16', 14, '63', '98'),
(19, 84, 'THING', '2017-12-27', 18, '75', '22');

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
