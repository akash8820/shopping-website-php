-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2013 at 03:25 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE IF NOT EXISTS `buys` (
  `tid` int(5) NOT NULL AUTO_INCREMENT,
  `cid` int(5) NOT NULL,
  `item_no` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `discount` int(3) NOT NULL,
  `quantity` int(5) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`tid`, `cid`, `item_no`, `date`, `discount`, `quantity`, `shipping_address`) VALUES
(1, 9, 10001, '2013-04-29 15:30:45', 0, 3, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE IF NOT EXISTS `camera` (
  `item_no` int(5) NOT NULL,
  `megapixel` int(2) NOT NULL,
  `max_sensitivity` int(10) NOT NULL,
  `max_shutter` int(10) NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`item_no`, `megapixel`, `max_sensitivity`, `max_shutter`) VALUES
(20000, 21, 12800, 8000),
(20001, 18, 6400, 4000),
(20002, 18, 12800, 8000),
(20003, 12, 6400, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `city_state`
--

CREATE TABLE IF NOT EXISTS `city_state` (
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `password` text NOT NULL,
  `main_address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `contact` (`contact`),
  KEY `Cid` (`cid`),
  KEY `cid_2` (`cid`),
  KEY `cid_3` (`cid`),
  KEY `cid_4` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `password`, `main_address`, `city`, `zip_code`, `first_name`, `middle_name`, `last_name`, `contact`, `email`) VALUES
(1, 'password123', '1232', 'India', '000000', 'Admin', '', 'User', '9999999999', 'admin@test.com')

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_no` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `warranty` int(3) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `cost` decimal(15,0) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_no`, `name`, `type`, `warranty`, `brand`, `cost`, `image`) VALUES
(10001, 'iPhone 5', 'phone', 1, 'Apple', '45000', '/iphone5.png'),
(10002, 'Lumia 920', 'phone', 1, 'Nokia', '37000', '/920.png'),
(10003, 'Galaxy S3', 'phone', 2, 'Samsung', '29500', '/s3.png'),
(20000, 'Nikon D7100', 'camera', 1, 'Nikon', '60000', '/NikonD7100.png'),
(20001, 'Nikon 1 V1', 'camera', 2, 'Nikon', '50000', '/NikonV1.png'),
(20002, 'Canon EOS 7D', 'camera', 2, 'Canon', '80000', '/CanonEOS7D.png'),
(20003, 'Canon Powershot S110', 'camera', 2, 'Canon', '20000', '/CanonS110.png'),
(30000, 'T6160', 'speaker', 1, 'Creative', '12000', '/CreativeT6160.png'),
(30001, 'M4540', 'speaker', 1, 'Creative', '7500', '/CreativeM4500.png'),
(30002, 'Tarang', 'speaker', 2, 'iBall', '4000', '/iballtarang.png'),
(30003, 'Z320', 'speaker', 1, 'Logitech', '2935', '/LogitechZ320.png');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE IF NOT EXISTS `phone` (
  `item_no` int(5) NOT NULL,
  `battery` int(4) NOT NULL,
  `operating_system` varchar(20) NOT NULL,
  `touch` tinyint(1) NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`item_no`, `battery`, `operating_system`, `touch`) VALUES
(10001, 1450, 'iOS 6.1', 1),
(10002, 2100, 'Android 4.1.2', 1),
(10003, 2200, 'Windows Phone 8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `serial_bought`
--

CREATE TABLE IF NOT EXISTS `serial_bought` (
  `tid` int(5) NOT NULL,
  `serial_no` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serial_bought`
--

INSERT INTO `serial_bought` (`tid`, `serial_no`) VALUES
(1, 99000),
(1, 99001),
(1, 99002);

-- --------------------------------------------------------

--
-- Table structure for table `serial_item`
--

CREATE TABLE IF NOT EXISTS `serial_item` (
  `serial_no` int(5) NOT NULL,
  `item_no` int(5) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serial_item`
--

INSERT INTO `serial_item` (`serial_no`, `item_no`) VALUES
(12121, 30000),
(23232, 30001),
(30303, 20000),
(34343, 30002),
(40404, 20000),
(45454, 30003),
(50505, 20001),
(56565, 30000),
(60606, 20000),
(67676, 30001),
(70707, 20002),
(77000, 10003),
(77001, 10003),
(78787, 30002),
(80808, 20003),
(88000, 10002),
(89989, 30000),
(90909, 20001);

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE IF NOT EXISTS `speaker` (
  `item_no` int(5) NOT NULL,
  `type` float NOT NULL,
  `power` int(10) NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`item_no`, `type`, `power`) VALUES
(30000, 5.1, 17),
(30001, 4.1, 20),
(30002, 2.1, 20),
(30003, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sp_id` int(5) NOT NULL AUTO_INCREMENT,
  `contact` varchar(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`sp_id`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12351 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sp_id`, `contact`, `s_name`, `email`, `password`) VALUES
(1, '2147483647', 'anthony', 'anthony@123', '123'),
(12349, '1111111111', 'BUM', 'bum@111', '121'),
(12350, '1234567890', 'saraj', 'qwerty@214.dsf', '123');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE IF NOT EXISTS `supplies` (
  `serial_no` int(5) NOT NULL,
  `sp_id` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_no` int(5) NOT NULL,
  PRIMARY KEY (`serial_no`,`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`serial_no`, `sp_id`, `date`, `item_no`) VALUES
(4324, 12349, '2013-04-29 15:28:19', 32432),
(12341, 12349, '2013-04-29 17:07:05', 34214),
(22222, 12349, '2013-04-29 15:28:32', 22222),
(32112, 12349, '2013-04-29 15:29:53', 123),
(87653, 12349, '2013-04-29 15:28:04', 543);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
