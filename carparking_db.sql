-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2017 at 07:54 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carparking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort1` int(11) NOT NULL,
  `areaid` varchar(255) NOT NULL,
  `slotid` varchar(255) NOT NULL,
  `carno` varchar(255) NOT NULL,
  `entrydate` varchar(25) NOT NULL,
  `entrytime` varchar(25) NOT NULL,
  `exitdate` varchar(25) NOT NULL,
  `exittime` varchar(25) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `sort1`, `areaid`, `slotid`, `carno`, `entrydate`, `entrytime`, `exitdate`, `exittime`, `userid`, `status`) VALUES
(1, 0, '1', '2', 'BOA 010', '01/16/2017', '12:00 PM', '01/22/2017', '12:00 PM', 1, 1),
(5, 0, '1', '6', 'AOB 525', '01/19/2017', '13:00 PM', '01/21/2017', '12:00 PM', 1, 0),
(3, 0, '2', '7', 'AOB 506', '01/16/2017', '05:00 AM', '01/24/2017', '06:00 PM', 1, 1),
(14, 0, '1', '1', 'BBB 301', '03/23/2017', '02:00 PM', '03/25/2017', '01:00 AM', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parkingareas`
--

CREATE TABLE IF NOT EXISTS `tbl_parkingareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort1` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_des` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_parkingareas`
--

INSERT INTO `tbl_parkingareas` (`id`, `sort1`, `title`, `image`, `short_des`, `description`, `status`) VALUES
(1, 1, 'Centaurus Mall Islamabad', '148438007711.jpg', '', '%3Cp%3E%0D%0A%09This+shopping+mall+is+located+in+the+heart+of+Islamabad+and+one+of+the+busiest+shopping+malls+in+the+country.+It+is+a+mainly+a+thirty-six-floor+hotel+consisting+five+stories+for+shopping+area+and+rest+of+twenty-three+for+residential+and+office+purpose.%3C%2Fp%3E%0D%0A', 1),
(2, 2, 'Safa Gold Mall Islamabad', '148438014522.jpg', '', '%3Cp%3E%0D%0A%09Safa+Gold+Mall+is+the+home+of+fashionable+accessories+and+entertainment+in+the+Capital+of+Pakistan.+The+quality+of+this+shopping+mall+is+that+almost+every+major+fashion+brand+is+delivering+its+services+there.+Mega+attractions+in+the+epic+proportions+are+also+the+part+of+this+shopping+mall.%3C%2Fp%3E%0D%0A', 1),
(3, 3, 'Mall of Lahore', '148438018933.jpg', '', '%3Cp%3E%0D%0A%09Mall+of+Lahore+is+one+of+the+largest+multi-purpose+shopping+malls+in+the+countries+consisting+a+broad+range+of+local+and+international+brands.+It+is+one+of+the+largest+shopping+malls+in+the+country+and+largest+of+Punjab.%3C%2Fp%3E%0D%0A', 1),
(4, 4, 'Gulberg Galleria Lahore', '148438023344.jpg', '', '%3Cp%3E%0D%0A%09Gulberg+Galleria+is+a+three-story+arcade+with+thirty-nine+outlets+on+its+three+floors.+Gulberg+Galleria+is+the+house+of+designer+fashion+outlets+for+men+clothing%2C+ladies%2C+children+wear%2C+shoe%2C+outlets%2C+spa%2C+coffee%2C+restaurants+and+others.%3C%2Fp%3E%0D%0A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cardno` varchar(255) NOT NULL,
  `expirydate` varchar(25) NOT NULL,
  `csc` varchar(25) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `orderid`, `amount`, `name`, `cardno`, `expirydate`, `csc`, `userid`, `status`) VALUES
