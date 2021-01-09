-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 11:46 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbconnection`
--
CREATE DATABASE IF NOT EXISTS `dbconnection` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbconnection`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `lastName` varbinary(75) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `gender` varchar(75) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `contact` varchar(75) DEFAULT NULL,
  `status` varchar(75) DEFAULT NULL,
  `favoriteSubject` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstName`, `lastName`, `address`, `gender`, `birthday`, `contact`, `status`, `favoriteSubject`) VALUES
(1, 'judyann', 0x6361646176657a, 'carmen', 'female', '1999-06-04', '09973553044', 'single', 'math'),
(2, 'judyann', 0x6361646176657a, 'carmen', 'female', '1999-08-12', '09973553044', 'single', 'java'),
(3, 'judyann', 0x6361646176657a, 'carmen', 'female', '1999-08-12', '09973553044', 'single', 'java');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `dishiseat`
--
CREATE DATABASE IF NOT EXISTS `dishiseat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dishiseat`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `fcm_token` varchar(200) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `Mobile`, `Password`, `fcm_token`, `status`) VALUES
(1, 'judyann', 'darlingjud@gmail.com', '09973553044', '5f1d86b41846152d91f921591324d2dd', 'test_fcm_token', 1),
(2, 'aj', 'jj@yahoo.com', '08796541235', 'e10adc3949ba59abbe56e057f20f883e', 'test_fcm_token', 1),
(3, 'Judy Ann Cadavez', 'abc@gmail.com', '09973553044', 'c6a1ca47b645f4c4b786ce951f8d26a7', 'test_fcm_token', 1),
(4, 'judyann', 'aj123@gmail.com', '84564649494949', '755f85c2723bb39381c7379a604160d8', 'test_fcm_token', 1);
--
-- Database: `egradebook`
--
CREATE DATABASE IF NOT EXISTS `egradebook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `egradebook`;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `collegeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`collegeid`, `name`) VALUES
(5, 'TCM'),
(6, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`) VALUES
(2, 'ASDASD'),
(3, 'asdasdasd'),
(4, 'dffddf'),
(5, 'awawaw'),
(6, 'gg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`collegeid`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `collegeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `learningsql`
--
CREATE DATABASE IF NOT EXISTS `learningsql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `learningsql`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `AVAIL_BALANCE` float DEFAULT NULL,
  `CLOSE_DATE` date DEFAULT NULL,
  `LAST_ACTIVITY_DATE` date DEFAULT NULL,
  `OPEN_DATE` date NOT NULL,
  `PENDING_BALANCE` float DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `OPEN_BRANCH_ID` int(11) NOT NULL,
  `OPEN_EMP_ID` int(11) NOT NULL,
  `PRODUCT_CD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `AVAIL_BALANCE`, `CLOSE_DATE`, `LAST_ACTIVITY_DATE`, `OPEN_DATE`, `PENDING_BALANCE`, `STATUS`, `CUST_ID`, `OPEN_BRANCH_ID`, `OPEN_EMP_ID`, `PRODUCT_CD`) VALUES
