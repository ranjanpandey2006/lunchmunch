-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql111.byethost5.com
-- Generation Time: Dec 12, 2015 at 08:22 AM
-- Server version: 5.6.25-73.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b5_16105207_lm`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `userid` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`userid`, `password`) VALUES
(1, 'madhuri'),
(2, 'ranjan');

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE IF NOT EXISTS `Menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(800) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `description`, `unitPrice`, `name`, `imageUrl`) VALUES
(1, 'Tawa Roti', 0.7, 'Tawa Roti', 'images/tawa-roti.jpg'),
(2, 'Rumali Roti', 0.7, 'Rumali Roti', 'images/roomali-roti.jpg'),
(3, 'Dal Makhni', 1, 'Dal Makhni', 'http://s1.hubimg.com/u/8081712_f496.jpg'),
(4, 'Dal Fry', 1, 'Dal Fry', ''),
(5, 'Fried Rice', 1.2, 'Fried Rice', ''),
(6, 'Paneer tikka', 1.5, 'Paneer tika', ''),
(7, 'Shahi Paneer', 1.7, 'Shahi Paneer', ''),
(8, 'Kadhai Paneer', 1.7, 'Kadhai Paneer', ''),
(9, 'Paneer Punjabi', 1.2, 'Paneer Punjabi', ''),
(10, 'Diet Coke', 0.7, 'Diet Coke', ''),
(11, 'Mountain Dew', 0.7, 'Mountain Dew', ''),
(12, 'Pepsi', 0.7, 'Pepsi', ''),
(13, 'Mineral Water', 0.5, 'Fried Rice', ''),
(14, 'Mix Veg', 1.9, 'Mix Veg', ''),
(15, 'Mattar Paneer', 2, 'Mattar Paneer', ''),
(16, 'Zeera Aloo', 1.5, 'Zeera Aloo', ''),
(17, 'Paneer Kofta', 1.2, 'Paneer Kofta', ''),
(18, 'Paneer tikka', 1.5, 'Paneer tika', ''),
(19, 'Shahi Paneer', 1.7, 'Shahi Paneer', ''),
(20, 'Kadhai Paneer', 1.7, 'Kadhai Paneer', ''),
(21, 'Paneer Punjabi', 1.2, 'Paneer Punjabi', ''),
(22, 'Diet Coke', 0.7, 'Diet Coke', ''),
(23, 'Mountain Dew', 0.7, 'Mountain Dew', ''),
(24, 'Pepsi', 0.7, 'Pepsi', ''),
(25, 'Mineral Water', 0.5, 'Fried Rice', ''),
(26, 'Mix Veg', 1.9, 'Mix Veg', ''),
(27, 'Mattar Paneer', 2, 'Mattar Paneer', ''),
(28, 'Zeera Aloo', 1.5, 'Zeera Aloo', ''),
(29, 'Paneer Kofta', 1.2, 'Paneer Kofta', ''),
(30, 'Paneer Kofta', 1.2, 'Paneer Kofta', '');

-- --------------------------------------------------------

--
-- Table structure for table `menutable`
--

CREATE TABLE IF NOT EXISTS `menutable` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `todayMenu` varchar(3000) DEFAULT NULL,
  `tomorrowMenu` varchar(3000) DEFAULT NULL,
  `todayMenuUnitPrice` double DEFAULT NULL,
  `tomorrowMenuUnitPrice` double DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `menutable`
--

INSERT INTO `menutable` (`menuId`, `todayMenu`, `tomorrowMenu`, `todayMenuUnitPrice`, `tomorrowMenuUnitPrice`, `imageUrl`) VALUES
(111, 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', 2.2, 3.7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE IF NOT EXISTS `ordertable` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `numberOfLunchForToday` int(11) DEFAULT NULL,
  `numberOfLunchForTomorrow` int(11) DEFAULT NULL,
  `isTodayLunchRequired` varchar(10) DEFAULT NULL,
  `isTomorrowLunchRequired` varchar(10) DEFAULT NULL,
  `commentsToday` varchar(3000) DEFAULT NULL,
  `commentsTomorrow` varchar(3000) NOT NULL,
  `isPaymentDoneForToday` varchar(10) DEFAULT NULL,
  `paymentDueAmountToday` decimal(10,3) NOT NULL,
  `paymentClearedAmountToday` decimal(10,3) NOT NULL,
  `orderDateTime` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `menuId` int(200) NOT NULL,
  `deliveryAddress` varchar(50000) NOT NULL,
  `totalPriceToday` decimal(10,3) NOT NULL,
  `totalPriceTomorrow` decimal(10,3) NOT NULL,
  `todaysMenu` varchar(2000) NOT NULL,
  `tomorrowsMenu` varchar(2000) NOT NULL,
  `grandTotal` decimal(10,3) NOT NULL,
  `paymentDueAmountTomorrow` decimal(10,3) NOT NULL,
  `paymentClearedAmountTomorrow` decimal(10,3) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`orderId`, `numberOfLunchForToday`, `numberOfLunchForTomorrow`, `isTodayLunchRequired`, `isTomorrowLunchRequired`, `commentsToday`, `commentsTomorrow`, `isPaymentDoneForToday`, `paymentDueAmountToday`, `paymentClearedAmountToday`, `orderDateTime`, `userId`, `menuId`, `deliveryAddress`, `totalPriceToday`, `totalPriceTomorrow`, `todaysMenu`, `tomorrowsMenu`, `grandTotal`, `paymentDueAmountTomorrow`, `paymentClearedAmountTomorrow`) VALUES