(4, '1', '', 'muhammad', '1012-2536256-323', '01/17/2017', '321', 1, 1),
(5, '3', '800', 'muhammad ', '2323526352632', '01/31/2017', '236', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort1` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_des` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `sort1`, `title`, `image`, `short_des`, `description`, `status`) VALUES
(1, 1, 'image', '148328725311.jpg', '', '', 1),
(2, 2, 'image2', '148328729122.jpg', '', '', 1),
(3, 3, 'sdsd', '148328731233.jpg', '', '', 1),
(4, 4, 'ddfd', '14832875194444.jpg', '', '', 1),
(5, 5, 'dfdfd', '148328735355.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slots`
--

CREATE TABLE IF NOT EXISTS `tbl_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slotid` varchar(255) NOT NULL,
  `areaid` varchar(255) NOT NULL,
  `exitdate` varchar(255) NOT NULL,
  `exittime` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `tbl_slots`
--

INSERT INTO `tbl_slots` (`id`, `slotid`, `areaid`, `exitdate`, `exittime`, `status`) VALUES
(1, '1', '1', '03/25/2017', '01:00 AM', 1),
(2, '2', '1', '03/24/2017', '01:00 PM', 0),
(3, '1', '2', '', '', 0),
(4, '2', '2', '', '', 0),
(5, '3', '1', '', '', 0),
(6, '4', '1', '', '', 0),
(7, '5', '1', '', '', 0),
(8, '6', '1', '', '', 0),
(9, '7', '1', '', '', 0),
(10, '8', '1', '', '', 0),
(11, '9', '1', '', '', 0),
(12, '10', '1', '', '', 0),
(13, '11', '1', '', '', 0),
(14, '12', '1', '', '', 0),
(15, '13', '1', '', '', 0),
(16, '14', '1', '', '', 0),
(17, '15', '1', '', '', 0),
(18, '16', '1', '', '', 0),
(19, '17', '1', '', '', 0),
(20, '18', '1', '', '', 0),
(21, '19', '1', '', '', 0),
(22, '20', '1', '', '', 0),
(23, '21', '1', '', '', 0),
(24, '22', '1', '', '', 0),
(25, '23', '1', '', '', 0),
(26, '24', '1', '', '', 0),
(27, '1', '3', '', '', 0),
(28, '3', '2', '', '', 0),
(29, '4', '2', '', '', 0),
(30, '5', '2', '', '', 0),
(31, '6', '2', '', '', 0),
(32, '7', '2', '', '', 0),
(33, '8', '2', '', '', 0),
(34, '9', '2', '', '', 0),
(35, '10', '2', '', '', 0),
(36, '11', '2', '', '', 0),
(37, '12', '2', '', '', 0),
(38, '13', '2', '', '', 0),
(39, '14', '2', '', '', 0),
(40, '15', '2', '', '', 0),
(41, '16', '2', '', '', 0),
(42, '17', '2', '', '', 0),
(43, '18', '2', '', '', 0),
(44, '19', '2', '', '', 0),
(45, '20', '2', '', '', 0),
(46, '21', '2', '', '', 0),
(47, '22', '2', '', '', 0),
(48, '23', '2', '', '', 0),
(49, '24', '2', '', '', 0),
(50, '2', '3', '', '', 0),
(51, '3', '3', '', '', 0),
(52, '4', '3', '', '', 0),
(53, '5', '3', '', '', 0),
(54, '6', '3', '', '', 0),
(55, '7', '3', '', '', 0),
(56, '8', '3', '', '', 0),
(57, '9', '3', '', '', 0),
(58, '10', '3', '', '', 0),
(59, '11', '3', '', '', 0),
(60, '12', '3', '', '', 0),
(61, '13', '3', '', '', 0),
(62, '14', '3', '', '', 0),
(63, '15', '3', '', '', 0),
(64, '16', '3', '', '', 0),
(65, '17', '3', '', '', 0),
(66, '18', '3', '', '', 0),
(67, '19', '3', '', '', 0),
(68, '20', '3', '', '', 0),
(69, '21', '3', '', '', 0),
(70, '22', '3', '', '', 0),
(71, '23', '3', '', '', 0),
(72, '24', '3', '', '', 0),
(73, '1', '4', '', '', 0),
(74, '2', '4', '', '', 0),
(75, '3', '4', '', '', 0),
(76, '4', '4', '', '', 0),
(77, '5', '4', '', '', 0),
(78, '6', '4', '', '', 0),
(79, '7', '4', '', '', 0),
(80, '8', '4', '', '', 0),
(81, '9', '4', '', '', 0),
(82, '10', '4', '', '', 0),
(83, '11', '4', '', '', 0),
(84, '12', '4', '', '', 0),
(85, '13', '4', '', '', 0),
(86, '14', '4', '', '', 0),
(87, '15', '4', '', '', 0),
(88, '16', '4', '', '', 0),
(89, '17', '4', '', '', 0),
(90, '18', '4', '', '', 0),
(91, '19', '4', '', '', 0),
(92, '20', '4', '', '', 0),
(93, '21', '4', '', '', 0),
(94, '22', '4', '', '', 0),
(95, '23', '4', '', '', 0),
(96, '24', '4', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort1` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `sort1`, `fname`, `lname`, `telephone`, `confirm_password`, `password`, `email`, `address`, `status`) VALUES
(1, 1, 'muhammad', 'umer', '555 4444 455', '123', '123', 'muhammad.umer@gmail.com', 'Wah Cantt', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