(1, 1057.75, NULL, '2005-01-04', '2000-01-15', 1057.75, 'ACTIVE', 1, 2, 10, 'CHK'),
(2, 500, NULL, '2004-12-19', '2000-01-15', 500, 'ACTIVE', 1, 2, 10, 'SAV'),
(3, 3000, NULL, '2004-06-30', '2004-06-30', 3000, 'ACTIVE', 1, 2, 10, 'CD'),
(4, 2258.02, NULL, '2004-12-27', '2001-03-12', 2258.02, 'ACTIVE', 2, 2, 10, 'CHK'),
(5, 200, NULL, '2004-12-11', '2001-03-12', 200, 'ACTIVE', 2, 2, 10, 'SAV'),
(7, 1057.75, NULL, '2004-11-30', '2002-11-23', 1057.75, 'ACTIVE', 3, 3, 13, 'CHK'),
(8, 2212.5, NULL, '2004-12-05', '2002-12-15', 2212.5, 'ACTIVE', 3, 3, 13, 'MM'),
(10, 534.12, NULL, '2005-01-03', '2003-09-12', 534.12, 'ACTIVE', 4, 1, 1, 'CHK'),
(11, 767.77, NULL, '2004-10-24', '2000-01-15', 767.77, 'ACTIVE', 4, 1, 1, 'SAV'),
(12, 5487.09, NULL, '2004-11-11', '2004-09-30', 5487.09, 'ACTIVE', 4, 1, 1, 'MM'),
(13, 2237.97, NULL, '2005-01-05', '2004-01-27', 2897.97, 'ACTIVE', 5, 4, 16, 'CHK'),
(14, 122.37, NULL, '2004-11-29', '2002-08-24', 122.37, 'ACTIVE', 6, 1, 1, 'CHK'),
(15, 10000, NULL, '2004-12-28', '2004-12-28', 10000, 'ACTIVE', 6, 1, 1, 'CD'),
(17, 5000, NULL, '2004-01-12', '2004-01-12', 5000, 'ACTIVE', 7, 2, 10, 'CD'),
(18, 3487.19, NULL, '2005-01-03', '2001-05-23', 3487.19, 'ACTIVE', 8, 4, 16, 'CHK'),
(19, 387.99, NULL, '2004-10-12', '2001-05-23', 387.99, 'ACTIVE', 8, 4, 16, 'SAV'),
(21, 125.67, NULL, '2004-12-15', '2003-07-30', 125.67, 'ACTIVE', 9, 1, 1, 'CHK'),
(22, 9345.55, NULL, '2004-10-28', '2004-10-28', 9845.55, 'ACTIVE', 9, 1, 1, 'MM'),
(23, 1500, NULL, '2004-06-30', '2004-06-30', 1500, 'ACTIVE', 9, 1, 1, 'CD'),
(24, 23575.1, NULL, '2004-12-15', '2002-09-30', 23575.1, 'ACTIVE', 10, 4, 16, 'CHK'),
(25, 0, NULL, '2004-08-28', '2002-10-01', 0, 'ACTIVE', 10, 4, 16, 'BUS'),
(27, 9345.55, NULL, '2004-11-14', '2004-03-22', 9345.55, 'ACTIVE', 11, 2, 10, 'BUS'),
(28, 38552.1, NULL, '2004-12-15', '2003-07-30', 38552.1, 'ACTIVE', 12, 4, 16, 'CHK'),
(29, 50000, NULL, '2004-12-17', '2004-02-22', 50000, 'ACTIVE', 13, 3, 13, 'SBL');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `TXN_ID` bigint(20) NOT NULL,
  `AMOUNT` float NOT NULL,
  `FUNDS_AVAIL_DATE` datetime NOT NULL,
  `TXN_DATE` datetime NOT NULL,
  `TXN_TYPE_CD` varchar(10) DEFAULT NULL,
  `ACCOUNT_ID` int(11) DEFAULT NULL,
  `EXECUTION_BRANCH_ID` int(11) DEFAULT NULL,
  `TELLER_EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`TXN_ID`, `AMOUNT`, `FUNDS_AVAIL_DATE`, `TXN_DATE`, `TXN_TYPE_CD`, `ACCOUNT_ID`, `EXECUTION_BRANCH_ID`, `TELLER_EMP_ID`) VALUES
(1, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 1, NULL, NULL),
(2, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 2, NULL, NULL),
(3, 100, '2004-06-30 00:00:00', '2004-06-30 00:00:00', 'CDT', 3, NULL, NULL),
(4, 100, '2001-03-12 00:00:00', '2001-03-12 00:00:00', 'CDT', 4, NULL, NULL),
(5, 100, '2001-03-12 00:00:00', '2001-03-12 00:00:00', 'CDT', 5, NULL, NULL),
(6, 100, '2002-11-23 00:00:00', '2002-11-23 00:00:00', 'CDT', 7, NULL, NULL),
(7, 100, '2002-12-15 00:00:00', '2002-12-15 00:00:00', 'CDT', 8, NULL, NULL),
(8, 100, '2003-09-12 00:00:00', '2003-09-12 00:00:00', 'CDT', 10, NULL, NULL),
(9, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 11, NULL, NULL),
(10, 100, '2004-09-30 00:00:00', '2004-09-30 00:00:00', 'CDT', 12, NULL, NULL),
(11, 100, '2004-01-27 00:00:00', '2004-01-27 00:00:00', 'CDT', 13, NULL, NULL),
(12, 100, '2002-08-24 00:00:00', '2002-08-24 00:00:00', 'CDT', 14, NULL, NULL),
(13, 100, '2004-12-28 00:00:00', '2004-12-28 00:00:00', 'CDT', 15, NULL, NULL),
(14, 100, '2004-01-12 00:00:00', '2004-01-12 00:00:00', 'CDT', 17, NULL, NULL),
(15, 100, '2001-05-23 00:00:00', '2001-05-23 00:00:00', 'CDT', 18, NULL, NULL),
(16, 100, '2001-05-23 00:00:00', '2001-05-23 00:00:00', 'CDT', 19, NULL, NULL),
(17, 100, '2003-07-30 00:00:00', '2003-07-30 00:00:00', 'CDT', 21, NULL, NULL),
(18, 100, '2004-10-28 00:00:00', '2004-10-28 00:00:00', 'CDT', 22, NULL, NULL),
(19, 100, '2004-06-30 00:00:00', '2004-06-30 00:00:00', 'CDT', 23, NULL, NULL),
(20, 100, '2002-09-30 00:00:00', '2002-09-30 00:00:00', 'CDT', 24, NULL, NULL),
(21, 100, '2003-07-30 00:00:00', '2003-07-30 00:00:00', 'CDT', 28, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_ID` int(11) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) NOT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `ZIP_CODE` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_ID`, `ADDRESS`, `CITY`, `NAME`, `STATE`, `ZIP_CODE`) VALUES
(1, '3882 Main St.', 'Waltham', 'Headquarters', 'MA', '02451'),
(2, '422 Maple St.', 'Woburn', 'Woburn Branch', 'MA', '01801'),
(3, '125 Presidential Way', 'Quincy', 'Quincy Branch', 'MA', '02169'),
(4, '378 Maynard Ln.', 'Salem', 'So. NH Branch', 'NH', '03079');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `INCORP_DATE` date DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STATE_ID` varchar(10) NOT NULL,
  `CUST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`INCORP_DATE`, `NAME`, `STATE_ID`, `CUST_ID`) VALUES
('1995-05-01', 'Chilton Engineering', '12-345-678', 10),
('2001-01-01', 'Northeast Cooling Inc.', '23-456-789', 11),
('2002-06-30', 'Superior Auto Body', '34-567-890', 12),
('1999-05-01', 'AAA Insurance Inc.', '45-678-901', 13);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `CUST_TYPE_CD` varchar(1) NOT NULL,
  `FED_ID` varchar(12) NOT NULL,
  `POSTAL_CODE` varchar(10) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `ADDRESS`, `CITY`, `CUST_TYPE_CD`, `FED_ID`, `POSTAL_CODE`, `STATE`) VALUES
(1, '47 Mockingbird Ln', 'Lynnfield', 'I', '111-11-1111', '01940', 'MA'),
(2, '372 Clearwater Blvd', 'Woburn', 'I', '222-22-2222', '01801', 'MA'),
(3, '18 Jessup Rd', 'Quincy', 'I', '333-33-3333', '02169', 'MA'),
(4, '12 Buchanan Ln', 'Waltham', 'I', '444-44-4444', '02451', 'MA'),
(5, '2341 Main St', 'Salem', 'I', '555-55-5555', '03079', 'NH'),
(6, '12 Blaylock Ln', 'Waltham', 'I', '666-66-6666', '02451', 'MA'),
(7, '29 Admiral Ln', 'Wilmington', 'I', '777-77-7777', '01887', 'MA'),
(8, '472 Freedom Rd', 'Salem', 'I', '888-88-8888', '03079', 'NH'),
(9, '29 Maple St', 'Newton', 'I', '999-99-9999', '02458', 'MA'),
(10, '7 Industrial Way', 'Salem', 'B', '04-1111111', '03079', 'NH'),
(11, '287A Corporate Ave', 'Wilmington', 'B', '04-2222222', '01887', 'MA'),
(12, '789 Main St', 'Salem', 'B', '04-3333333', '03079', 'NH'),
(13, '4772 Presidential Way', 'Quincy', 'B', '04-4444444', '02169', 'MA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `NAME`) VALUES
(1, 'Operations'),
(2, 'Loans'),
(3, 'Administration'),
(4, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` int(11) NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `ASSIGNED_BRANCH_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `SUPERIOR_EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `END_DATE`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `ASSIGNED_BRANCH_ID`, `DEPT_ID`, `SUPERIOR_EMP_ID`) VALUES
(1, NULL, 'Michael', 'Smith', '2001-06-22', 'President', 1, 3, NULL),
(2, NULL, 'Susan', 'Barker', '2002-09-12', 'Vice President', 1, 3, 1),
(3, NULL, 'Robert', 'Tyler', '2000-02-09', 'Treasurer', 1, 3, 1),
(4, NULL, 'Susan', 'Hawthorne', '2002-04-24', 'Operations Manager', 1, 1, 3),
(5, NULL, 'John', 'Gooding', '2003-11-14', 'Loan Manager', 1, 2, 4),
(6, NULL, 'Helen', 'Fleming', '2004-03-17', 'Head Teller', 1, 1, 4),
(7, NULL, 'Chris', 'Tucker', '2004-09-15', 'Teller', 1, 1, 6),
(8, NULL, 'Sarah', 'Parker', '2002-12-02', 'Teller', 1, 1, 6),
(9, NULL, 'Jane', 'Grossman', '2002-05-03', 'Teller', 1, 1, 6),
(10, NULL, 'Paula', 'Roberts', '2002-07-27', 'Head Teller', 2, 1, 4),
(11, NULL, 'Thomas', 'Ziegler', '2000-10-23', 'Teller', 2, 1, 10),
(12, NULL, 'Samantha', 'Jameson', '2003-01-08', 'Teller', 2, 1, 10),
(13, NULL, 'John', 'Blake', '2000-05-11', 'Head Teller', 3, 1, 4),
(14, NULL, 'Cindy', 'Mason', '2002-08-09', 'Teller', 3, 1, 13),
(15, NULL, 'Frank', 'Portman', '2003-04-01', 'Teller', 3, 1, 13),
(16, NULL, 'Theresa', 'Markham', '2001-03-15', 'Head Teller', 4, 1, 4),
(17, NULL, 'Beth', 'Fowler', '2002-06-29', 'Teller', 4, 1, 16),
(18, NULL, 'Rick', 'Tulman', '2002-12-12', 'Teller', 4, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE `individual` (
  `BIRTH_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `CUST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`BIRTH_DATE`, `FIRST_NAME`, `LAST_NAME`, `CUST_ID`) VALUES
('1972-04-22', 'James', 'Hadley', 1),
('1968-08-15', 'Susan', 'Tingley', 2),
('1958-02-06', 'Frank', 'Tucker', 3),
('1966-12-22', 'John', 'Hayward', 4),
('1971-08-25', 'Charles', 'Frasier', 5),
('1962-09-14', 'John', 'Spencer', 6),
('1947-03-19', 'Margaret', 'Young', 7),
('1977-07-01', 'Louis', 'Blake', 8),
('1968-06-16', 'Richard', 'Farley', 9);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `OFFICER_ID` int(11) NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`OFFICER_ID`, `END_DATE`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `CUST_ID`) VALUES
(1, NULL, 'John', 'Chilton', '1995-05-01', 'President', 10),
(2, NULL, 'Paul', 'Hardy', '2001-01-01', 'President', 11),
(3, NULL, 'Carl', 'Lutz', '2002-06-30', 'President', 12),
(4, NULL, 'Stanley', 'Cheswick', '1999-05-01', 'President', 13);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_CD` varchar(10) NOT NULL,
  `DATE_OFFERED` date DEFAULT NULL,
  `DATE_RETIRED` date DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRODUCT_TYPE_CD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_CD`, `DATE_OFFERED`, `DATE_RETIRED`, `NAME`, `PRODUCT_TYPE_CD`) VALUES
