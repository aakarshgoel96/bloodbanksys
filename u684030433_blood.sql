
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2016 at 04:09 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u684030433_blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `username` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bloodgroup` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `pno` bigint(14) NOT NULL,
  `score` bigint(20) NOT NULL DEFAULT '0',
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`username`, `password`, `name`, `email`, `bloodgroup`, `pno`, `score`, `lat`, `lng`) VALUES
('kani', 'akki', 'kani', 'kani', 'A', 2147483647, 0, 0, 0),
('chaudhary', 'ch', 'shubham', 'ch@ch.com', 'A', 9958995790, 0, 0, 0),
('chutiya', 'gandhi', 'gandhi', 'gandhichutiya@fatto.com', 'B', 8882583833, 0, 0, 0),
('babab', 'bsbsb', 'ababb', 'bavav', 'A', 9876543210, 0, 0, 0),
('kan', 'kan', 'kan', 'kan', 'A', 8765432190, 0, 28.612612612613, 77.377449381601),
('test', 'ui', 'test', 'test', 'B', 7777777777, 0, 0, 0),
('testt', 'uiu', 'testt', 'testt', 'B', 7777777778, 0, 28.612612612613, 77.356924859219),
('len', 'len', 'lenovo', 'len', 'A+', 6789065436, 0, 0, 0),
('s', 's', 's', 's', 'A+', 7777777878, 0, 28.612612612613, 77.377449381601),
('sa', 'sa', 'sa', 'sa', 'A+', 7878787878, 0, 28.612612612613, 77.377449381601),
('sand', 'sand', 'sand', 'sand', 'A+', 8787878787, 0, 28.612612612613, 77.377449381601);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