(1, 1, 1, 'YES', 'YES', 'None', 'None', NULL, '2.200', '0.000', '2015-09-13 07:19:43', 2, 111, 'Name - A, Email - B, Phone - 11111111, Address Line 1 - C, Address Line 2 - T, City - U, State - I, Pin - 262627, Country - I', '2.200', '3.700', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', '5.900', '3.700', '0.000'),
(2, 1, 0, 'YES', 'NO', 'wrewrewrewr', 'ewrewrwerw', NULL, '2.200', '0.000', '2015-09-13 10:23:14', 4, 111, 'Name - test, Email - test, Phone - test, Address Line 1 - test, Address Line 2 - test, City - test, State - test, Pin - test, Country - test', '2.200', '0.000', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'None', '2.200', '0.000', '0.000'),
(3, 1, 0, 'YES', 'NO', 'None', 'None', NULL, '2.200', '0.000', '2015-09-13 10:41:08', 4, 111, 'Name - y, Email - y, Phone - y, Address Line 1 - y, Address Line 2 - y, City - y, State - y, Pin - y, Country - y', '2.200', '0.000', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'None', '2.200', '0.000', '0.000'),
(4, 1, 0, 'YES', 'NO', 'None', 'None', NULL, '2.200', '0.000', '2015-09-13 10:43:50', 4, 111, 'Name - ry, Email - y, Phone - y, Address Line 1 - y, Address Line 2 - y, City - y, State - u, Pin - u, Country - u', '2.200', '0.000', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', '2.200', '0.000', '0.000'),
(5, 1, 0, 'YES', 'NO', 'ttttt', 'None', NULL, '2.200', '0.000', '2015-09-20 16:03:24', 4, 111, 'Name - u, Email - u, Phone - u, Address Line 1 - u, Address Line 2 - u, City - u, State - u, Pin - u, Country - u', '2.200', '0.000', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', '2.200', '0.000', '0.000'),
(6, 4, 1, 'YES', 'YES', 'dfsd', 'fgdfg', NULL, '8.800', '0.000', '2015-10-15 15:53:12', 10, 111, 'Name - o, Email - l, Phone - k, Address Line 1 - j, Address Line 2 - j, City - h, State - h, Pin - h, Country - h', '8.800', '3.700', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', '12.500', '3.700', '0.000'),
(7, 1, 1, 'YES', 'YES', 'None', 'None', NULL, '2.200', '0.000', '2015-10-21 13:56:04', 11, 111, 'Name - y, Email - y, Phone - y, Address Line 1 - y, Address Line 2 - y, City - y, State - y, Pin - y, Country - y', '2.200', '3.700', 'Roti, Daal, Mixed Veg, Rice, Sweet', 'Roti, Daal, Mixed Veg, Rice, Sweet, Papad', '5.900', '3.700', '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE IF NOT EXISTS `usertable` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `mobileNo` varchar(50) DEFAULT NULL,
  `dateOfRegistration` datetime DEFAULT NULL,
  `Admin` varchar(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`userId`, `userName`, `password`, `emailId`, `mobileNo`, `dateOfRegistration`, `Admin`) VALUES
(1, 'Test1', 'test1', 'test1@gmail.com', '11111111111111', '2015-09-13 07:07:53', ''),
(2, 'Test2', 'test2', 'test2@gmail.com', '2222222', '2015-09-13 07:17:43', ''),
(3, 'Laaptu Laaptu', 'laaptu', 'laaptulaaptu1@gmail.com', '222222222', '2015-09-13 10:15:55', ''),
(4, 'Ranjan', 'ranjan', 'ranjanpandey2006@gmail.com', '111111111111', '2015-09-13 10:19:36', ''),
(5, 'Alisha', 'test', 'alishapatel2006@gmail.com', '918897485425', '2015-09-13 11:19:07', ''),
(6, 'Digamber', 'digamber', '1234@gmail.com', '1232323223', '2015-09-13 12:28:58', ''),
(7, 'Digamber Singh', 'digamber', 'digamber.singh@gmail.com', '8165296965', '2015-09-13 12:29:50', ''),
(8, 'Preeti', 'preeti', 'Prettyfm@gmail.com', '17323227251', '2015-09-13 13:05:57', ''),
(9, 'Himanshu', 'him123', 'Himkoh@gmail.com', '17323226518', '2015-09-13 23:03:33', ''),
(10, 'sridhar', 'sridhar', 'sridhar@gmail.com', '87867567575', '2015-10-15 15:52:02', ''),
(11, 'test', 'test', 'test@gmail.com', '111111111', '2015-10-21 13:55:28', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