('AUT', '2000-01-01', NULL, 'auto loan', 'LOAN'),
('BUS', '2000-01-01', NULL, 'business line of credit', 'LOAN'),
('CD', '2000-01-01', NULL, 'certificate of deposit', 'ACCOUNT'),
('CHK', '2000-01-01', NULL, 'checking account', 'ACCOUNT'),
('MM', '2000-01-01', NULL, 'money market account', 'ACCOUNT'),
('MRT', '2000-01-01', NULL, 'home mortgage', 'LOAN'),
('SAV', '2000-01-01', NULL, 'savings account', 'ACCOUNT'),
('SBL', '2000-01-01', NULL, 'small business loan', 'LOAN');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `PRODUCT_TYPE_CD` varchar(255) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`PRODUCT_TYPE_CD`, `NAME`) VALUES
('ACCOUNT', 'Customer Accounts'),
('INSURANCE', 'Insurance Offerings'),
('LOAN', 'Individual and Business Loans');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD KEY `ACCOUNT_CUSTOMER_FK` (`CUST_ID`),
  ADD KEY `ACCOUNT_BRANCH_FK` (`OPEN_BRANCH_ID`),
  ADD KEY `ACCOUNT_EMPLOYEE_FK` (`OPEN_EMP_ID`),
  ADD KEY `ACCOUNT_PRODUCT_FK` (`PRODUCT_CD`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD PRIMARY KEY (`TXN_ID`),
  ADD KEY `ACC_TRANSACTION_ACCOUNT_FK` (`ACCOUNT_ID`),
  ADD KEY `ACC_TRANSACTION_BRANCH_FK` (`EXECUTION_BRANCH_ID`),
  ADD KEY `ACC_TRANSACTION_EMPLOYEE_FK` (`TELLER_EMP_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_ID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `EMPLOYEE_BRANCH_FK` (`ASSIGNED_BRANCH_ID`),
  ADD KEY `EMPLOYEE_DEPARTMENT_FK` (`DEPT_ID`),
  ADD KEY `EMPLOYEE_EMPLOYEE_FK` (`SUPERIOR_EMP_ID`);

--
-- Indexes for table `individual`
--
ALTER TABLE `individual`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`OFFICER_ID`),
  ADD KEY `OFFICER_CUSTOMER_FK` (`CUST_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_CD`),
  ADD KEY `PRODUCT_PRODUCT_TYPE_FK` (`PRODUCT_TYPE_CD`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`PRODUCT_TYPE_CD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `TXN_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BRANCH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `OFFICER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `ACCOUNT_BRANCH_FK` FOREIGN KEY (`OPEN_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `ACCOUNT_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `ACCOUNT_EMPLOYEE_FK` FOREIGN KEY (`OPEN_EMP_ID`) REFERENCES `employee` (`EMP_ID`),
  ADD CONSTRAINT `ACCOUNT_PRODUCT_FK` FOREIGN KEY (`PRODUCT_CD`) REFERENCES `product` (`PRODUCT_CD`);

--
-- Constraints for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD CONSTRAINT `ACC_TRANSACTION_ACCOUNT_FK` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`),
  ADD CONSTRAINT `ACC_TRANSACTION_BRANCH_FK` FOREIGN KEY (`EXECUTION_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `ACC_TRANSACTION_EMPLOYEE_FK` FOREIGN KEY (`TELLER_EMP_ID`) REFERENCES `employee` (`EMP_ID`);

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `BUSINESS_EMPLOYEE_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `EMPLOYEE_BRANCH_FK` FOREIGN KEY (`ASSIGNED_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `EMPLOYEE_DEPARTMENT_FK` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`),
  ADD CONSTRAINT `EMPLOYEE_EMPLOYEE_FK` FOREIGN KEY (`SUPERIOR_EMP_ID`) REFERENCES `employee` (`EMP_ID`);

--
-- Constraints for table `individual`
--
ALTER TABLE `individual`
  ADD CONSTRAINT `INDIVIDUAL_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `OFFICER_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_PRODUCT_TYPE_FK` FOREIGN KEY (`PRODUCT_TYPE_CD`) REFERENCES `product_type` (`PRODUCT_TYPE_CD`);
--
-- Database: `learningsql-mysql-script`
--
CREATE DATABASE IF NOT EXISTS `learningsql-mysql-script` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `learningsql-mysql-script`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `AVAIL_BALANCE` float DEFAULT NULL,
  `CLOSE_DATE` date DEFAULT NULL,
  `LAST_ACTIVITY_DATE` date DEFAULT NULL,
  `OPEN_DATE` date NOT NULL,
  `PENDING_BALANCE` float DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `OPEN_BRANCH_ID` int(11) NOT NULL,
  `OPEN_EMP_ID` int(11) NOT NULL,
  `PRODUCT_CD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `AVAIL_BALANCE`, `CLOSE_DATE`, `LAST_ACTIVITY_DATE`, `OPEN_DATE`, `PENDING_BALANCE`, `STATUS`, `CUST_ID`, `OPEN_BRANCH_ID`, `OPEN_EMP_ID`, `PRODUCT_CD`) VALUES
(1, 1057.75, NULL, '2005-01-04', '2000-01-15', 1057.75, 'ACTIVE', 1, 2, 10, 'CHK'),
(2, 500, NULL, '2004-12-19', '2000-01-15', 500, 'ACTIVE', 1, 2, 10, 'SAV'),
(3, 3000, NULL, '2004-06-30', '2004-06-30', 3000, 'ACTIVE', 1, 2, 10, 'CD'),
(4, 2258.02, NULL, '2004-12-27', '2001-03-12', 2258.02, 'ACTIVE', 2, 2, 10, 'CHK'),
(5, 200, NULL, '2004-12-11', '2001-03-12', 200, 'ACTIVE', 2, 2, 10, 'SAV'),
(7, 1057.75, NULL, '2004-11-30', '2002-11-23', 1057.75, 'ACTIVE', 3, 3, 13, 'CHK'),
(8, 2212.5, NULL, '2004-12-05', '2002-12-15', 2212.5, 'ACTIVE', 3, 3, 13, 'MM'),
(10, 534.12, NULL, '2005-01-03', '2003-09-12', 534.12, 'ACTIVE', 4, 1, 1, 'CHK'),
(11, 767.77, NULL, '2004-10-24', '2000-01-15', 767.77, 'ACTIVE', 4, 1, 1, 'SAV'),
(12, 5487.09, NULL, '2004-11-11', '2004-09-30', 5487.09, 'ACTIVE', 4, 1, 1, 'MM'),
(13, 2237.97, NULL, '2005-01-05', '2004-01-27', 2897.97, 'ACTIVE', 5, 4, 16, 'CHK'),
(14, 122.37, NULL, '2004-11-29', '2002-08-24', 122.37, 'ACTIVE', 6, 1, 1, 'CHK'),
(15, 10000, NULL, '2004-12-28', '2004-12-28', 10000, 'ACTIVE', 6, 1, 1, 'CD'),
(17, 5000, NULL, '2004-01-12', '2004-01-12', 5000, 'ACTIVE', 7, 2, 10, 'CD'),
(18, 3487.19, NULL, '2005-01-03', '2001-05-23', 3487.19, 'ACTIVE', 8, 4, 16, 'CHK'),
(19, 387.99, NULL, '2004-10-12', '2001-05-23', 387.99, 'ACTIVE', 8, 4, 16, 'SAV'),
(21, 125.67, NULL, '2004-12-15', '2003-07-30', 125.67, 'ACTIVE', 9, 1, 1, 'CHK'),
(22, 9345.55, NULL, '2004-10-28', '2004-10-28', 9845.55, 'ACTIVE', 9, 1, 1, 'MM'),
(23, 1500, NULL, '2004-06-30', '2004-06-30', 1500, 'ACTIVE', 9, 1, 1, 'CD'),
(24, 23575.1, NULL, '2004-12-15', '2002-09-30', 23575.1, 'ACTIVE', 10, 4, 16, 'CHK'),
(25, 0, NULL, '2004-08-28', '2002-10-01', 0, 'ACTIVE', 10, 4, 16, 'BUS'),
(27, 9345.55, NULL, '2004-11-14', '2004-03-22', 9345.55, 'ACTIVE', 11, 2, 10, 'BUS'),
(28, 38552.1, NULL, '2004-12-15', '2003-07-30', 38552.1, 'ACTIVE', 12, 4, 16, 'CHK'),
(29, 50000, NULL, '2004-12-17', '2004-02-22', 50000, 'ACTIVE', 13, 3, 13, 'SBL');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `TXN_ID` bigint(20) NOT NULL,
  `AMOUNT` float NOT NULL,
  `FUNDS_AVAIL_DATE` datetime NOT NULL,
  `TXN_DATE` datetime NOT NULL,
  `TXN_TYPE_CD` varchar(10) DEFAULT NULL,
  `ACCOUNT_ID` int(11) DEFAULT NULL,
  `EXECUTION_BRANCH_ID` int(11) DEFAULT NULL,
  `TELLER_EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`TXN_ID`, `AMOUNT`, `FUNDS_AVAIL_DATE`, `TXN_DATE`, `TXN_TYPE_CD`, `ACCOUNT_ID`, `EXECUTION_BRANCH_ID`, `TELLER_EMP_ID`) VALUES
(1, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 1, NULL, NULL),
(2, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 2, NULL, NULL),
(3, 100, '2004-06-30 00:00:00', '2004-06-30 00:00:00', 'CDT', 3, NULL, NULL),
(4, 100, '2001-03-12 00:00:00', '2001-03-12 00:00:00', 'CDT', 4, NULL, NULL),
(5, 100, '2001-03-12 00:00:00', '2001-03-12 00:00:00', 'CDT', 5, NULL, NULL),
(6, 100, '2002-11-23 00:00:00', '2002-11-23 00:00:00', 'CDT', 7, NULL, NULL),
(7, 100, '2002-12-15 00:00:00', '2002-12-15 00:00:00', 'CDT', 8, NULL, NULL),
(8, 100, '2003-09-12 00:00:00', '2003-09-12 00:00:00', 'CDT', 10, NULL, NULL),
(9, 100, '2000-01-15 00:00:00', '2000-01-15 00:00:00', 'CDT', 11, NULL, NULL),
(10, 100, '2004-09-30 00:00:00', '2004-09-30 00:00:00', 'CDT', 12, NULL, NULL),
(11, 100, '2004-01-27 00:00:00', '2004-01-27 00:00:00', 'CDT', 13, NULL, NULL),
(12, 100, '2002-08-24 00:00:00', '2002-08-24 00:00:00', 'CDT', 14, NULL, NULL),
(13, 100, '2004-12-28 00:00:00', '2004-12-28 00:00:00', 'CDT', 15, NULL, NULL),
(14, 100, '2004-01-12 00:00:00', '2004-01-12 00:00:00', 'CDT', 17, NULL, NULL),
(15, 100, '2001-05-23 00:00:00', '2001-05-23 00:00:00', 'CDT', 18, NULL, NULL),
(16, 100, '2001-05-23 00:00:00', '2001-05-23 00:00:00', 'CDT', 19, NULL, NULL),
(17, 100, '2003-07-30 00:00:00', '2003-07-30 00:00:00', 'CDT', 21, NULL, NULL),
(18, 100, '2004-10-28 00:00:00', '2004-10-28 00:00:00', 'CDT', 22, NULL, NULL),
(19, 100, '2004-06-30 00:00:00', '2004-06-30 00:00:00', 'CDT', 23, NULL, NULL),
(20, 100, '2002-09-30 00:00:00', '2002-09-30 00:00:00', 'CDT', 24, NULL, NULL),
(21, 100, '2003-07-30 00:00:00', '2003-07-30 00:00:00', 'CDT', 28, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_ID` int(11) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) NOT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `ZIP_CODE` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_ID`, `ADDRESS`, `CITY`, `NAME`, `STATE`, `ZIP_CODE`) VALUES
(1, '3882 Main St.', 'Waltham', 'Headquarters', 'MA', '02451'),
(2, '422 Maple St.', 'Woburn', 'Woburn Branch', 'MA', '01801'),
(3, '125 Presidential Way', 'Quincy', 'Quincy Branch', 'MA', '02169'),
(4, '378 Maynard Ln.', 'Salem', 'So. NH Branch', 'NH', '03079');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `INCORP_DATE` date DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STATE_ID` varchar(10) NOT NULL,
  `CUST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`INCORP_DATE`, `NAME`, `STATE_ID`, `CUST_ID`) VALUES
('1995-05-01', 'Chilton Engineering', '12-345-678', 10),
('2001-01-01', 'Northeast Cooling Inc.', '23-456-789', 11),
('2002-06-30', 'Superior Auto Body', '34-567-890', 12),
('1999-05-01', 'AAA Insurance Inc.', '45-678-901', 13);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `CUST_TYPE_CD` varchar(1) NOT NULL,
  `FED_ID` varchar(12) NOT NULL,
  `POSTAL_CODE` varchar(10) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `ADDRESS`, `CITY`, `CUST_TYPE_CD`, `FED_ID`, `POSTAL_CODE`, `STATE`) VALUES
(1, '47 Mockingbird Ln', 'Lynnfield', 'I', '111-11-1111', '01940', 'MA'),
(2, '372 Clearwater Blvd', 'Woburn', 'I', '222-22-2222', '01801', 'MA'),
(3, '18 Jessup Rd', 'Quincy', 'I', '333-33-3333', '02169', 'MA'),
(4, '12 Buchanan Ln', 'Waltham', 'I', '444-44-4444', '02451', 'MA'),
(5, '2341 Main St', 'Salem', 'I', '555-55-5555', '03079', 'NH'),
(6, '12 Blaylock Ln', 'Waltham', 'I', '666-66-6666', '02451', 'MA'),
(7, '29 Admiral Ln', 'Wilmington', 'I', '777-77-7777', '01887', 'MA'),
(8, '472 Freedom Rd', 'Salem', 'I', '888-88-8888', '03079', 'NH'),
(9, '29 Maple St', 'Newton', 'I', '999-99-9999', '02458', 'MA'),
(10, '7 Industrial Way', 'Salem', 'B', '04-1111111', '03079', 'NH'),
(11, '287A Corporate Ave', 'Wilmington', 'B', '04-2222222', '01887', 'MA'),
(12, '789 Main St', 'Salem', 'B', '04-3333333', '03079', 'NH'),
(13, '4772 Presidential Way', 'Quincy', 'B', '04-4444444', '02169', 'MA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `NAME`) VALUES
(1, 'Operations'),
(2, 'Loans'),
(3, 'Administration'),
(4, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` int(11) NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `ASSIGNED_BRANCH_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `SUPERIOR_EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `END_DATE`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `ASSIGNED_BRANCH_ID`, `DEPT_ID`, `SUPERIOR_EMP_ID`) VALUES
(1, NULL, 'Michael', 'Smith', '2001-06-22', 'President', 1, 3, NULL),
(2, NULL, 'Susan', 'Barker', '2002-09-12', 'Vice President', 1, 3, 1),
(3, NULL, 'Robert', 'Tyler', '2000-02-09', 'Treasurer', 1, 3, 1),
(4, NULL, 'Susan', 'Hawthorne', '2002-04-24', 'Operations Manager', 1, 1, 3),
(5, NULL, 'John', 'Gooding', '2003-11-14', 'Loan Manager', 1, 2, 4),
(6, NULL, 'Helen', 'Fleming', '2004-03-17', 'Head Teller', 1, 1, 4),
(7, NULL, 'Chris', 'Tucker', '2004-09-15', 'Teller', 1, 1, 6),
(8, NULL, 'Sarah', 'Parker', '2002-12-02', 'Teller', 1, 1, 6),
(9, NULL, 'Jane', 'Grossman', '2002-05-03', 'Teller', 1, 1, 6),
(10, NULL, 'Paula', 'Roberts', '2002-07-27', 'Head Teller', 2, 1, 4),
(11, NULL, 'Thomas', 'Ziegler', '2000-10-23', 'Teller', 2, 1, 10),
(12, NULL, 'Samantha', 'Jameson', '2003-01-08', 'Teller', 2, 1, 10),
(13, NULL, 'John', 'Blake', '2000-05-11', 'Head Teller', 3, 1, 4),
(14, NULL, 'Cindy', 'Mason', '2002-08-09', 'Teller', 3, 1, 13),
(15, NULL, 'Frank', 'Portman', '2003-04-01', 'Teller', 3, 1, 13),
(16, NULL, 'Theresa', 'Markham', '2001-03-15', 'Head Teller', 4, 1, 4),
(17, NULL, 'Beth', 'Fowler', '2002-06-29', 'Teller', 4, 1, 16),
(18, NULL, 'Rick', 'Tulman', '2002-12-12', 'Teller', 4, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE `individual` (
  `BIRTH_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `CUST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`BIRTH_DATE`, `FIRST_NAME`, `LAST_NAME`, `CUST_ID`) VALUES
('1972-04-22', 'James', 'Hadley', 1),
('1968-08-15', 'Susan', 'Tingley', 2),
('1958-02-06', 'Frank', 'Tucker', 3),
('1966-12-22', 'John', 'Hayward', 4),
('1971-08-25', 'Charles', 'Frasier', 5),
('1962-09-14', 'John', 'Spencer', 6),
('1947-03-19', 'Margaret', 'Young', 7),
('1977-07-01', 'Louis', 'Blake', 8),
('1968-06-16', 'Richard', 'Farley', 9);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `OFFICER_ID` int(11) NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`OFFICER_ID`, `END_DATE`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `CUST_ID`) VALUES
(1, NULL, 'John', 'Chilton', '1995-05-01', 'President', 10),
(2, NULL, 'Paul', 'Hardy', '2001-01-01', 'President', 11),
(3, NULL, 'Carl', 'Lutz', '2002-06-30', 'President', 12),
(4, NULL, 'Stanley', 'Cheswick', '1999-05-01', 'President', 13);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_CD` varchar(10) NOT NULL,
  `DATE_OFFERED` date DEFAULT NULL,
  `DATE_RETIRED` date DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRODUCT_TYPE_CD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_CD`, `DATE_OFFERED`, `DATE_RETIRED`, `NAME`, `PRODUCT_TYPE_CD`) VALUES
('AUT', '2000-01-01', NULL, 'auto loan', 'LOAN'),
('BUS', '2000-01-01', NULL, 'business line of credit', 'LOAN'),
('CD', '2000-01-01', NULL, 'certificate of deposit', 'ACCOUNT'),
('CHK', '2000-01-01', NULL, 'checking account', 'ACCOUNT'),
('MM', '2000-01-01', NULL, 'money market account', 'ACCOUNT'),
('MRT', '2000-01-01', NULL, 'home mortgage', 'LOAN'),
('SAV', '2000-01-01', NULL, 'savings account', 'ACCOUNT'),
('SBL', '2000-01-01', NULL, 'small business loan', 'LOAN');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `PRODUCT_TYPE_CD` varchar(255) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`PRODUCT_TYPE_CD`, `NAME`) VALUES
('ACCOUNT', 'Customer Accounts'),
('INSURANCE', 'Insurance Offerings'),
('LOAN', 'Individual and Business Loans');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD KEY `ACCOUNT_CUSTOMER_FK` (`CUST_ID`),
  ADD KEY `ACCOUNT_BRANCH_FK` (`OPEN_BRANCH_ID`),
  ADD KEY `ACCOUNT_EMPLOYEE_FK` (`OPEN_EMP_ID`),
  ADD KEY `ACCOUNT_PRODUCT_FK` (`PRODUCT_CD`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD PRIMARY KEY (`TXN_ID`),
  ADD KEY `ACC_TRANSACTION_ACCOUNT_FK` (`ACCOUNT_ID`),
  ADD KEY `ACC_TRANSACTION_BRANCH_FK` (`EXECUTION_BRANCH_ID`),
  ADD KEY `ACC_TRANSACTION_EMPLOYEE_FK` (`TELLER_EMP_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_ID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `EMPLOYEE_BRANCH_FK` (`ASSIGNED_BRANCH_ID`),
  ADD KEY `EMPLOYEE_DEPARTMENT_FK` (`DEPT_ID`),
  ADD KEY `EMPLOYEE_EMPLOYEE_FK` (`SUPERIOR_EMP_ID`);

--
-- Indexes for table `individual`
--
ALTER TABLE `individual`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`OFFICER_ID`),
  ADD KEY `OFFICER_CUSTOMER_FK` (`CUST_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_CD`),
  ADD KEY `PRODUCT_PRODUCT_TYPE_FK` (`PRODUCT_TYPE_CD`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`PRODUCT_TYPE_CD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `TXN_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BRANCH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `OFFICER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `ACCOUNT_BRANCH_FK` FOREIGN KEY (`OPEN_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `ACCOUNT_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `ACCOUNT_EMPLOYEE_FK` FOREIGN KEY (`OPEN_EMP_ID`) REFERENCES `employee` (`EMP_ID`),
  ADD CONSTRAINT `ACCOUNT_PRODUCT_FK` FOREIGN KEY (`PRODUCT_CD`) REFERENCES `product` (`PRODUCT_CD`);

--
-- Constraints for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD CONSTRAINT `ACC_TRANSACTION_ACCOUNT_FK` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`),
  ADD CONSTRAINT `ACC_TRANSACTION_BRANCH_FK` FOREIGN KEY (`EXECUTION_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `ACC_TRANSACTION_EMPLOYEE_FK` FOREIGN KEY (`TELLER_EMP_ID`) REFERENCES `employee` (`EMP_ID`);

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `BUSINESS_EMPLOYEE_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `EMPLOYEE_BRANCH_FK` FOREIGN KEY (`ASSIGNED_BRANCH_ID`) REFERENCES `branch` (`BRANCH_ID`),
  ADD CONSTRAINT `EMPLOYEE_DEPARTMENT_FK` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`),
  ADD CONSTRAINT `EMPLOYEE_EMPLOYEE_FK` FOREIGN KEY (`SUPERIOR_EMP_ID`) REFERENCES `employee` (`EMP_ID`);

--
-- Constraints for table `individual`
--
ALTER TABLE `individual`
  ADD CONSTRAINT `INDIVIDUAL_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `OFFICER_CUSTOMER_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_PRODUCT_TYPE_FK` FOREIGN KEY (`PRODUCT_TYPE_CD`) REFERENCES `product_type` (`PRODUCT_TYPE_CD`);
--
-- Database: `mydatabase`
--
CREATE DATABASE IF NOT EXISTS `mydatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `uid` int(10) NOT NULL,
  `name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`uid`, `name`) VALUES
(1, 'todo');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(10) NOT NULL,
  `name` varchar(75) NOT NULL,
  `mobile` varchar(75) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `name`, `mobile`, `email`, `password`) VALUES
(1, 'judy', '097739302', 'ann', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'student_tracker', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"student\",\"users\"],\"table_structure[]\":[\"student\",\"users\"],\"table_data[]\":[\"student\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"dishiseat\",\"table\":\"user\"},{\"db\":\"mydatabase\",\"table\":\"todos\"},{\"db\":\"mydatabase\",\"table\":\"user_details\"},{\"db\":\"egradebook\",\"table\":\"colleges\"},{\"db\":\"testing\",\"table\":\"tbl_sample\"},{\"db\":\"egradebook\",\"table\":\"useraccounts\"},{\"db\":\"egradebook\",\"table\":\"semesters\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-12-05 22:29:31', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student_tracker`
--
CREATE DATABASE IF NOT EXISTS `student_tracker` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student_tracker`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `favoriteHolder` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `email`, `address`, `gender`, `birthday`, `contact`, `status`, `favoriteHolder`) VALUES
(24, 'Judy Ann', 'Cadavez', 'ajcadavez@gmail.com', 'Carmen', 'Female', 'Fri Jun 04 08:00:00 SGT 1999', '09973553044', 'Single', '[English]'),
(27, 'Judy', 'ann', 'nanasaa', 'ajaajdad', 'Female', 'Tue Oct 12 08:00:00 SGT 1999', '15110011555', 'Single', '[Math]'),
(28, 'adaa', 'daadad', 'aadda', 'addaad', 'Male', 'Wed Oct 09 08:00:00 SGT 2019', '01233222223', 'Single', '[English, Java]'),
(30, 'gd', 'dgdd', 'gddg', 'gdgdg', 'Male', 'Wed Oct 09 08:00:00 SGT 2019', '00000002111', 'Single', '[Math, Java]'),
(32, 'qdhdbhaabdhb', 'bsbhbhfsbhfsh', 'HDAHBAH', 'DSHHSHSD', 'Male', 'Mon Oct 26 08:00:00 SGT 2015', '09551111111', 'Single', '[English]'),
(33, 'sss', 'sfs', 'sffs', 'sfsffs', 'Female', 'Thu Oct 08 08:00:00 SGT 2015', '11515120445', 'Married', '[English, Math]'),
(34, 'hhddhsdq', 'djssjfs', 'sjsj@gmail.com', 'carmen', 'Female', 'Fri Jun 04 08:00:00 SGT 1999', '09973553044', 'Single', '[English, Math]'),
(35, 'judy', 'judy', 'judy', 'judy', 'Male', 'Sun Oct 30 08:00:00 SGT 2016', '09785645264', 'Single', '[English]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(20) NOT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `fname` varchar(60) DEFAULT NULL,
  `lname` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `PASSWORD`, `fname`, `lname`) VALUES
(607, 'judy', 'judy', 'judy', 'judy'),
(608, 'aj', 'aj', 'aj', 'aj'),
(609, 'judyann', 'judyann', 'judyann', 'judyann'),
(610, 'jassha_girl', 'jassha123', 'jassha', 'cadavez'),
(611, 'darla', '123456', 'darling', 'jud'),
(612, 'jj', 'jj', 'jj', 'jj'),
(613, 'starla', 'starla', 'starla', 'starla'),
(614, 'judyann', 'japc', 'judyann', 'judyann');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;
--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
